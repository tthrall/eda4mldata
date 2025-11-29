#' MNIST Example Digits
#'
#' A small sample of 10 handwritten digit images from the MNIST database,
#' one example of each digit 0-9, in long format.
#'
#' @format A tibble with 7,840 rows and 5 variables:
#' \describe{
#'   \item{img_idx}{Image index (1-10)}
#'   \item{row_idx}{Pixel row position (1-28)}
#'   \item{col_idx}{Pixel column position (1-28)}
#'   \item{pixel}{Grayscale pixel intensity (0-255)}
#'   \item{label}{Digit label (factor): 0-9}
#' }
#'
#' @source \url{http://yann.lecun.com/exdb/mnist/}
#'
#' @examples
#' data(mnist_example)
#' table(mnist_example$label)
#'
"mnist_example"

#' MNIST Training Set (1K subset)
#'
#' A 1,000-image subset of the MNIST training database of handwritten
#' digits, in long format.
#'
#' @format A tibble with 784,000 rows and 5 variables:
#' \describe{
#'   \item{img_idx}{Image index (1-1000)}
#'   \item{row_idx}{Pixel row position (1-28)}
#'   \item{col_idx}{Pixel column position (1-28)}
#'   \item{pixel}{Grayscale pixel intensity (0-255)}
#'   \item{label}{Digit label (factor): 0-9}
#' }
#'
#' @source \url{http://yann.lecun.com/exdb/mnist/}
#'
#' @examples
#' data(mnist_train)
#' table(mnist_train$label)
#'
"mnist_train"

#' MNIST Test Set (1K subset)
#'
#' A 1,000-image subset of the MNIST test database of handwritten
#' digits, in long format.
#'
#' @format A tibble with 784,000 rows and 5 variables:
#' \describe{
#'   \item{img_idx}{Image index (1-1000)}
#'   \item{row_idx}{Pixel row position (1-28)}
#'   \item{col_idx}{Pixel column position (1-28)}
#'   \item{pixel}{Grayscale pixel intensity (0-255)}
#'   \item{label}{Digit label (factor): 0-9}
#' }
#'
#' @source \url{http://yann.lecun.com/exdb/mnist/}
#'
#' @examples
#' data(mnist_test)
#' table(mnist_test$label)
#'
"mnist_test"
