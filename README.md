

<!-- README.md is generated from README.qmd. Please edit that file -->

# ggsegGordon <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggseg/ggsegGordon/workflows/R-CMD-check/badge.svg)](https://github.com/ggseg/ggsegGordon/actions)
[![DOI](https://zenodo.org/badge/417531585.svg)](https://zenodo.org/badge/latestdoi/417531585)
[![CRAN
status](https://www.r-pkg.org/badges/version/ggsegGordon.png)](https://CRAN.R-project.org/package=ggsegGordon)
<!-- badges: end -->

This package contains dataset for plotting the Gordon atlas for ggseg.

Gordon, E. M., Laumann, T. O., Adeyemo, B., Huckins, J. F., Kelley, W.
M., & Petersen, S. E. (2014). Generation and evaluation of a cortical
area parcellation from resting-state correlations. Cerebral cortex,
26(1), 288-303. [PubMed](https://pubmed.ncbi.nlm.nih.gov/25316338/)

To learn how to use these atlases, please look at the documentation for
[ggseg](https://ggseg.github.io/ggseg/)

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
options(repos = c(
  ggseg = "https://ggseg.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages("ggsegGordon")
```

You can install from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ggseg/ggsegGordon")
```

## Example

``` r
library(ggsegGordon)
library(ggseg)
library(ggplot2)

ggplot() +
  geom_brain(
    atlas = gordon(),
    mapping = aes(fill = label),
    position = position_brain(hemi ~ view),
    show.legend = FALSE
  ) +
  scale_fill_manual(values = gordon()$palette, na.value = "grey") +
  theme_void()
```

<img src="man/figures/README-2d-plot-1.png" style="width:100.0%" />

Please note that the ‘ggsegGordon’ project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md). By contributing to
this project, you agree to abide by its terms.
