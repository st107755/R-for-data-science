library("readr")
library("ggplot2")

locale(date_format = "%B")

d1 <- "January 1, 2010"
d2 <- "2015-Mar-07"
d3 <- "06-JUN-2017"

parse_date(d1,"%B %d, %Y")
parse_date(d2,"%Y-%b-%D")
parse_date(d3,"%D-%b-%Y")

spread(table2,key = type,value = count)

table2 %>% mutate(cases_per_day = ifelse (type == "cases" ,count/365,NA)) %>% 
  mutate(pooulation_per_day = ifelse(type =="population",count/365,NA)) %>%
  ggplot(aes(year,cases_per_day))+
  geom_line(aes(group = country))+
  geom_point(aes(color= country))

t2_cases <- filter(table2, type == "cases") %>%
  rename(cases = count) %>%
  arrange(country, year)

table2 %>% filter(type == "cases") %>% rename("cases" = "count") %>% 
  ggplot(aes(year,cases))+
  geom_line(aes(group = country))+
  geom_point(aes(color= country))
  

