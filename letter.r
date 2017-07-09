

# create one hundred random numbers.
# preliminaries
options(stringsAsFactors = FALSE)
rm(list = ls())

df_data <- read.table(file = "basic_bar/data.tsv", sep="\t", header=TRUE)
char_quote <- "\""

vct_letter <- paste0(char_quote, "letter", char_quote, " : ", char_quote, df_data$letter, char_quote, ", ")
vct_frequency <- paste0(char_quote, "frequency", char_quote, " : ", df_data$frequency)

df_temp <- data.frame(letter = vct_letter, frequency = vct_frequency)
df_temp$concat <- paste0("{", df_temp$letter, df_temp$frequency, "},")

df_temp$letter <- NULL
df_temp$frequency <- NULL

print(df_temp, row.names = FALSE)

