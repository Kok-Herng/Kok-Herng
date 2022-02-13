library(ggplot2)
library(treemapify)

data <- data.frame(x = c("Machine Learning", "Command Lines", "Data Cleaning and Manipulation", 
                         "Data Visualization", "Bioinformatics Software"),
                   y = c(1,1,1,1,1))

ggplot(data, aes(area = y, label = x, fill = x)) +
  geom_treemap() +
  geom_treemap_text(colour = "white", place = "centre") +
  
  theme(legend.position="none") +
  
  labs(caption = "Chart levels are for illustration purpose only.
       Created using R and ggplot2, code can be found in my repo.")