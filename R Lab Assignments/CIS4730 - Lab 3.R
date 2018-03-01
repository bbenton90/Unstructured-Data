# Blake Benton
# CIS 4730
# Lab Assignment - 2.19.2018

setwd("/Users/blakebenton/Documents/CIS4730")
df <- read_csv(file="HousePrices.csv")

#1. 
df %>%
  select(price, aircon, gasheat, garage) %>%
  filter(garage < 1)
# shows price, aircon, and gasheat for houses that have 0 garages

#2.
df %>%
  group_by(aircon) %>%
  summarise(n_houses = n())
# shows how many houses do and do not have air conditioning

#3.
df %>%
  mutate(price_per_bedroom = price/bedrooms) %>%
  select(price, bedrooms, price_per_bedroom)
# creates price_per_bedroom by dividing price by the number of bedrooms

#4.
df %>%
  mutate(price_per_bedroom = price/bedrooms) %>%
  select(price, bedrooms, price_per_bedroom) %>%
  arrange(desc(price_per_bedroom))
# shows only price, bedrooms, and price_per_bedroom and arranges the results by descending order of price_per_bedroom