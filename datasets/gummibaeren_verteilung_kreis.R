ggplot(Farben_Mean,aes(x="", y=value, fill=rowname)) + 
  coord_polar("y", start=0) + 
  geom_bar(width = 1, stat="identity") +
  scale_fill_manual(values=c("#8B0000", "#ffd700", "#32cd32","#ff0000","#ff9900","#ffffff"),name="Farben")+
  xlab("")+
  ylab("")+
  ggtitle("Durchschnittliche Verteilung von \nGummibärchenfarben in Tütchen")

