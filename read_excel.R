library(tidyverse)

library(readxl)

cases_tbl<-read_xlsx("read_excel/iscd_cases_2018-12-05.xlsx" )


cases_tbl_fix<- data.frame(lapply(cases_tbl, function(x) {
  
  gsub(pattern = "," , replacement = " ", x)}))

library(xlsx)

write_xlsx(
  cases_tbl_fix, 
  path = "read_excel/cases_fix.xlsx",
  col_names = TRUE
  )