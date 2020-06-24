library(tidyverse)
library(readr)


pm_bronx <- read.csv("PM 2.5 data/Bronx.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_brooklyn <- read.csv("PM 2.5 data/Brooklyn.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_cook <- read.csv("PM 2.5 data/Cook.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_dc <- read.csv("PM 2.5 data/DC.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_denver <- read.csv("PM 2.5 data/Denver.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_hawaii <- read.csv("PM 2.5 data/Hawaii.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_hennepin <- read.csv("PM 2.5 data/Hennepin.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_la <- read.csv("PM 2.5 data/Los Angeles.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_manhattan <- read.csv("PM 2.5 data/Manhattan.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_queens <- read.csv("PM 2.5 data/Queens.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_staten <- read.csv("PM 2.5 data/Staten Island.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))

pm_suffolk <- read.csv("PM 2.5 data/Suffolk.csv") %>% 
  select(Daily.Mean.PM2.5.Concentration, DAILY_AQI_VALUE, Date) %>% 
  group_by(Date) %>% 
  summarize(mean(Daily.Mean.PM2.5.Concentration))