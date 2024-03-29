#' Plot Variable Importance Explanations
#'
#' @param x an object of the class \code{model_parts}
#' @param ... other parameters described below
#'
#' @return An object of the class \code{ggplot}.
#'
#' @section Plot options:
#'
#' \subsection{variable_importance}{
#' \itemize{
#'  \item{\code{max_vars}}{ maximal number of features to be included in the plot. default value is \code{10}}
#'  \item{\code{show_boxplots}}{ logical if \code{TRUE} (default) boxplot will be plotted to show permutation data.}
#'  \item{\code{bar_width}}{ width of bars. By default \code{10}}
#'  \item{\code{desc_sorting}}{ logical. Should the bars be sorted descending? By default \code{TRUE}}
#'  \item{\code{title}}{ the plot's title, by default \code{'Feature Importance'}}
#'  \item{\code{subtitle}}{ a character. Plot subtitle. By default \code{NULL} - then subtitle is set to "created for the XXX, YYY model",
#'        where XXX, YYY are labels of given explainers.}
#' }
#' }
#'
#' @export
plot.model_parts <- function(x, ...) {
  class(x) <- class(x)[-1]
  plot(x, ...)
}
