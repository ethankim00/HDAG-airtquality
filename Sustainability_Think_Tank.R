library(tidyverse)
library(readr)
library(ggplot2)

## DENVER

den.aqi.2020 <- read.csv("Sustainability Harv/NYC/aqidaily2020.csv")
den.aqi.2019 <- read.csv("Sustainability Harv/NYC/aqidaily2019.csv")
mobility <- read.csv("Sustainability Harv/Global_Mobility_report.csv")
den.mobility <- mobility %>% 
  filter(sub_region_1 == "New York" & sub_region_2 == "New York County") 

sub.den.aqi.2019 <- den.aqi.2019[46:174,]
den.baseline <- median(sub.den.aqi.2019[,"Ozone"])

sub.den.aqi <- den.aqi.2020[46:174,]
percent.change <- ((sub.den.aqi[, "Ozone"] - den.baseline)/den.baseline)*100

pct <- as_tibble(percent.change) %>% 
  mutate(id = row_number())
mob <- as_tibble(den.mobility) %>% 
  mutate(id = row_number())

combined <- right_join(pct, mob)

combined %>% 
  ggplot() +
  geom_point(aes(x = id, y = workplaces_percent_change_from_baseline), color = "blue") +
  geom_point(aes(x = id, y = value), color = "red") +
  ylab("Percent Change from Baseline") +
  xlab("Day (from Jan 1, 2020)") +
  labs(title= "New York County (Manhattan, using Ozone)")

ggsave("~/Downloads/New York County.jpg")
  
plot(1:129, percent.change)
plot(1:129, den.mobility[,12])

## NEW YORK

nyc.aqi.2020 = read.csv('/Users/Icester/Desktop/Sustainability Harv/NYC/aqidaily2020.csv')
nyc.aqi.2019 = read.csv('/Users/Icester/Desktop/Sustainability Harv/NYC/aqidaily2019.csv')
nyc.mobility = subset(mobility, sub_region_2=="New York County")

nyc.baseline = median(nyc.aqi.2019[,2])

sub.nyc.aqi = nyc.aqi.2020[46:174,]
percent.change = ((sub.nyc.aqi[, "Overall.AQI.Value"] - nyc.baseline)/nyc.baseline)*100

plot(1:129, percent.change)
plot(1:129, nyc.mobility[,12])

## HAWAII

hi.aqi.2020 = read.csv('/Users/Icester/Desktop/Sustainability Harv/HI/aqidaily2020.csv')
hi.aqi.2019 = read.csv('/Users/Icester/Desktop/Sustainability Harv/HI/aqidaily2019.csv')
hi.mobility = subset(mobility, sub_region_2=="Hawaii County")

hi.baseline = median(hi.aqi.2019[,2])

sub.hi.aqi = hi.aqi.2020[46:174,]
percent.change = ((sub.hi.aqi[, "Overall.AQI.Value"] - hi.baseline)/hi.baseline)*100

plot(1:129, percent.change)
plot(1:129, hi.mobility[,12])
