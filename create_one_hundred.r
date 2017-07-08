
# create one hundred random numbers.
# preliminaries
options(stringsAsFactors = FALSE)
rm(list = ls())
set.seed(123)
int_number <- 100

vct_index <- as.character(1:int_number)
vct_col_1 <- round(runif(int_number, min = 0, max = 1000),0)
vct_col_2 <- round(runif(int_number, min = 0, max = 1000),0)
vct_col_3 <- round(runif(int_number, min = 0, max = 1000),0)
vct_col_4 <- round(runif(int_number, min = 0, max = 1000),0)

df_data <- data.frame(index = vct_index, one = vct_col_1, two = vct_col_2, three = vct_col_3, four = vct_col_4)



# create array of numbers
vct_array <- sapply(1:nrow(df_data), function(x) {
        str_num <- paste(df_data[x, 2:5], collapse = ",")
        str_arr <- paste0("[", str_num, "]")
  })

char_quote <- "\""
vct_obj_arr <- paste0(char_quote, vct_index, char_quote, ":", vct_array, ",")
str_obj_arr <- paste0(vct_obj_arr, collapse = "");
# get rid of the last comma
str_obj_arr <- substr(str_obj_arr, 1, nchar(str_obj_arr) -1)
# add the curly brackets
str_obj_arr <- paste0("{", str_obj_arr, "}")






cat(xx)
