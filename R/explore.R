# load libraries
library(lubridate)
library(dplyr)
library(tidyr)
library(ggplot2)
raw_data <- read.csv("data/raw/OR217_NB_at_Allen_2R340_to_NB_OR_217_05-05-2022_to_06-06-2022_data.csv")
stations <- read.csv("data/raw/portalstations.csv")
detectors <- read.csv("data/raw/portaldetectors.csv")

data <- pivot_longer(raw_data, cols = 2:3, names_to = "metric")

#reshaped data frame to one observation per row
data$starttime <- mdy_hm(data$starttime, tz = "America/Los_Angeles")

