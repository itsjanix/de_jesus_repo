#De Jesus
#Individual-Project-2


Instructions:
  
#Individual Project #2
#Extract 10000 tweets from Twitter using twitteR package including retweets.
#Subset the retweets and the original tweets into a separate file
#Plot the retweets and the original tweets using bar graph in vertical manner.
#Include legends
  
  #install and load packages
install.packages('twitteR')
install.packages("RCurl")
install.packages("rtweet")
install.packages("tinytex")
install.packages("plotly")
install.packages("RColorBrewer")
install.packages("stringr")
install.packages("magrittr")
install.packages("tm")
install.packages("wordcloud")
install.packages("wordcloud2")


library("twitteR")
library("RCurl")
library(tinytex)
library(rtweet)
library(ggplot2)
library(RColorBrewer)
library(tm)
library(dplyr)
library(wordcloud)
library(wordcloud2)
library(stringr)

#install.packages("syuzhet") #for sentiment analysis
install.packages("syuzhet")
library(syuzhet)

install.packages("rdfp")
library("rdfp")
library(magrittr)

#RESTART R session!
install.packages(c("devtools", "rjson", "bit64", "httr"))

#declare tokens and keys

CONSUMER_KEY <- "rNOC9AXlOmMwltDU6fxZGJvoc"
CONSUMER_SECRET <- "LMC48sUCCPib785PAYb1pzwjDiWueoJZthbpdpxiYUh2gxa4on"
ACCESS_TOKEN <- "1596020398365151234-Ttupby9xwEH2IPfF2aIs1SdiXHtPgo"
ACCESS_SECRET <- "yBeaMXTih50GXUOhiZBF2o2xHNuqUA9w3cUCFS0Oqt0U6"


#Connect to twitter app
library("twitteR")
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

  
  
  
  #extract 10k tweets including retweets #Netflix
  
  searchTwt <- searchTwitter("#Wednesday",
                             n = 10000,
                             lang = "en",
                             since = "2022-12-03",
                             until = "2022-12-10",
                             retryOnRateLimit = 120)
  
  #converet to dataframe
  library("dplyr")
  
  TwtDF <- twListToDF(searchTwt)
  class(TwtDF)
  names(TwtDF)
  View(TwtDF)[1:5]
  head(TwtDF$text)[1:5]
  
  save(TwtDF,file = "WedTwtDF.Rdata")
  
  #load dataset
  load(file = "WedTwtDF.Rdata")
 
  #Subset the retweets and the original tweets into a separate file
  
  library(dplyr)
  trendSubset <- TwtDF %>% select(text, screenName, created, isRetweet) %>% 
    filter(isRetweet == FALSE)
  
  trendSubset1 <- TwtDF %>% select(text, screenName, created, isRetweet) %>% 
    filter(isRetweet == TRUE)
  
  #Plot the retweets and the original tweets using bar graph in vertical manner.
  
  library(ggplot2)
  ggplot(data = trendSubset, aes(x = created)) +
    geom_histogram(aes(fill = ..count..)) +
    xlab("Date") + ylab("Number of tweets") + 
    scale_fill_gradient(low = "blue", high = "red")
  theme(legend.position = "topleft")
  
  library(ggplot2)
  ggplot(data = trendSubset1, aes(x = created)) +
    geom_histogram(aes(fill = ..count..)) +
    xlab("Date") + ylab("Number of tweets") + 
    scale_fill_gradient(low = "blue", high = "red")
  theme(legend.position = "topleft")
  
