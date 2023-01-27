library(readtext)
library(quanteda)
library(dplyr)
library(lubridate)


### ortak metinler

all_text <- readtext(paste0("ortak_metinler/", "*.txt"),
         docvarsfrom = "filenames")


### toplantı ve tarihleri

tarih <- c("2022-02-12",
           "2022-11-14",
           "2022-08-21",
           "2022-04-24",
           "2022-03-27",
           "2022-11-28",
           "2022-05-29",
           "2023-01-29",
           "2022-10-02",
           "2022-07-03",
           "2023-01-05")

all_text$tarih = tarih

tidy_all_text <- all_text %>% select(2,3,4) %>% mutate(tarih = ymd(tarih)) %>% arrange(tarih)
saveRDS(tidy_all_text,"ortak_metinler.rds")





