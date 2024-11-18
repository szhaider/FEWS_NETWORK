# Sys.setenv(LANG = "en")  #set up english language

# Global Population data: https://github.com/VU-IVM/GLOPOP-S/

rm(list = ls()) # to clear

# RUN THIS IN R FOR exactextractr 
#install.packages("https://cran.r-project.org/bin/macosx/big-sur-x86_64/contrib/4.3/exactextractr_0.10.0.tgz", repos=NULL, type="source")

# install.packages("exactextractr")

## WPP 
library(dplyr)
library(tidyr)
library(readr)
library(raster)
library(terra)
library(exactextractr)
library(gstat) # Use gstat's idw routine
library(sp) 
library(rgeos)
library(rgdal)
library(stars)
library(sf)
library(tidyverse)
library(dplyr)
library(stars)
library(ggplot2)

################################################################################
# Read shapefile
ea_fs <- readOGR("/Users/marinamastrorillo/Library/CloudStorage/OneDrive-CGIAR/Fundraising & General Presentations/AIR RFP for FEWS NET/Data/Food Insecurity/ALL_HFIC/ALL_HFIC/East Africa/","EA_200907_CS")
plot(ea_fs)

ea_fs <- st_read("/Users/marinamastrorillo/Library/CloudStorage/OneDrive-CGIAR/Fundraising & General Presentations/AIR RFP for FEWS NET/Data/Food Insecurity/ALL_HFIC/ALL_HFIC/East Africa/EA_200907_CS.shp")
