#### Preamble ####
# Purpose: Cleans.... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
# Suicide Rates Data are already cleaned. Refer to Data Section of Paper and Readme for source of data and method of reproduction.
# Open CSV and save into suicides_data
suicides_data <- read_csv("inputs/data/compiled_compressed_mortality_1973_to_2006.csv")

# Decapitalize all names
names(suicides_data) <- tolower(names(suicides_data))

# Clean name of Crude Rate to suicideratetotal
colnames(suicides_data)[6] <- "suicideratetotal"

# Store Data as cleaned_suicides
cleaned_suicides <- suicides_data

## Clean Abortion Rates Data for Abortion Rates betweene years 1973-2006. 

# Open CSV and save into abortion_data
abortion_data <- read_csv("inputs/data/NationalAndStatePregnancy_PublicUse.csv")

# Select only data in the whole US Country, excluding states.
abortion_data <- filter(abortion_data, state %in% c("US"))

# Select only data in the years 1973 to 2016
#abortion_data <- filter(abortion_data, year %in% c(1973:2016))

# Keep columns only in years, abortion rate total, and abortion ratio total in each year. 
# I included both abortion rate total and abortion ratio, I included abortion ratio as 
# I believe it's a better representation of the increase in the use of abortion services after legalization.
# But the rate is better example for our use case here
abortion_data <- subset(abortion_data, select = c(year,abortionstotal, pregnanciestotal, population1544, abortionratetotal, abortionratiototal))

# Show data for double checking.
abortion_data

# Keep cleaned data in new frame with new name.
cleaned_abort <- abortion_data

#### Save data ####
# Save files as cleaned_abort to clean-abort, and cleaned_suicides.
write_csv(cleaned_abort, "outputs/clean_data/cleaned_abort.csv")
write_csv(cleaned_suicides, "outputs/clean_data/cleaned_suicides.csv")

