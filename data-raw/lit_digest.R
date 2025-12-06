##
# lit_digest.R
#   Prepare 1936 Literary Digest poll data for eda4mldata package
##

library(tibble)

# 1936 Literary Digest poll predictions
# From Freedman, Pisani, & Purves (2007), Chapter 19, Section 2
lit_digest <- tribble(
  ~source,              ~FDR_pct,
  "Digest",                   43L,
  "Gallup re Digest",         44L,
  "Gallup re election",       56L,
  "election result",          62L
)

# Save to package data directory
usethis::use_data(lit_digest, overwrite = TRUE)

##
#  EOF
##
