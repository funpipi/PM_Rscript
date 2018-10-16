#################################################################
# Function: Configurate the R packages for Parallel-META
# Call: Rscript RM_Config.R
# Authors: Xiaoquan Su
# Last update: 2018-10-16, Shi Huang
#################################################################

## install necessary libraries
p <- c("optparse","vegan","gplots","ggplot2","grid","igraph","reshape","pheatmap","pROC","combinat","plyr","RColorBrewer","grDevices","permute","lattice","squash","fossil","abind", "randomForest", "psych","ade4")
usePackage <- function(p) {
  if (!is.element(p, installed.packages()[,1]))
    install.packages(p, dep=TRUE, repos="http://cran.us.r-project.org/")
  suppressWarnings(suppressMessages(invisible(require(p, character.only=TRUE))))
}
invisible(lapply(p, usePackage))

cat("**R Packages Configuration Complete**\n")

#  check environment variables
Env <-Sys.getenv("PM_Rscript")
if(nchar(Env)<1){
  cat('Please set the environment variable \"PM_Rscript\" to the directory\n')
 }

