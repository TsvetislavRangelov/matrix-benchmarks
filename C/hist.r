# Load ggplot2
library(ggplot2)

# Create data
data <- data.frame(
  algorithm=c("Matrix Multiply","Matrix Multiply(Optimized)","Multiply Scalar","Transpose") ,  
  seconds=c(7.734550,3.245908,0.00254,0.015415)
  )

# Barplot
ggplot(data, aes(x=algorithm, y=seconds)) + 
  geom_bar(stat = "identity")
  
