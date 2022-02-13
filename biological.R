library(ggplot2)

data <- data.frame(x = c("Gene Expression", "Gene Classification", 
                                 "Biostatistics" , 
                                 "Sequence Analysis"),
                   y = c(1,1,1,1)) #values are for illustration purpose only

ggplot(data, aes(x, y, fill = x)) +
  geom_bar(stat="identity") +
  geom_text(aes(label=x), vjust=15, size=5, colour="white")+
  
  theme(axis.text.y=element_blank(), #remove y axis labels
        axis.ticks.y=element_blank(), #remove y axis ticks
        axis.title.y=element_blank(), #remove y axis title
        axis.title.x=element_blank(), #remove x axis title
        axis.text.x=element_blank(), #remove x axis labels
        legend.position = "none") + #remove legend
  
  labs(caption = "Chart levels are for illustration purpose only.
       Created using R and ggplot2, code can be found in my repo.")