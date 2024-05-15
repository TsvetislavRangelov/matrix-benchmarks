# Load ggplot2
library(ggplot2)



# Create data
data <- data.frame(
  algorithm=c("Matrix Multiply","Matrix Multiply(Optimized)","Multiply Scalar","Transpose") ,  
  seconds=c(7.71111,3.20300,0.20000,0.16000)
  )

# Barplot
ggplot(data, aes(x=algorithm, y=seconds)) + 
  geom_bar(stat = "identity")
