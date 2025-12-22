#' Create a workbook from template
#'
#' Copies a workbook template to the current working directory for the student
#' to complete.
#'
#' @param chapter Chapter identifier. Either an integer chapter number or a
#'   character slug. Use \code{list_workbooks()} to see available options.
#' @param overwrite Logical. If \code{TRUE}, overwrite existing file with same
#'   name. Default is \code{FALSE}.
#' @param open Logical. If \code{TRUE} and RStudio is available, open the file
#'   automatically. Default is \code{TRUE}.
#'
#' @return Invisibly returns the path to the created file.
#'
#' @examples
#' \dontrun{
#' # Create by chapter number
#' create_workbook(3)
#'
#' # Create by slug
#' create_workbook("eda")
#'
#' # See available workbooks
#' list_workbooks()
#' }
#'
#' @export
create_workbook <- function(chapter, overwrite = FALSE, open = TRUE) {

  # Get available workbooks
  available <- list_workbooks()

  if (nrow(available) == 0) {
    stop("No workbook templates are currently available.", call. = FALSE)
  }

  # Resolve chapter to slug
  if (is.numeric(chapter)) {
    row <- available[available$chapter == chapter, ]
    if (nrow(row) == 0) {
      stop(
        "Chapter ", chapter, " not found.\n",
        "Use list_workbooks() to see available chapters.",
        call. = FALSE
      )
    }
    slug <- row$slug
  } else if (is.character(chapter)) {
    slug <- chapter
    if (!slug %in% available$slug) {
      stop(
        "Template '", slug, "' not found.\n",
        "Use list_workbooks() to see available options.",
        call. = FALSE
      )
    }
  } else {
    stop("'chapter' must be a number or character string.", call. = FALSE)
  }

  # Construct template filename
  template_name <- paste0(slug, "-wkbk.qmd")

  # Find template in installed package
  template_path <- system.file(
    "templates", template_name,
    package = "eda4mlr",
    mustWork = FALSE
  )

  if (template_path == "") {
    stop(
      "Template file '", template_name, "' not found in package.",
      call. = FALSE
    )
  }

  # Destination in current working directory
  dest_path <- file.path(getwd(), template_name)

  # Check for existing file
  if (file.exists(dest_path) && !overwrite) {
    stop(
      "File '", template_name, "' already exists.\n",
      "Use overwrite = TRUE to replace it.",
      call. = FALSE
    )
  }

  # Copy template
  success <- file.copy(template_path, dest_path, overwrite = overwrite)
  if (!success) {
    stop("Failed to copy template to '", dest_path, "'.", call. = FALSE)
  }

  # Get chapter info for message
  chapter_num <- available$chapter[available$slug == slug]
  title <- available$title[available$slug == slug]

  message(
    "Created: ", template_name, "\n",
    "Chapter ", chapter_num, ": ", title, "\n",
    "Open in RStudio and begin working through the exercises."
  )

  # Open in RStudio if available and requested
  if (open && requireNamespace("rstudioapi", quietly = TRUE)) {
    if (rstudioapi::isAvailable()) {
      rstudioapi::navigateToFile(dest_path)
    }
  }

  invisible(dest_path)
}


#' List available workbooks
#'
#' Shows all workbook templates available in the eda4mlr package.
#'
#' @return A tibble with columns:
#'   \describe{
#'     \item{chapter}{Integer chapter number}
#'     \item{slug}{Character identifier used in \code{create_workbook()}}
#'     \item{title}{Descriptive chapter title}
#'   }
#'
#' @examples
#' list_workbooks()
#'
#' @export
list_workbooks <- function() {

  # Read metadata
  metadata_path <- system.file(
    "templates", "workbook-metadata.txt",
    package = "eda4mlr",
    mustWork = FALSE
  )

  if (metadata_path == "") {
    return(
      tibble::tibble(
        chapter = integer(0),
        slug = character(0),
        title = character(0)
      )
    )
  }

  metadata <- utils::read.delim(metadata_path, stringsAsFactors = FALSE)

  # Check which templates actually exist
  template_dir <- system.file("templates", package = "eda4mlr")
  existing_files <- list.files(template_dir, pattern = "-wkbk\\.qmd$")
  existing_slugs <- sub("-wkbk\\.qmd$", "", existing_files)

  # Filter metadata to only available templates
  available <- metadata[metadata$slug %in% existing_slugs, , drop = FALSE]

  # Sort by chapter number and convert to tibble
  available <- available[order(available$chapter), , drop = FALSE]
  available <- tibble::as_tibble(available)

  return(available)
}
