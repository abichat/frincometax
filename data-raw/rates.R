library(tidyverse)
library(rvest)

page <- read_html("https://fr.wikipedia.org/wiki/Bar%C3%A8mes_de_l'imp%C3%B4t_sur_le_revenu_en_France")

raw_tables <-
  page %>%
  html_nodes("table") %>%
  html_table() %>%
  `[`(1:14)

rates <-
  raw_tables %>%
  `[`(c(1:10, 10:14)) %>%
  map2(2020:2006, ~ mutate(.x, year = .y)) %>%
  map(rename, interval = 1) %>%
  map(rowid_to_column, var = "bracket") %>%
  reduce(bind_rows) %>%
  rename(interval = 2, rate = 3) %>%
  mutate(interval = str_replace_all(interval, "Jusqu'", "De 0 "),
         interval = str_remove_all(interval, "\\s")) %>%
  separate(interval, c("min", "max"), sep = "à", remove = FALSE) %>%
  mutate(across(c(min, max, rate), str_remove_all, "[a-zA-Z-%]*"),
         rate = str_replace_all(rate, ",", "."),
         across(c(min, max, rate), as.numeric),
         max = if_else(is.na(max), Inf, max),
         rate = rate / 100,
         currency = "euros") %>%
  select(year, bracket, min, max, currency, rate) %>%
  as_tibble()

usethis::use_data(rates, overwrite = TRUE)
