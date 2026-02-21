#' Gordon Resting-State Cortical Parcellation
#'
#' Brain atlas for the Gordon cortical parcellation with 329 regions
#' based on resting-state functional connectivity boundaries.
#' Contains 2D polygon geometry for [ggseg::geom_brain()].
#'
#' @family ggseg_atlases
#'
#' @references Gordon EM, Laumann TO, Adeyemo B, Huckins JF, Kelley WM,
#'   Petersen SE (2016). Generation and Evaluation of a Cortical Area
#'   Parcellation from Resting-State Correlations. *Cerebral Cortex*,
#'   26(1):288-303.
#'   \doi{10.1093/cercor/bhu239}
#'
#' @return A [ggseg.formats::ggseg_atlas] object (cortical).
#' @export
#' @examples
#' gordon()
gordon <- function() .gordon
