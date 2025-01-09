# R Aggregate Function NA Handling Bug

This repository demonstrates a subtle bug related to how R's `aggregate` function handles `NA` values when a custom function is used with the `FUN` argument.  The bug arises when expecting `na.rm = TRUE` within the custom function to remove `NA` values, but it unexpectedly does not work as intended. The solution showcases how to correctly handle `NA` values in this scenario. 

## Bug Description
The `aggregate` function, when provided a custom function, does not automatically pass through the `na.rm = TRUE` argument as expected. This leads to incorrect results when `NA` values are present in the data. 

## Solution
The solution involves explicitly handling `NA` values within the custom function used with `aggregate`. This can be achieved using the `is.na()` function or similar methods.
