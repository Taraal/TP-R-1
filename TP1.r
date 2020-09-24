require(tm)
library(dplyr)
library(ggplot2)

# Reading a file
words = scan(file="test.txt", what="character")

#Putting all the words in a table, then sorting it by number of occurrences. 
# Get the top 10 words ([1:10])
sorted_words = sort(table(words), decreasing = T)[1:10]


sorted_words_frame = data.frame(sort(table(words), decreasing = T)[1:30])
ggplot(data=sorted_words_frame) + geom_col(aes(x=words, y=Freq))



full_corpus = Corpus(DataframeSource(sorted_words))
termMatrix = DocumentTermMatrix(full_corpus, control=list(wordLengths=c(1,Inf)))

X = inspect(termMatrix)
out = crossprod(X)
out