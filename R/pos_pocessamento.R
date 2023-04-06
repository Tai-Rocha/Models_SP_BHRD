######### Load pcks
library(raster)
library(rgdal)
library(rJava)
library(maptools)


################## Carregando shapefile da bacia 

BRD <- readOGR("D:/git_GITHUB/Luiza/data/shapefile/Bacia_Doce/Bacia_Doce.shp")

################## List and stack Projections of ensemble raw mean 

############
Present_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_present/Continuo_1",pattern = "tif", full.name = TRUE)

Present <- stack(Present_)

############

rcp45_CanESM2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_CanESM2/Continuo_1",pattern = "tif", full.name = TRUE)

rcp45_CanESM2 <- stack(rcp45_CanESM2_)

############

rcp45_HadGEM2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp45_HadGEM2/CONTI_MEAN_MEAN",pattern = "tif", full.name = TRUE)

rcp45_HadGEM2 <- stack(rcp45_HadGEM2_)

############

rcp45_MIROC_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp45_MIROC/CONTI_MEAN_MEAN",pattern = "tif", full.name = TRUE)

rcp45_MIROC <- stack(rcp45_MIROC_)

############

rcp85_CanESM2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp85_CanESM2/CONTI_MEAN_MEAN",pattern = "tif", full.name = TRUE)

rcp85_CanESM2 <- stack(rcp85_CanESM2_)

############

rcp85_HadGEM2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp85_HadGEM2/CONTI_MEAN_MEAN",pattern = "tif", full.name = TRUE)
rcp85_HadGEM2 <- stack(rcp85_HadGEM2_)

############

rcp85_MIROC_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp85_MIROC/CONTI_MEAN_MEAN",pattern = "tif", full.name = TRUE)
rcp85_MIROC <- stack(rcp85_MIROC_)

################################ Present

Present_BIN.raster <- Present >= 0.2 # Primeiro Binário (Binário 1) Treshold de 0.2 

Present_CONT_new <- Present_BIN.raster * Present # New continuous map based Previous binary (Binário 1). 
names(Present_CONT_new) <- names (Present)

Present_BIN.raster <-writeRaster(Present_BIN.raster, filename=names(Present_BIN.raster), bylayer=TRUE,format="GTiff") ### escrevendo e salvando o binario 1

Present_CONT_new <- writeRaster(Present_CONT_new,filename=names(Present_CONT_new),bylayer=TRUE,format="GTiff") ### escrevendo e salvando novo contínuo

# Segundo treshold (Binário 2) apartir do novo contínuo (Contínuo 2)
Present_NEW_CONT_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_present/New_CONT",pattern = "tif",
                       full.name = TRUE) 

Present_NEW_CONT <- stack(Present_NEW_CONT_)

Present_BIN_2 <- Present_NEW_CONT > 0

plot(Present_BIN_2)

Present_BIN_2 <- writeRaster(Present_BIN_2,filename=names(Present_BIN_2),bylayer=TRUE,format="GTiff") ## Escrevendo e salvando o Binário 2

#### Cortando para bacia as projeções do present 

############
Present_continuo1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_present/Continuo_1",pattern = "tif",full.name = TRUE)

Present_continuo1 <- stack(Present_continuo1_)

Present_continuo1_BRD <- crop(Present_continuo1, BRD)

Present_continuo1_BRD <- writeRaster(Present_continuo1_BRD,filename=names(Present_continuo1_BRD),bylayer=TRUE,format="GTiff")

############

Present_continuous2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_present/Continuo_2",pattern = "tif",full.name = TRUE)

Present_continuous2 <- stack(Present_continuous2_)

Present_continuous2_BRD <- crop (Present_continuous2, BRD)

Present_continuous2_BRD <- writeRaster(Present_continuous2_BRD,filename=names(Present_continuous2_BRD),bylayer=TRUE,format="GTiff")

############

Present_bin1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_present/Binario_1",pattern = "tif",full.name = TRUE)

Present_bin1 <- stack (Present_bin1_)

Present_bin1_BRD <- crop(Present_bin1, BRD)

Present_bin1_BRD <- writeRaster(Present_bin1_BRD,filename=names(Present_bin1_BRD),bylayer=TRUE,format="GTiff")

############

Present_bin2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_present/Binario_2",pattern = "tif",full.name = TRUE)

Present_bin2 <- stack(Present_bin2_)

Present_bin2_BRD <- crop (Present_bin2, BRD)

