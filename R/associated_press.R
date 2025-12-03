#' Associated Press Articles (Tidy Format)
#'
#' Term frequencies from 2,246 Associated Press news articles, mostly from 1988.
#' This is a tidy version of the DocumentTermMatrix from the topicmodels package.
#'
#' @format A tibble with 302,031 rows and 3 columns:
#' \describe{
#'   \item{document}{Integer. Article identifier (1-2246)}
#'   \item{term}{Character. Word appearing in the article}
#'   \item{count}{Numeric. Number of times the term appears in the document}
#' }
#'
#' @source Originally from the topicmodels package
#'
#' @examples
#' \dontrun{
#' library(dplyr)
#'
#' # Most common terms overall
#' ap_tidy |>
#'   summarise(total = sum(count), .by = term) |>
#'   slice_max(total, n = 10)
#' }
#'
#' @seealso \code{\link{ap_topics}} for pre-computed LDA topic model results
"ap_tidy"

#' Associated Press LDA Topic Model Results
#'
#' Pre-computed results from a 2-topic LDA model fitted to the Associated Press
#' articles. Provides topic-term probabilities (beta) for each term in each topic.
#'
#' @format A tibble with 20,946 rows and 3 columns:
#' \describe{
#'   \item{topic}{Integer. Topic identifier (1 or 2)}
#'   \item{term}{Character. Word in the vocabulary}
#'   \item{beta}{Numeric. Probability of the term given the topic}
#' }
#'
#' @details
#' The LDA model was fitted using \code{topicmodels::LDA()} with \code{k = 2}
#' and \code{control = list(seed = 1234)}.
#'
#' @source Derived from topicmodels::AssociatedPress
#'
#' @examples
#' \dontrun{
#' library(dplyr)
#'
#' # Top 10 terms per topic
#' ap_topics |>
#'   slice_max(beta, n = 10, by = topic)
#' }
#'
#' @seealso \code{\link{ap_tidy}} for the underlying article data
"ap_topics"
