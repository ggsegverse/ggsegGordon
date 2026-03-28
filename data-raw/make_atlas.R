library(ggseg.extra)
library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")

annot_files <- file.path(
  here::here("data-raw", "fsaverage5"),
  c("lh.gordon333dil.annot", "rh.gordon333dil.annot")
)

gordon <- create_cortical_from_annotation(
  input_annot = annot_files,
  atlas_name = "gordon",
  output_dir = "data-raw",
  skip_existing = TRUE,
  cleanup = FALSE
) |>
  atlas_region_contextual("unknown|Unknown", "label")

print(gordon)
plot(gordon)

.gordon <- gordon
usethis::use_data(.gordon, overwrite = TRUE, compress = "xz", internal = TRUE)
