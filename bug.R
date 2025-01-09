```R
# Example data
data <- data.frame(x = c(1, 2, 3, NA, 5), y = c(6, 7, 8, 9, 10))

# Incorrect use of na.rm = TRUE in aggregate function
result <- aggregate(data$y, by = list(data$x), FUN = function(x) sum(x, na.rm = TRUE))

print(result)
```