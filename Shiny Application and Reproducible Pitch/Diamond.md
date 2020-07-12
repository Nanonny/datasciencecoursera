Peer-graded Assignment: Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Anon Waaraphok
date: 11/07/2020
autosize: true

========================================================

## Diamond Analysis Report

Diamond Data Analysis Report enabled developing data products using shiny apps being embeded within RMarkDown.

Using PageUp and PageDown keys all the slides can be traversed.

## Application Overview

- Diamonds Properties can be analysed using several Parameters.
- Carat,Price,sample size,color Depth are some of the common parameters.
- This Report enables to pick the right parameters for the best Diamond selection.

========================================================

## Data Used
The data used for this application is diamonds data set, which is part of ggplot2 package. Containing information about 53940 diamonds with 10 variables.


## Slide with Complete Reporting Appliaction

Click the Below Link for the Application.

https://nanon.shinyapps.io/Diamond/

Click the link below for compiled project files on gitub repo.

========================================================


```r
library("ggplot2")
head(diamonds)
```

```
# A tibble: 6 x 10
  carat cut       color clarity depth table price     x     y     z
  <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
1 0.23  Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
2 0.21  Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
3 0.23  Good      E     VS1      56.9    65   327  4.05  4.07  2.31
4 0.290 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
5 0.31  Good      J     SI2      63.3    58   335  4.34  4.35  2.75
6 0.24  Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
```

Slide With Plot
========================================================

![plot of chunk unnamed-chunk-2](Diamond-figure/unnamed-chunk-2-1.png)