Present_bin2_BRD <- writeRaster(Present_bin2_BRD,filename=names(Present_bin2_BRD),bylayer=TRUE,format="GTiff")

################################ rcp45_CanESM2

############

rcp45_CanESM2_BIN.raster <- rcp45_CanESM2 >= 0.2 # Treshold de 0.2 to make binary

rcp45_CanESM2_CONT_new <- rcp45_CanESM2_BIN.raster * rcp45_CanESM2 # New continuous map based on 0.2 treshold. 
names(rcp45_CanESM2_CONT_new) <- names (rcp45_CanESM2)

rcp45_CanESM2_BIN.raster <-writeRaster(rcp45_CanESM2_BIN.raster, filename=names(rcp45_CanESM2_BIN.raster), bylayer=TRUE,format="GTiff")

rcp45_CanESM2_CONT_new <- writeRaster(rcp45_CanESM2_CONT_new,filename=names(rcp45_CanESM2_CONT_new),bylayer=TRUE,format="GTiff")

# Segundo treshold a partir do novo contínuo
rcp45_CanESM2_CONT_new_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp45_CanESM2/Continuo_2",pattern = "tif", full.name = TRUE) 

rcp45_CanESM2_CONT_new <- stack(rcp45_CanESM2_CONT_new_)

rcp45_CanESM2_CONT_BIN_2 <- rcp45_CanESM2_CONT_new > 0

plot(rcp45_CanESM2_CONT_BIN_2)

rcp45_CanESM2_CONT_BIN_2 <- writeRaster(rcp45_CanESM2_CONT_BIN_2,filename=names(rcp45_CanESM2_CONT_BIN_2),bylayer=TRUE,format="GTiff")


#### Cortando para bacia as projeções do rcp45_CanESM2 
############

rcp45_CanESM2_continuo1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_CanESM2/Continuo_1",pattern = "tif", full.name = TRUE)

rcp45_CanESM2_continuo1 <- stack(rcp45_CanESM2_continuo1_)

rcp45_CanESM2_continuo1_BRD <- crop(rcp45_CanESM2_continuo1, BRD)

