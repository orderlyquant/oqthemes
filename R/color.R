oq_palette <- c("#219ebc", "#023047", "#ffb703", "#606c38", "#fb8500", "#d00000", "#ffafcc", "#81b29a", "#8ecae6")
names(oq_palette) <- c("mediumblue", "darkblue", "deepyellow", "olive", "deeporange", "truered", "pink", "lightgreen", "lightblue")


#' A qualitative color palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(oq_pal()(9))
oq_pal <- function() { scales::manual_pal(oq_palette) }

#' Discrete color & fill scales based on the ipsum palette
#'
#' See [oq_pal()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_oq
#' @export
scale_color_oq <- function(...) { ggplot2::discrete_scale("color", "oq", oq_pal(), ...) }

#' @export
#' @rdname scale_oq
scale_colour_oq <- scale_color_oq

#' @export
#' @rdname scale_oq
scale_fill_oq <- function(...) { ggplot2::discrete_scale("fill", "oq", oq_pal(), ...) }
