---
title: "Follower Website Usage"
author: '@metacode'
date: "Wednesday, July 01, 2015"
output:
  pdf_document:
    keep_tex: yes
    toc: no
---

Following registration we need to get the follower objects before we process the information:

```{r}
mc         <- getUser("metacode")
mcfids     <- mc$getFollowerIDs()     ## get all the follower ids in a list
mcfobjects <- lookupUsers(mcfids)     ## get objects of follower id list
```

We then use websiteUsage:

```{r}
websiteUsage <- function(user_fobjects) {
  # Visualize users who have a website
  # Use user_fobjects to get active followers
  followers <- length(user_fobjects)
  website <- 0
  for ( i in 1:followers ) {
    if ( length(user_fobjects[[i]]$url) > 0 ) {
      website <- website + 1
    } 
  }
  
  # Pie chart needs to be documented
  col <- gray(c(.7))
  no_website <- followers-website
  web_usage <- c(no_website, website)
  names(web_usage) <- c('No Website', 'Website')
  pie(web_usage, main="@metacode followers")

  # Summary
  cat("Followers  = ", followers,  "\n")
  cat("No Website = ", no_website, "\n")
  cat("Website    = ", website,    "\n")
}  
```
We can now call the function:
```{r}
foo> websiteUsage(mcfobjects)
Followers  =  569 
No Website =  244 
Website    =  325 
```
![](G:/r/websiteUsage_150715b.jpg "")  

