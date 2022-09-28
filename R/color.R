oq_palette             <- c("#219ebc",   # "mediumblue"
                            "#023047",   # "darkblue"
                            "#ffb703",   # "deepyellow"
                            "#606c38",   # "olive"
                            "#fb8500",   # "deeporange"
                            "#d00000",   # "truered"
                            "#ffafcc",   # "pink"
                            "#81b29a",   # "lightgreen"
                            "#8ecae6"    # "lightblue"
                          )

oq_palette_diverging  <- c("#b2182b",   # `divred2`
                           "#d6604d",   # `divred3`
                           "#f4a582",   # `divred4`
                           "#fddbc7",   # `divred5`
                           "#dedede",   # `divneutr`
                           "#d1e5f0",   # `divblue5`
                           "#92c5de",   # `divblue4`
                           "#4393c3",   # `divblue3`
                           "#2166ac"    # `divblue2`
                          )

oq_palette_sequential  <- c("#f7fbff",   #`seqblue1`
                            "#deebf7",   #`seqblue2`
                            "#c6dbef",   #`seqblue3`
                            "#9ecae1",   #`seqblue4`
                            "#6baed6",   #`seqblue5`
                            "#4292c6",   #`seqblue6`
                            "#2171b5",   #`seqblue7`
                            "#08519c",   #`seqblue8`
                            "#08306b"    #`seqblue9`
                          )

oq_palette_categorical <- c("#151248",   # `oxfordblue`
                            "#605F5E",   # `granitegray`
                            "#5393EA",   # `lightblue`
                            "#FFAD05",   # `yellow`
                            "#18A999",   # `persiangreen`
                            "#E2E2E2",   # `platinum`
                            "#DC479F",   # `pink`
                            "#EAD2AC",   # `desertsand`
                            "#E54E4D"    # `carminepink`
                          )

#' The default color palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(oq_pal()(9))
oq_pal <- function(reverse = FALSE) { if(reverse) scales::manual_pal(rev(oq_palette)) else scales::manual_pal(oq_palette) }

#' The diverging color palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(oq_pal_div()(9))
oq_pal_div <- function(reverse) { if(reverse) scales::manual_pal(rev(oq_palette_diverging)) else scales::manual_pal(oq_palette_diverging) }

#' The sequential color palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(oq_pal_seq()(9))
oq_pal_seq <- function(reverse) { if(reverse) scales::manual_pal(rev(oq_palette_sequential)) else scales::manual_pal(oq_palette_sequential) }

#' The categorical color palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(oq_pal_cat()(9))
oq_pal_cat <- function(reverse) { if(reverse) scales::manual_pal(rev(oq_palette_categorical)) else scales::manual_pal(oq_palette_categorical) }

#' Discrete color & fill scales based on the ipsum palette
#'
#' See [oq_pal()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_oq
#' @export
scale_color_oq     <- function(reverse = FALSE, ...) { ggplot2::discrete_scale("color", "oq", oq_pal(reverse), ...) }

#' @export
#' @rdname scale_oq
scale_color_oq_div <- function(reverse = FALSE, ...) { ggplot2::discrete_scale("color", "oq_div", oq_pal_div(reverse), ...) }

#' @export
#' @rdname scale_oq
scale_color_oq_seq <- function(reverse = FALSE, ...) { ggplot2::discrete_scale("color", "oq_seq", oq_pal_seq(reverse), ...) }

#' @export
#' @rdname scale_oq
scale_color_oq_cat <- function(reverse = FALSE, ...) { ggplot2::discrete_scale("color", "oq_cat", oq_pal_cat(reverse), ...) }

#' @export
#' @rdname scale_oq
scale_colour_oq <- scale_color_oq

#' @export
#' @rdname scale_oq
scale_colour_oq_div <- scale_color_oq_div

#' @export
#' @rdname scale_oq
scale_colour_oq_seq <- scale_color_oq_seq

#' @export
#' @rdname scale_oq
scale_colour_oq_cat <- scale_color_oq_cat

#' @export
#' @rdname scale_oq
scale_fill_oq     <- function(reverse = FALSE, ...) { ggplot2::discrete_scale("fill", "oq", oq_pal(reverse), ...) }

#' @export
#' @rdname scale_oq
scale_fill_oq_div <- function(reverse = FALSE, ...) { ggplot2::discrete_scale("fill", "oq_div", oq_pal_div(reverse), ...) }

#' @export
#' @rdname scale_oq
scale_fill_oq_seq <- function(reverse = FALSE, ...) { ggplot2::discrete_scale("fill", "oq_seq", oq_pal_seq(reverse), ...) }

#' @export
#' @rdname scale_oq
scale_fill_oq_cat <- function(reverse = FALSE, ...) { ggplot2::discrete_scale("fill", "oq_cat", oq_pal_cat(reverse), ...) }
