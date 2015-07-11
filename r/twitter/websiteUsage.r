# //////////////////////////////////////////////////////////////
# Website Usage
# Saturday, July 11, 2015
# 
# Basic usage ok, but:
# Maybe better to split websiteUsage into processing and visualization
# Visualization commands could be outside a function
# The md to pdf puts the image into the second page
# The problem is somewhere between pandoc and latex
# //////////////////////////////////////////////////////////////

## Need to load reg2 function for registration
reg2()

mc         <- getUser("metacode")
mcfids     <- mc$getFollowerIDs()     ## get all the follower ids in a list
mcfobjects <- lookupUsers(mcfids)     ## get objects of follower id list

websiteUsage <- function(user_fobjects) {
  # Visualize users who have a website
  followers <- length(user_fobjects)
  website <- 0
  for ( i in 1:followers ) {
    if ( length(user_fobjects[[i]]$url) > 0 ) {
      website <- website + 1
    } 
  }
  col <- gray(c(.7))
  no_website <- followers-website
  web_usage <- c(no_website, website)
  names(web_usage) <- c('No Website', 'Website')
  
  # Use following and dev.off() if jpg needed for pdf
  # jpeg(filename="websiteUsage.jpg", width=200, height=200)

  pie(web_usage, main="@metacode followers")
  # dev.off()

  cat("Followers  = ", followers, "\n")
  cat("No Website = ", no_website, "\n")
  cat("Website    = ", website, "\n")
}  
websiteUsage(mcfobjects)
