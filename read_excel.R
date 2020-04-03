library(tidyverse)

library(readxl)

library(writexl)

# reading and fixing the cases table

cases_tbl<-read_xlsx("iscd_cases_2018-12-05.xlsx" )


cases_tbl_fix<- data.frame(lapply(cases_tbl, function(x) {
  
  gsub(pattern = "," , replacement = " ", x)}))


write_xlsx(
  cases_tbl_fix, 
  path = "cases_fix.xlsx",
  col_names = TRUE
  )

write_csv(
  cases_tbl_fix, 
  path = "cases_fix.csv",
  col_names = TRUE
)


# reading and fixing the judges table

judges_tbl<-read_xlsx("iscd_judges2018-12-05.xlsx" )


judges_tbl_fix<- data.frame(lapply(judges_tbl, function(x) {
  
  gsub(pattern = "," , replacement = " ", x)}))


write_xlsx(
  judges_tbl_fix, 
  path = "judges_fix.xlsx",
  col_names = TRUE
)



write_csv(
  judges_tbl_fix, 
  path = "judges_fix.csv",
  col_names = TRUE
)