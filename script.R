library(readxl)
crimestats <- read_excel("http://katski.org/crimestats.xlsx")
View(crimestats)

library(ggplot2)

ggplot(crimestats, aes(x = density, y = crime, color = city))+
    geom_point(show.legend = FALSE) + geom_text(aes(label=city),hjust=0, vjust=0) +
    geom_line() +
    ggplot2::theme(plot.title = ggplot2::element_text(face = "bold")) +
    theme(legend.position = "none") +
    ggplot2::labs(
        x = "Population per Square Mile", y = "Crime Rate per 100,000 People",
        color = NULL,
        title = "Crime And Population Density in US Cities (1968)",
        subtitle = "Data collected from https://www.census.gov/library/publications/1970/compendia/statab/91ed.html")
