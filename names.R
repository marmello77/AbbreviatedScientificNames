################################################################################
##### ABBREVIATED SCIENTIFIC NAMES
##### Authors: Guillermo Florez-Montero & Marco Mello
##### See README for further info:
##### https://github.com/marmello77/AbbreviatedScientificNames/blob/main/README.md
################################################################################


################################################################################
##### SET THE STAGE
################################################################################


#Set the working directory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

#Delete all previous objects
rm(list= ls())


################################################################################
##### LOAD THE REQUIRED PACKAGES
################################################################################


library(tidyverse)


################################################################################
##### IMPORT THE DATA
################################################################################


# Import the example data set
names <- read_csv("names.csv")

# Check the data
class(names)
names

# Check the names
names$Name


################################################################################
##### ABBREVIATE THE NAMES
################################################################################


# Load the function
source("AbbreviatedNames.R")

# Use the function to abbreviate the names
names$abbreviated <- AbbreviatedNames(names$Name)

# Check the names
names$abbreviated


################################## END #########################################

