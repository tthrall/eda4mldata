# eda4mldata

Companion R package for the textbook *Exploratory Data Analysis for Machine Learning* by Tony Thrall.

## Installation

You can install the development version of eda4mldata from GitHub:

```r
# install.packages("remotes")
remotes::install_github("tthrall/eda4mldata")
```

## Datasets

The package currently provides the following datasets:

| Dataset | Observations | Variables | Description |
|---------|--------------|-----------|-------------|
| `wine_red` | 1,599 | 12 | Red wine physicochemical properties and quality |
| `wine_white` | 4,898 | 12 | White wine physicochemical properties and quality |
| `wine_quality` | 6,497 | 13 | Combined dataset with wine type indicator |

### Wine Quality Data

The wine quality datasets contain physicochemical measurements for Portuguese
Vinho Verde wines, along with quality ratings from expert tasters.

```r
library(eda4mldata)

# Load the red wine data
data(wine_red)
dim(wine_red)
#> [1] 1599   12

# Variables are physicochemical properties plus quality rating
names(wine_red)
#>  [1] "fixed_acidity"        "volatile_acidity"     "citric_acid"
#>  [4] "residual_sugar"       "chlorides"            "free_sulfur_dioxide"
#>  [7] "total_sulfur_dioxide" "density"              "pH"
#> [10] "sulphates"            "alcohol"              "quality"
```

### Data Sources

- **Wine Quality**: [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/wine+quality)

## Related

- [EDA for Machine Learning](https://github.com/tthrall/eda4ml) — the companion textbook

## Citation

If you use the wine quality data, please cite:

> Cortez, P., Cerdeira, A., Almeida, F., Matos, T., & Reis, J. (2009).
> Modeling wine preferences by data mining from physicochemical properties.
> *Decision Support Systems*, 47(4), 547–553.
> https://doi.org/10.1016/j.dss.2009.05.016

## License

MIT License
