#' Dry Bean Shape Measurements
#'
#' Shape measurements for 13,611 dry beans from seven varieties,
#' obtained using computer vision techniques. A multiclass
#' classification dataset with geometric features.
#'
#' @format A tibble with 13,611 rows and 17 variables:
#' \describe{
#'   \item{area}{Area of the bean zone in pixels (integer)}
#'   \item{perimeter}{Perimeter of the bean in pixels (numeric)}
#'   \item{major_axis}{Length of the major axis in pixels (numeric)}
#'   \item{minor_axis}{Length of the minor axis in pixels (numeric)}
#'   \item{aspect_ratio}{Ratio of major to minor axis (numeric)}
#'   \item{eccentricity}{Eccentricity of the ellipse (numeric)}
#'   \item{convex_area}{Area of the smallest convex hull in pixels (integer)}
#'   \item{equiv_diameter}{Diameter of a circle with the same area (numeric)}
#'   \item{extent}{Ratio of bean area to bounding box area (numeric)}
#'   \item{solidity}{Ratio of bean area to convex hull area (numeric)}
#'   \item{roundness}{Roundness measure (numeric)}
#'   \item{compactness}{Compactness measure (numeric)}
#'   \item{shape_factor_1}{Shape factor 1 (numeric)}
#'   \item{shape_factor_2}{Shape factor 2 (numeric)}
#'   \item{shape_factor_3}{Shape factor 3 (numeric)}
#'   \item{shape_factor_4}{Shape factor 4 (numeric)}
#'   \item{class}{Bean variety (character): barbunya, bombay, cali,
#'     dermason, horoz, seker, or sira}
#' }
#'
#' @source Koklu, M. & Ozkan, I. A. (2020). Multiclass classification
#'   of dry beans using computer vision and machine learning techniques.
#'   \emph{Computers and Electronics in Agriculture}, 174, 105507.
#'
#'   Data obtained via the \code{beans} package.
#'
#' @examples
#' data(dry_beans)
#' summary(dry_beans)
#'
"dry_beans"
