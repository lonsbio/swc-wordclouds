library(tm)
library(wordcloud)

feedback <- read.table(
  file="data/swc_feedback_day1.csv",
  header=TRUE, sep=","
)

feedback$Day <- as.factor(feedback$Day)
feedback$Comment <- as.character(feedback$Comment)

wordcloud(feedback$Comment,colors=brewer.pal(6,"Dark2"),random.order=FALSE)

feedback$Comment <- tolower(x = feedback$Comment)
feedback_cleaned  <- removeWords(feedback$Comment,words = stopwords())
wordcloud(feedback_cleaned,colors=brewer.pal(6,"Dark2"),random.order=FALSE)

sub_wordcloud <- function(data,category){
  sub_feedback <- data[data$Coded == category,]
  sub_feedback_cleaned  <- removeWords(sub_feedback$Comment,words = stopwords())
  wordcloud(sub_feedback_cleaned,colors=brewer.pal(6,"Dark2"),random.order=TRUE)
}

sub_wordcloud(feedback,"helpers")


