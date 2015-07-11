# //////////////////////////////////////////////////////////////
# Twitter Registration Using httr
# https://apps.twitter.com/app/4681916/keys
# Using info from:
# http://rayli.net/blog/data/newborn-app-using-twitter-and-r-data-analysis/
# https://bitbucket.org/dailymorn/newborn-app/src/8142076bc5db5b34f84b02820cf86b07dbefaa31/newborn-app.R?at=default
# rm(list = ls())
# class?user
# //////////////////////////////////////////////////////////////

reg2 <- function() {
  library(twitteR)
  
  consumer_key        <- "AN8pXHAq7as61xb5i3HRUA"
  consumer_secret     <- "W7d1mi561gXkyxTYA55MQxLsiVw9mdes40wlp3g"
  access_token        <- "18869909-Pu9OSNivdQnFzeluPKA0sYjhEbISUE7hXx8COdyoy"
  access_token_secret <- "zcEwdfC9IVQHsXbA80qUHQtXbjs4sK0Il0H3I5HvOVM"

  setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_token_secret)
}
reg2()


