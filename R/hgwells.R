#' H.G. Wells Novel Texts
#'
#' Text of four science fiction novels by H.G. Wells (1866-1946),
#' sourced from Project Gutenberg. Boilerplate license text has been removed.
#'
#' @format A tibble with 20,046 rows and 2 columns:
#' \describe{
#'   \item{gutenberg_id}{Integer. Project Gutenberg identifier for the novel:
#'     35 (The Time Machine), 36 (The War of the Worlds),
#'     159 (The Island of Doctor Moreau), 5230 (The Invisible Man)}
#'   \item{text}{Character. Lines of text from the novel}
#' }
#'
#' @source \url{https://www.gutenberg.org/}
#'
#' @examples
#' \dontrun{
#' library(dplyr)
#'
#' # Lines per novel
#' hgwells |> count(gutenberg_id)
#' }
#'
#' @seealso The \code{janeaustenr} package provides similar data for Jane Austen's novels
"hgwells"
