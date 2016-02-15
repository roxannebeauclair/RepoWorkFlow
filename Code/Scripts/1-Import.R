###################
# Importing dataset
###################

# Author: Roxanne Beauclair
# Description: This scripts imports the raw dataset and saves it as a dataframe 
# that can be loaded in other scripts

######################
# Loading dependencies
######################
library(xlsx)

#####################
# Relative file paths
#####################
wd <- getwd()
rdatad <- paste0(wd, "/Data/Raw data") 
cdatad <- paste0(wd, "/Data/Cleaned data")
scriptd <- paste0(wd, "/Code/Scripts")
graphicsd <- paste0(wd, "/Graphics")
markdownd <- paste0(wd, "/Code/RMarkdown")

rdf <- paste0(rdatad, "/demo_raw.xlsx")
df <- paste0(cdatad, "/demo_raw.rda")

######################
# Function definitions
######################

#############
# Import data
#############
demo.data <- read.xlsx(rdf, 1)

###########
# Save data
###########
save(demo.data, file = df)

###############################################
# Remove libraries and objects from environment
###############################################
rm(list = ls())
detach(package: xlsx)