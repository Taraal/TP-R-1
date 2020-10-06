require(tm)
library(dplyr)
library(ggplot2)

# Reading a file
words = scan(file="test.txt", what="character")

#Putting all the words in a table, then sorting it by number of occurrences. 
# Get the top 10 words ([1:10])
words
sorted_words = sort(table(words), decreasing = T)
sorted_words

table(sorted_words)
