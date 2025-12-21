##
# dry_beans.R
#   Prepare dry beans dataset for eda4mlr package
##

# Load beans data from beans package
dry_beans <- beans::beans |>
  tibble::as_tibble() |>
  dplyr::rename(
    area             = area,
    perimeter        = perimeter,
    major_axis       = major_axis_length,
    minor_axis       = minor_axis_length,
    aspect_ratio     = aspect_ratio,
    eccentricity     = eccentricity,
    convex_area      = convex_area,
    equiv_diameter   = equiv_diameter,
    extent           = extent,
    solidity         = solidity,
    roundness        = roundness,
    compactness      = compactness,
    shape_factor_1   = shape_factor_1,
    shape_factor_2   = shape_factor_2,
    shape_factor_3   = shape_factor_3,
    shape_factor_4   = shape_factor_4,
    class            = class
  ) |>
  dplyr::mutate(
    class = tolower(class)
  )

# Verify: should be 13,611 beans
stopifnot(nrow(dry_beans) == 13611L)

# Save to package data directory
usethis::use_data(dry_beans, overwrite = TRUE)

##
#  EOF
##
