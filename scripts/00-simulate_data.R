#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(fable)
library(tsibble)
# [...UPDATE THIS...]

#### Simulate data ####

abortionscount <- 110000
pregnanciescount <- 5700000
population1544count <- 450000
abortionratetotal <- 22
abortionratiototal <- 310

set.seed(2004)
year = c(1973:2016)
set.seed(2004)
abtrates = c(16:30)
y <- sample(abtrates, 34, replace = TRUE)

abtrates = (c(166:298, length = 34)/10)
abtrates2 = (c(287:206, length = 9)/10)
abtrates
abtrates2

abtrates = c(abtrates,abtrates2)
abtrates

simulated_clean_abt <- tibble(
  year = year,
  abortionratetotal = abtrates
)
  

y[order(y)]

(sample.int(101,size=100,replace=TRUE)-1)/10


