
### Library pck

library(dismo)
library(rgdal)
library(modleR)
library(raster)
library(rJava)
library(maptools)

## Read and load the .shp file 
bc <- readOGR("D:/git_GITHUB/Luiza/data/shapefile/Bacia_Doce/Bacia_Doce.shp")

##### Algo uncertainty

Present_Uncertainty_ <- list.files("D:/git_GITHUB/Luiza/Results_range/algorithms_uncertainty",pattern = "tif", full.name = TRUE)

Present_Uncertainty <- stack(Present_Uncertainty_)

Present_Uncertainty_BRD <- crop(Present_Uncertainty,bc)

Present_Uncertainty_BRD <- writeRaster(Present_Uncertainty_BRD,filename=names(Present_Uncertainty_BRD),bylayer=TRUE,format="GTiff")


######## Ensemble range
ENSEMBLE_RANGE_Present_ <- list.files("D:/git_GITHUB/Luiza/Results_range/ensemble_range",pattern = "tif", full.name = TRUE)

ENSEMBLE_RANGE_Present <- stack(ENSEMBLE_RANGE_Present_)

ENSEMBLE_RANGE_Present_BRD <- crop(ENSEMBLE_RANGE_Present,bc)

ENSEMBLE_RANGE_Present_BRD <- writeRaster(ENSEMBLE_RANGE_Present_BRD,filename=names(ENSEMBLE_RANGE_Present_BRD),bylayer=TRUE,format="GTiff")


