
# create one hundred random numbers.
# preliminaries
options(stringsAsFactors = FALSE)
rm(list = ls())
set.seed(123)
int_number <- 100

vct_index <- as.character(1:int_number)
vct_col_1 <- round(runif(int_number, min = 0, max = 1),4)
vct_col_2 <- round(runif(int_number, min = 0, max = 1),4)
vct_col_3 <- round(runif(int_number, min = 0, max = 1),4)
vct_col_4 <- round(runif(int_number, min = 0, max = 1),4)

df_data <- data.frame(index = vct_index, one = vct_col_1, two = vct_col_2, three = vct_col_3, four = vct_col_4)
df_data



# create array of numbers
vct_array <- sapply(1:nrow(df_data), function(x) {
        str_num <- paste(df_data[x, 2:5], collapse = ",")
        return(paste0("[", str_num, "]"))
  })

vct_array



char_quote <- "\""
vct_obj_arr <- paste0(char_quote, vct_index, char_quote, ":", vct_array, ",")
str_obj_arr <- paste0(vct_obj_arr, collapse = "");
# get rid of the last comma
str_obj_arr <- substr(str_obj_arr, 1, nchar(str_obj_arr) -1)
# add the curly brackets
str_obj_arr <- paste0("{", str_obj_arr, "}")

cat(str_obj_arr)

# ============ run logit.R === down from 10 to line 259 ============

df_probs[, !names(df_probs) %in% c("tHold", "tn", "fn", "fp", "tp")] <- NULL

names(df_probs)[1] <- "index"
head(df_probs)
df_probs$index <- df_probs$index * 100
df_probs[2:5] <- round(df_probs[2:5], 4)

vct_array <- sapply(1:nrow(df_probs), function(x) {
  str_num <- paste(df_probs[x, 2:5], collapse = ",")
  return(paste0("[", str_num, "]"))
})
vct_array



int_number <- 100
vct_index <- as.character(1:int_number)


char_quote <- "\""
vct_obj_arr <- paste0(char_quote, vct_index, char_quote, ":", vct_array, ",")
str_obj_arr <- paste0(vct_obj_arr, collapse = "");
# get rid of the last comma
str_obj_arr <- substr(str_obj_arr, 1, nchar(str_obj_arr) -1)
# add the curly brackets
str_obj_arr <- paste0("{", str_obj_arr, "}")

cat(str_obj_arr)











cat(xx)
