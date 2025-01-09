```R
# Example data
data <- data.frame(x = c(1, 2, 3, NA, 5), y = c(6, 7, 8, 9, 10))

# Correct use of na.rm = TRUE within the custom function
result <- aggregate(data$y, by = list(data$x), FUN = function(x) {
  x <- x[!is.na(x)] #remove NA values before calculation
  sum(x) 
})

print(result)
```