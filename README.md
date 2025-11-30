# eda4mldata

Companion R package for the textbook *Exploratory Data Analysis for Machine Learning* by Tony Thrall.

## Installation

You can install the development version of eda4mldata from GitHub:
```r
# install.packages("remotes")
remotes::install_github("tthrall/eda4mldata")
```

## Data sets

The package provides the following data sets:

| Dataset | Observations | Variables | Description |
|---------|--------------|-----------|-------------|
| `wine_quality` | 6,497 | 13 | Wine physicochemical properties and quality ratings |
| `mnist_example` | 10 | 3 | Sample MNIST handwritten digit images (one per digit 0–9) |
| `handedness` | 6 | 3 | Handedness counts by sex for chi-squared independence tests |
| `olympic_running` | 312 | 4 | Olympic track event winning times (1896–2016) |
| `oecd_bli` | 36 | 26 | OECD Better Life Index indicators by country (2015) |
| `oecd_bli_indicators` | 24 | 5 | Metadata for OECD Better Life Index indicators |

### Wine Quality Data

Physicochemical measurements for Portuguese Vinho Verde wines, with quality ratings from expert tasters.
```r
library(eda4mldata)
data(wine_quality)
dim(wine_quality)
#> [1] 6497   13
```

### MNIST Handwritten Digits

Sample images from the MNIST database of handwritten digits, useful for demonstrating image data and dimension reduction.
```r
data(mnist_example)
mnist_example
#> # A tibble: 10 × 3
#>    label image        pixels
#>    <int> <list>       <list>
#>  1     0 <int [28 × 28]> <int [784]>
#>  ...
```

### Handedness Data

Handedness counts by sex from Freedman, Pisani & Purves (2007), used to illustrate chi-squared tests for independence.
```r
data(handedness)
handedness
#> # A tibble: 6 × 3
#>   sex    hnd   count
#>   <chr>  <chr> <int>
#> 1 male   right   934
#> 2 male   left    113
#> 3 male   ambi     20
#> 4 female right  1070
#> 5 female left     92
#> 6 female ambi      8
```

### Olympic Running Data

Fastest running times for Olympic track events from 1896 to 2016, for men and women across seven distances.
```r
data(olympic_running)
head(olympic_running)
#> # A tibble: 6 × 4
#>    year length sex   time
#>   <int>  <int> <chr> <dbl>
#> 1  1896    100 male   12
#> ...
```

### OECD Better Life Index

Well-being indicators for 36 countries across 11 dimensions (housing, income, jobs, education, environment, health, etc.).
```r
data(oecd_bli)
data(oecd_bli_indicators)

# See available indicators
oecd_bli_indicators$indicator
#>  [1] "Stakeholder Engagement"    "Voter Turnout"
#>  [3] "Air Pollution"             "Water Quality"
#> ...
```

## Data Sources

- **Wine Quality**: [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/wine+quality)
- **MNIST**: [Yann LeCun's MNIST Database](http://yann.lecun.com/exdb/mnist/)
- **Handedness**: Freedman, D., Pisani, R., & Purves, R. (2007). *Statistics* (4th ed.), Chapter 28.
- **Olympic Running**: [Olympics.com](https://olympics.com/en/sports/athletics/) via the `tsibbledata` package
- **OECD Better Life Index**: [OECD Better Life Index](https://www.oecdbetterlifeindex.org/) (2015 data)

## Related

- [EDA for Machine Learning](https://github.com/tthrall/eda4ml) — the companion textbook

## Citations

If you use these data sets, please cite the original sources:

**Wine Quality**:
> Cortez, P., Cerdeira, A., Almeida, F., Matos, T., & Reis, J. (2009).
> Modeling wine preferences by data mining from physicochemical properties.
> *Decision Support Systems*, 47(4), 547–553.
> https://doi.org/10.1016/j.dss.2009.05.016

**MNIST**:
> LeCun, Y., Cortes, C., & Burges, C. J. C. (1998).
> The MNIST database of handwritten digits.
> http://yann.lecun.com/exdb/mnist/

**Handedness**:
> Freedman, D., Pisani, R., & Purves, R. (2007).
> *Statistics* (4th ed.). W.W. Norton & Company.

**OECD Better Life Index**:
> OECD (2015). OECD Better Life Index.
> https://www.oecdbetterlifeindex.org/

## License

MIT License