rcp45_CanESM2_continuo1_BRD <- writeRaster(rcp45_CanESM2_continuo1_BRD,filename=names(rcp45_CanESM2_continuo1_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_CanESM2_continuous2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_CanESM2/Continuo_2",pattern = "tif",full.name = TRUE)

rcp45_CanESM2_continuous2 <- stack(rcp45_CanESM2_continuous2_)

rcp45_CanESM2_continuous2_BRD <- crop (rcp45_CanESM2_continuous2, BRD)

rcp45_CanESM2_continuous2_BRD <- writeRaster(rcp45_CanESM2_continuous2_BRD,filename=names(rcp45_CanESM2_continuous2_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_CanESM2_bin1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_CanESM2/Binario_1",pattern = "tif",full.name = TRUE)

rcp45_CanESM2_bin1 <- stack (rcp45_CanESM2_bin1_)

rcp45_CanESM2_bin1_BRD <- crop(rcp45_CanESM2_bin1, BRD)

rcp45_CanESM2_bin1_BRD <- writeRaster(rcp45_CanESM2_bin1_BRD,filename=names(rcp45_CanESM2_bin1_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_CanESM2_bin2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_CanESM2/Binario_2",pattern = "tif",full.name = TRUE)

rcp45_CanESM2_bin2 <- stack(rcp45_CanESM2_bin2_)

rcp45_CanESM2_bin2_BRD <- crop (rcp45_CanESM2_bin2, BRD)

rcp45_CanESM2_bin2_BRD <- writeRaster(rcp45_CanESM2_bin2_BRD,filename=names(rcp45_CanESM2_bin2_BRD),bylayer=TRUE,format="GTiff")

##################### rcp45_HadGEM2


rcp45_HadGEM2_BIN.raster <- rcp45_HadGEM2 >= 0.2 # Treshold de 0.2 to make binary

rcp45_HadGEM2_CONT_new <- rcp45_HadGEM2_BIN.raster * rcp45_HadGEM2 # New continuous map based on 0.2 treshold. 
names(rcp45_HadGEM2_CONT_new) <- names (rcp45_HadGEM2)

rcp45_HadGEM2_BIN.raster <-writeRaster(rcp45_HadGEM2_BIN.raster, filename=names(rcp45_HadGEM2_BIN.raster), bylayer=TRUE,format="GTiff")

rcp45_HadGEM2_CONT_new <- writeRaster(rcp45_HadGEM2_CONT_new,filename=names(rcp45_HadGEM2_CONT_new),bylayer=TRUE,format="GTiff")

# Segundo treshold a partir do novo contínuo
rcp45_HadGEM2_CONT_new_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp45_HadGEM2/Continuo_2",pattern = "tif", full.name = TRUE) 

rcp45_HadGEM2_CONT_new <- stack(rcp45_HadGEM2_CONT_new_)

rcp45_HadGEM2_CONT_BIN_2 <- rcp45_HadGEM2_CONT_new > 0

plot(rcp45_HadGEM2_CONT_BIN_2)

rcp45_HadGEM2_CONT_BIN_2 <- writeRaster(rcp45_HadGEM2_CONT_BIN_2,filename=names(rcp45_HadGEM2_CONT_BIN_2),bylayer=TRUE,format="GTiff")


#### Cortando para bacia as projeções do rcp45_HadGEM2
############

rcp45_HadGEM2_continuo1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_HadGEM2/Continuo_1",pattern = "tif", full.name = TRUE)

rcp45_HadGEM2_continuo1 <- stack(rcp45_HadGEM2_continuo1_)

rcp45_HadGEM2_continuo1_BRD <- crop(rcp45_HadGEM2_continuo1, BRD)

rcp45_HadGEM2_continuo1_BRD <- writeRaster(rcp45_HadGEM2_continuo1_BRD,filename=names(rcp45_HadGEM2_continuo1_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_HadGEM2_continuous2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_HadGEM2/Continuo_2",pattern = "tif",full.name = TRUE)

rcp45_HadGEM2_continuous2 <- stack(rcp45_HadGEM2_continuous2_)

rcp45_HadGEM2_continuous2_BRD <- crop (rcp45_HadGEM2_continuous2, BRD)

rcp45_HadGEM2_continuous2_BRD <- writeRaster(rcp45_HadGEM2_continuous2_BRD,filename=names(rcp45_HadGEM2_continuous2_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_HadGEM2_bin1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_HadGEM2/Binario_1",pattern = "tif",full.name = TRUE)

rcp45_HadGEM2_bin1 <- stack (rcp45_HadGEM2_bin1_)

rcp45_HadGEM2_bin1_BRD <- crop(rcp45_HadGEM2_bin1, BRD)

rcp45_HadGEM2_bin1_BRD <- writeRaster(rcp45_HadGEM2_bin1_BRD,filename=names(rcp45_HadGEM2_bin1_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_HadGEM2_bin2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_HadGEM2/Binario_2",pattern = "tif",full.name = TRUE)

rcp45_HadGEM2_bin2 <- stack(rcp45_HadGEM2_bin2_)

rcp45_HadGEM2_bin2_BRD <- crop (rcp45_HadGEM2_bin2, BRD)

rcp45_HadGEM2_bin2_BRD <- writeRaster(rcp45_HadGEM2_bin2_BRD,filename=names(rcp45_HadGEM2_bin2_BRD),bylayer=TRUE,format="GTiff")


##################### rcp45_MIROC


rcp45_MIROC_BIN.raster <- rcp45_MIROC >= 0.2 # Treshold de 0.2 to make binary

rcp45_MIROC_CONT_new <- rcp45_MIROC_BIN.raster * rcp45_MIROC # New continuous map based on 0.2 treshold. 
names(rcp45_MIROC_CONT_new) <- names (rcp45_MIROC)

rcp45_MIROC_BIN.raster <-writeRaster(rcp45_MIROC_BIN.raster, filename=names(rcp45_MIROC_BIN.raster), bylayer=TRUE,format="GTiff")

rcp45_MIROC_CONT_new <- writeRaster(rcp45_MIROC_CONT_new,filename=names(rcp45_MIROC_CONT_new),bylayer=TRUE,format="GTiff")


# Segundo treshold a partir do novo contínuo
rcp45_MIROC_CONT_new_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp45_MIROC/Continuo_2",pattern = "tif",  full.name = TRUE) 

rcp45_MIROC_CONT_new <- stack(rcp45_MIROC_CONT_new_)

rcp45_MIROC_CONT_BIN_2 <- rcp45_MIROC_CONT_new > 0

plot(rcp45_MIROC_CONT_BIN_2)

rcp45_MIROC_CONT_BIN_2 <- writeRaster(rcp45_MIROC_CONT_BIN_2,filename=names(rcp45_MIROC_CONT_BIN_2),bylayer=TRUE,format="GTiff")



#### Cortando para bacia as projeções do rcp45_MIROC 
############

rcp45_MIROC_continuo1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_MIROC/Continuo_1",pattern = "tif", full.name = TRUE)

rcp45_MIROC_continuo1 <- stack(rcp45_MIROC_continuo1_)

rcp45_MIROC_continuo1_BRD <- crop(rcp45_MIROC_continuo1, BRD)

rcp45_MIROC_continuo1_BRD <- writeRaster(rcp45_MIROC_continuo1_BRD,filename=names(rcp45_MIROC_continuo1_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_MIROC_continuous2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_MIROC/Continuo_2",pattern = "tif",full.name = TRUE)

rcp45_MIROC_continuous2 <- stack(rcp45_MIROC_continuous2_)

rcp45_MIROC_continuous2_BRD <- crop (rcp45_MIROC_continuous2, BRD)

rcp45_MIROC_continuous2_BRD <- writeRaster(rcp45_MIROC_continuous2_BRD,filename=names(rcp45_MIROC_continuous2_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_MIROC_bin1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_MIROC/Binario_1",pattern = "tif",full.name = TRUE)

rcp45_MIROC_bin1 <- stack (rcp45_MIROC_bin1_)

rcp45_MIROC_bin1_BRD <- crop(rcp45_MIROC_bin1, BRD)

rcp45_MIROC_bin1_BRD <- writeRaster(rcp45_MIROC_bin1_BRD,filename=names(rcp45_MIROC_bin1_BRD),bylayer=TRUE,format="GTiff")

############

rcp45_MIROC_bin2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp45_MIROC/Binario_2",pattern = "tif",full.name = TRUE)

rcp45_MIROC_bin2 <- stack(rcp45_MIROC_bin2_)

rcp45_MIROC_bin2_BRD <- crop (rcp45_MIROC_bin2, BRD)

rcp45_MIROC_bin2_BRD <- writeRaster(rcp45_MIROC_bin2_BRD,filename=names(rcp45_MIROC_bin2_BRD),bylayer=TRUE,format="GTiff")

################################ rcp85_CanESM2


rcp85_CanESM2_BIN.raster <- rcp85_CanESM2 >= 0.2 # Treshold de 0.2 to make binary

rcp85_CanESM2_CONT_new <- rcp85_CanESM2_BIN.raster * rcp85_CanESM2 # New continuous map based on 0.2 treshold. 
names(rcp85_CanESM2_CONT_new) <- names (rcp85_CanESM2)

rcp85_CanESM2_BIN.raster <-writeRaster(rcp85_CanESM2_BIN.raster, filename=names(rcp85_CanESM2_BIN.raster), bylayer=TRUE,format="GTiff")

rcp85_CanESM2_CONT_new <- writeRaster(rcp85_CanESM2_CONT_new,filename=names(rcp85_CanESM2_CONT_new),bylayer=TRUE,format="GTiff")

#### Segundo treshold a partir do novo contínuo
rcp85_CanESM2_CONT_new_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp85_CanESM2/Continuo_2",pattern = "tif", full.name = TRUE) 

rcp85_CanESM2_CONT_new <- stack(rcp85_CanESM2_CONT_new_)

rcp85_CanESM2_CONT_BIN_2 <- rcp85_CanESM2_CONT_new > 0

plot(rcp85_CanESM2_CONT_BIN_2)

rcp85_CanESM2_CONT_BIN_2 <- writeRaster(rcp85_CanESM2_CONT_BIN_2,filename=names(rcp85_CanESM2_CONT_BIN_2),bylayer=TRUE,format="GTiff")


#### Cortando para bacia as projeções do rcp85_CanESM2 
############

rcp85_CanESM2_continuo1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_CanESM2/Continuo_1",pattern = "tif", full.name = TRUE)

rcp85_CanESM2_continuo1 <- stack(rcp85_CanESM2_continuo1_)

rcp85_CanESM2_continuo1_BRD <- crop(rcp85_CanESM2_continuo1, BRD)

rcp85_CanESM2_continuo1_BRD <- writeRaster(rcp85_CanESM2_continuo1_BRD,filename=names(rcp85_CanESM2_continuo1_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_CanESM2_continuous2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_CanESM2/Continuo_2",pattern = "tif",full.name = TRUE)

rcp85_CanESM2_continuous2 <- stack(rcp85_CanESM2_continuous2_)

rcp85_CanESM2_continuous2_BRD <- crop (rcp85_CanESM2_continuous2, BRD)

rcp85_CanESM2_continuous2_BRD <- writeRaster(rcp85_CanESM2_continuous2_BRD,filename=names(rcp85_CanESM2_continuous2_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_CanESM2_bin1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_CanESM2/Binario_1",pattern = "tif",full.name = TRUE)

rcp85_CanESM2_bin1 <- stack (rcp85_CanESM2_bin1_)

rcp85_CanESM2_bin1_BRD <- crop(rcp85_CanESM2_bin1, BRD)

rcp85_CanESM2_bin1_BRD <- writeRaster(rcp85_CanESM2_bin1_BRD,filename=names(rcp85_CanESM2_bin1_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_CanESM2_bin2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_CanESM2/Binario_2",pattern = "tif",full.name = TRUE)

rcp85_CanESM2_bin2 <- stack(rcp85_CanESM2_bin2_)

rcp85_CanESM2_bin2_BRD <- crop (rcp85_CanESM2_bin2, BRD)

rcp85_CanESM2_bin2_BRD <- writeRaster(rcp85_CanESM2_bin2_BRD,filename=names(rcp85_CanESM2_bin2_BRD),bylayer=TRUE,format="GTiff")


##################### rcp85_HadGEM2


rcp85_HadGEM2_BIN.raster <- rcp85_HadGEM2 >= 0.2 # Treshold de 0.2 to make binary

rcp85_HadGEM2_CONT_new <- rcp85_HadGEM2_BIN.raster * rcp85_HadGEM2 # New continuous map based on 0.2 treshold. 
names(rcp85_HadGEM2_CONT_new) <- names (rcp85_HadGEM2)

rcp85_HadGEM2_BIN.raster <-writeRaster(rcp85_HadGEM2_BIN.raster, filename=names(rcp85_HadGEM2_BIN.raster), bylayer=TRUE,format="GTiff")

rcp85_HadGEM2_CONT_new <- writeRaster(rcp85_HadGEM2_CONT_new,filename=names(rcp85_HadGEM2_CONT_new),bylayer=TRUE,format="GTiff")

# Segundo treshold a partir do novo contínuo
rcp85_HadGEM2_CONT_new_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp85_HadGEM2/Continuo_2",pattern = "tif",
                                      full.name = TRUE) 

rcp85_HadGEM2_CONT_new <- stack(rcp85_HadGEM2_CONT_new_)

rcp85_HadGEM2_CONT_BIN_2 <- rcp85_HadGEM2_CONT_new > 0

plot(rcp85_HadGEM2_CONT_BIN_2)

rcp85_HadGEM2_CONT_BIN_2 <- writeRaster(rcp85_HadGEM2_CONT_BIN_2,filename=names(rcp85_HadGEM2_CONT_BIN_2),bylayer=TRUE,format="GTiff")


#### Cortando para bacia as projeções do rcp85_HadGEM2
############

rcp85_HadGEM2_continuo1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_HadGEM2/Continuo_1",pattern = "tif", full.name = TRUE)

rcp85_HadGEM2_continuo1 <- stack(rcp85_HadGEM2_continuo1_)

rcp85_HadGEM2_continuo1_BRD <- crop(rcp85_HadGEM2_continuo1, BRD)

rcp85_HadGEM2_continuo1_BRD <- writeRaster(rcp85_HadGEM2_continuo1_BRD,filename=names(rcp85_HadGEM2_continuo1_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_HadGEM2_continuous2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_HadGEM2/Continuo_2",pattern = "tif",full.name = TRUE)

rcp85_HadGEM2_continuous2 <- stack(rcp85_HadGEM2_continuous2_)

rcp85_HadGEM2_continuous2_BRD <- crop (rcp85_HadGEM2_continuous2, BRD)

rcp85_HadGEM2_continuous2_BRD <- writeRaster(rcp85_HadGEM2_continuous2_BRD,filename=names(rcp85_HadGEM2_continuous2_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_HadGEM2_bin1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_HadGEM2/Binario_1",pattern = "tif",full.name = TRUE)

rcp85_HadGEM2_bin1 <- stack (rcp85_HadGEM2_bin1_)

rcp85_HadGEM2_bin1_BRD <- crop(rcp85_HadGEM2_bin1, BRD)

rcp85_HadGEM2_bin1_BRD <- writeRaster(rcp85_HadGEM2_bin1_BRD,filename=names(rcp85_HadGEM2_bin1_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_HadGEM2_bin2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_HadGEM2/Binario_2",pattern = "tif",full.name = TRUE)

rcp85_HadGEM2_bin2 <- stack(rcp85_HadGEM2_bin2_)

rcp85_HadGEM2_bin2_BRD <- crop (rcp85_HadGEM2_bin2, BRD)

rcp85_HadGEM2_bin2_BRD <- writeRaster(rcp85_HadGEM2_bin2_BRD,filename=names(rcp85_HadGEM2_bin2_BRD),bylayer=TRUE,format="GTiff")


##################### rcp85_MIROC

rcp85_MIROC_BIN.raster <- rcp85_MIROC >= 0.2 # Treshold de 0.2 to make binary

rcp85_MIROC_CONT_new <- rcp85_MIROC_BIN.raster * rcp85_MIROC # New continuous map based on 0.2 treshold. 
names(rcp85_MIROC_CONT_new) <- names (rcp85_MIROC)

rcp85_MIROC_BIN.raster <-writeRaster(rcp85_MIROC_BIN.raster, filename=names(rcp85_MIROC_BIN.raster), bylayer=TRUE,format="GTiff")

rcp85_MIROC_CONT_new <- writeRaster(rcp85_MIROC_CONT_new,filename=names(rcp85_MIROC_CONT_new),bylayer=TRUE,format="GTiff")

# Segundo treshold a partir do novo contínuo
rcp85_MIROC_CONT_new_ <- list.files("D:/git_GITHUB/Luiza/Results_ens/Results_ensemble_rcp85_MIROC/Continuo_2",pattern = "tif",
                                    full.name = TRUE) 

rcp85_MIROC_CONT_new <- stack(rcp85_MIROC_CONT_new_)

rcp85_MIROC_CONT_BIN_2 <- rcp85_MIROC_CONT_new > 0

plot(rcp85_MIROC_CONT_BIN_2)

rcp85_MIROC_CONT_BIN_2 <- writeRaster(rcp85_MIROC_CONT_BIN_2,filename=names(rcp85_MIROC_CONT_BIN_2),bylayer=TRUE,format="GTiff")


#### Cortando para bacia as projeções do rcp85_MIROC 
############

rcp85_MIROC_continuo1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_MIROC/Continuo_1",pattern = "tif", full.name = TRUE)

rcp85_MIROC_continuo1 <- stack(rcp85_MIROC_continuo1_)

rcp85_MIROC_continuo1_BRD <- crop(rcp85_MIROC_continuo1, BRD)

rcp85_MIROC_continuo1_BRD <- writeRaster(rcp85_MIROC_continuo1_BRD,filename=names(rcp85_MIROC_continuo1_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_MIROC_continuous2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_MIROC/Continuo_2",pattern = "tif",full.name = TRUE)

rcp85_MIROC_continuous2 <- stack(rcp85_MIROC_continuous2_)

rcp85_MIROC_continuous2_BRD <- crop (rcp85_MIROC_continuous2, BRD)

rcp85_MIROC_continuous2_BRD <- writeRaster(rcp85_MIROC_continuous2_BRD,filename=names(rcp85_MIROC_continuous2_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_MIROC_bin1_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_MIROC/Binario_1",pattern = "tif",full.name = TRUE)

rcp85_MIROC_bin1 <- stack (rcp85_MIROC_bin1_)

rcp85_MIROC_bin1_BRD <- crop(rcp85_MIROC_bin1, BRD)

rcp85_MIROC_bin1_BRD <- writeRaster(rcp85_MIROC_bin1_BRD,filename=names(rcp85_MIROC_bin1_BRD),bylayer=TRUE,format="GTiff")

############

rcp85_MIROC_bin2_ <- list.files("D:/git_GITHUB/Luiza/Results_ens_mean/Results_ensemble_rcp85_MIROC/Binario_2",pattern = "tif",full.name = TRUE)

rcp85_MIROC_bin2 <- stack(rcp85_MIROC_bin2_)

rcp85_MIROC_bin2_BRD <- crop (rcp85_MIROC_bin2, BRD)

rcp85_MIROC_bin2_BRD <- writeRaster(rcp85_MIROC_bin2_BRD,filename=names(rcp85_MIROC_bin2_BRD),bylayer=TRUE,format="GTiff")