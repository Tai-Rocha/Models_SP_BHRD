#### Ensemble Média Simples  #####

# Carregando pacotes
library(parallel)
library(foreach)
library(doParallel)
require(raster)
library(rgdal)
library(dismo)
library(rJava)
library(kernlab)
library(randomForest)
library(maptools)
library(plyr)

################################################ Almeidea_rubra rcp45_canesm  #########################################################

almeidea_rubra_1 <- list.files(path = "D:/lu/models/almeidea_rubra/rcp45_canesm",	
                               pattern = "tif",
                               full.name = TRUE)

### Ver a lista
almeidea_rubra_1

###### Transformar em objeto

ar1 <- stack(almeidea_rubra_1)


### Plotar
plot(ar1)

ar1

### Função para interpolação linear (reescalar 0-1)


if(
  length(ar1)!= 0 
){
  for(z in 1:length(ar1)){
    adeq = ar1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    ar1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plotar

plot (ar1)
ar1
### Média simples

almedea_rubra_media_1 <- mean(ar1)

almedea_rubra_media_1

### Escrever o raster final


writeRaster(almedea_rubra_media_1, file = paste('D:/lu/models/almeidea_rubra/rcp45_canesm/alemedea_rubra_media_1', '.tif', sep=""))



################################################ Almeidea_rubra_ rcp45_hadgem #########################################################

almeidea_rubra_2 <- list.files(path = "D:/lu/models/almeidea_rubra/rcp45_hadgem",	
                               pattern = "tif",
                               full.name = TRUE)

### Ver a lista
almeidea_rubra_2

### Transformar em objeto

ar2 <- stack(almeidea_rubra_2)


### Plotar
plot(ar2)

ar2

###  Função para interpolação linear (reescalar 0-1)


if(
  length(ar2)!= 0 
){
  for(z in 1:length(ar2)){
    adeq = ar2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    ar2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plotar

plot (ar2)
ar2
#### Média simples

almedea_rubra_media_2 <- mean(ar2)

almedea_rubra_media_2


####  Escrever o raster final


writeRaster(almedea_rubra_media_2, file = paste('D:/lu/models/almeidea_rubra/rcp45_hadgem/alemedea_rubra_media_2', '.tif', sep=""))

################################################ Almeidea_rubra rcp45_miroc  #########################################################

almeidea_rubra_3 <- list.files(path = "D:/lu/models/almeidea_rubra/rcp45_miroc",	
                               pattern = "tif",
                               full.name = TRUE)

### Ver a lista
almeidea_rubra_3

### Transformar em objeto

ar3 <- stack(almeidea_rubra_3)


####  Plotar
plot(ar3)

ar3

#### Função para interpolação linear (reescalar 0-1)


if(
  length(ar3)!= 0 
){
  for(z in 1:length(ar3)){
    adeq = ar3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    ar3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plotar

plot (ar3)
ar3
###  Média simples

almedea_rubra_3 <- mean(ar3)

almedea_rubra_3

###  Escrever o raster final


writeRaster(almedea_rubra_3, file = paste('D:/lu/models/almeidea_rubra/rcp45_miroc/alemedea_rubra_media_3', '.tif', sep=""))






################################################ Casecdia_decandra rcp45_canesm  #########################################################

casecdia_decandra_1 <- list.files(path = "D:/lu/models/casearia_decandra/rcp45_canesm",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
casecdia_decandra_1

###### Transformar em objeto

cd1 <- stack(casecdia_decandra_1)


### Plotcd
plot(cd1)

cd1

### Função pcda interpolação linear (reescalar 0-1)


if(
  length(cd1)!= 0 
){
  for(z in 1:length(cd1)){
    adeq = cd1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    cd1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plotcd

plot (cd1)
cd1
### Média simples

casecdia_decandra_media_1 <- mean(cd1)

casecdia_decandra_media_1

### Escrever o raster final


writeRaster(casecdia_decandra_media_1, file = paste('D:/lu/models/casearia_decandra/rcp45_canesm/casecdia_decandra_media_1', '.tif', sep=""))



################################################ casecdia_decandra_ rcp45_hadgem #########################################################

casecdia_decandra_2 <- list.files(path = "D:/lu/models/casearia_decandra/rcp45_hadgem",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
casecdia_decandra_2

### Transformar em objeto

cd2 <- stack(casecdia_decandra_2)


### Plotcd
plot(cd2)

cd2

###  Função pcda interpolação linear (reescalar 0-1)


if(
  length(cd2)!= 0 
){
  for(z in 1:length(cd2)){
    adeq = cd2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    cd2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plotcd

plot (cd2)
cd2
#### Média simples

casecdia_decandra_media_2 <- mean(cd2)

casecdia_decandra_media_2


####  Escrever o raster final


writeRaster(casecdia_decandra_media_2, file = paste('D:/lu/models/casearia_decandra/rcp45_hadgem/casecdia_decandra_media_2', '.tif', sep=""))



################################################ casecdia_decandra rcp45_miroc  #########################################################

casecdia_decandra_3 <- list.files(path = "D:/lu/models/casearia_decandra/rcp45_miroc",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
casecdia_decandra_3

### Transformar em objeto

cd3 <- stack(casecdia_decandra_3)


####  Plotcd
plot(cd3)

cd3

#### Função pcda interpolação linear (reescalar 0-1)


if(
  length(cd3)!= 0 
){
  for(z in 1:length(cd3)){
    adeq = cd3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    cd3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plotcd

plot (cd3)
cd3
###  Média simples

casecdia_decandra_3 <- mean(cd3)

casecdia_decandra_3

###  Escrever o raster final


writeRaster(casecdia_decandra_3, file = paste('D:/lu/models/casearia_decandra/rcp45_miroc/casecdia_decandra_media_3', '.tif', sep=""))



################################################ Gaylussacia_salicifolia rcp45_canesm  #########################################################

gaylussacia_salicifolia_1 <- list.files(path = "D:/lu/models/gaylussacia_salicifolia/rcp45_canesm",	
                                        pattern = "tif",
                                        full.name = TRUE)

### Ver a lista
gaylussacia_salicifolia_1

###### Transformar em objeto

gs1 <- stack(gaylussacia_salicifolia_1)


### Plotgs
plot(gs1)

gs1

### Função pgsa interpolação linear (reescalar 0-1)


if(
  length(gs1)!= 0 
){
  for(z in 1:length(gs1)){
    adeq = gs1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    gs1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plotgs

plot (gs1)
gs1
### Média simples

gaylussacia_salicifolia_media_1 <- mean(gs1)

gaylussacia_salicifolia_media_1

### Escrever o raster final


writeRaster(gaylussacia_salicifolia_media_1, file = paste('D:/lu/models/gaylussacia_salicifolia/rcp45_canesm/gaylussacia_salicifolia_media_1', '.tif', sep=""))



################################################ gaylussacia_salicifolia_ rcp45_hadgem #########################################################

gaylussacia_salicifolia_2 <- list.files(path = "D:/lu/models/gaylussacia_salicifolia/rcp45_hadgem",	
                                        pattern = "tif",
                                        full.name = TRUE)

### Ver a lista
gaylussacia_salicifolia_2

### Transformar em objeto

gs2 <- stack(gaylussacia_salicifolia_2)


### Plotgs
plot(gs2)

gs2

###  Função pgsa interpolação linear (reescalar 0-1)


if(
  length(gs2)!= 0 
){
  for(z in 1:length(gs2)){
    adeq = gs2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    gs2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plotgs

plot (gs2)
gs2
#### Média simples

gaylussacia_salicifolia_media_2 <- mean(gs2)

gaylussacia_salicifolia_media_2


####  Escrever o raster final


writeRaster(gaylussacia_salicifolia_media_2, file = paste('D:/lu/models/gaylussacia_salicifolia/rcp45_hadgem/gaylussacia_salicifolia_media_2', '.tif', sep=""))



################################################ gaylussacia_salicifolia rcp45_miroc  #########################################################

gaylussacia_salicifolia_3 <- list.files(path = "D:/lu/models/gaylussacia_salicifolia/rcp45_miroc",	
                                        pattern = "tif",
                                        full.name = TRUE)

### Ver a lista
gaylussacia_salicifolia_3

### Transformar em objeto

gs3 <- stack(gaylussacia_salicifolia_3)


####  Plotgs
plot(gs3)

gs3

#### Função pgsa interpolação linear (reescalar 0-1)


if(
  length(gs3)!= 0 
){
  for(z in 1:length(gs3)){
    adeq = gs3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    gs3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plotgs

plot (gs3)
gs3
###  Média simples

gaylussacia_salicifolia_3 <- mean(gs3)

gaylussacia_salicifolia_3

###  Escrever o raster final


writeRaster(gaylussacia_salicifolia_3, file = paste('D:/lu/models/gaylussacia_salicifolia/rcp45_miroc/gaylussacia_salicifolia_media_3', '.tif', sep=""))




################################################ hillia_parasitica rcp45_canesm  #########################################################

hillia_parasitica_1 <- list.files(path = "D:/lu/models/hillia_parasitica/rcp45_canesm",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
hillia_parasitica_1

###### Transformar em objeto

hp1 <- stack(hillia_parasitica_1)


### Plothp
plot(hp1)

hp1

### Função phpa interpolação linear (reescalar 0-1)


if(
  length(hp1)!= 0 
){
  for(z in 1:length(hp1)){
    adeq = hp1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    hp1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plothp

plot (hp1)
hp1
### Média simples

hillia_parasitica_media_1 <- mean(hp1)

hillia_parasitica_media_1

### Escrever o raster final


writeRaster(hillia_parasitica_media_1, file = paste('D:/lu/models/hillia_parasitica/rcp45_canesm/hillia_parasitica_media_1', '.tif', sep=""))



################################################ hillia_parasitica_ rcp45_hadgem #########################################################

hillia_parasitica_2 <- list.files(path = "D:/lu/models/hillia_parasitica/rcp45_hadgem",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
hillia_parasitica_2

### Transformhp em objeto

hp2 <- stack(hillia_parasitica_2)


### Plothp
plot(hp2)

hp2

###  Função phpa interpolação linear (reescalar 0-1)


if(
  length(hp2)!= 0 
){
  for(z in 1:length(hp2)){
    adeq = hp2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    hp2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plothp

plot (hp2)
hp2
#### Média simples

hillia_parasitica_media_2 <- mean(hp2)

hillia_parasitica_media_2


####  Escrever o raster final


writeRaster(hillia_parasitica_media_2, file = paste('D:/lu/models/hillia_parasitica/rcp45_hadgem/hillia_parasitica_media_2', '.tif', sep=""))



################################################ hillia_parasitica rcp45_miroc  #########################################################

hillia_parasitica_3 <- list.files(path = "D:/lu/models/hillia_parasitica/rcp45_miroc",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
hillia_parasitica_3

### Transformhp em objeto

hp3 <- stack(hillia_parasitica_3)


####  Plothp
plot(hp3)

hp3

#### Função phpa interpolação linear (reescalar 0-1)


if(
  length(hp3)!= 0 
){
  for(z in 1:length(hp3)){
    adeq = hp3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    hp3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plothp

plot (hp3)
hp3
###  Média simples

hillia_parasitica_3 <- mean(hp3)

hillia_parasitica_3

###  Escrever o raster final


writeRaster(hillia_parasitica_3, file = paste('D:/lu/models/hillia_parasitica/rcp45_miroc/hillia_parasitica_media_3', '.tif', sep=""))


################################################ hololepis_pedunculata rcp45_canesm  #########################################################

hololepis_pedunculata_1 <- list.files(path = "D:/lu/models/hololepis_pedunculata/rcp45_canesm",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
hololepis_pedunculata_1

###### Transformar em objeto

hope1 <- stack(hololepis_pedunculata_1)


### Plothope
plot(hope1)

hope1

### Função phopea interpolação linear (reescalar 0-1)


if(
  length(hope1)!= 0 
){
  for(z in 1:length(hope1)){
    adeq = hope1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    hope1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plothope

plot (hope1)
hope1
### Média simples

hololepis_pedunculata_media_1 <- mean(hope1)

hololepis_pedunculata_media_1

### Escrever o raster final


writeRaster(hololepis_pedunculata_media_1, file = paste('D:/lu/models/hololepis_pedunculata/rcp45_canesm/hololepis_pedunculata_media_1', '.tif', sep=""))



################################################ hololepis_pedunculata_ rcp45_hadgem #########################################################

hololepis_pedunculata_2 <- list.files(path = "D:/lu/models/hololepis_pedunculata/rcp45_hadgem",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
hololepis_pedunculata_2

### Transformhope em objeto

hope2 <- stack(hololepis_pedunculata_2)


### Plothope
plot(hope2)

hope2

###  Função phopea interpolação linear (reescalar 0-1)


if(
  length(hope2)!= 0 
){
  for(z in 1:length(hope2)){
    adeq = hope2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    hope2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plothope

plot (hope2)
hope2
#### Média simples

hololepis_pedunculata_media_2 <- mean(hope2)

hololepis_pedunculata_media_2


####  Escrever o raster final


writeRaster(hololepis_pedunculata_media_2, file = paste('D:/lu/models/hololepis_pedunculata/rcp45_hadgem/hololepis_pedunculata_media_2', '.tif', sep=""))



################################################ hololepis_pedunculata rcp45_miroc  #########################################################

hololepis_pedunculata_3 <- list.files(path = "D:/lu/models/hololepis_pedunculata/rcp45_miroc",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
hololepis_pedunculata_3

### Transformhope em objeto

hope3 <- stack(hololepis_pedunculata_3)


####  Plothope
plot(hope3)

hope3

#### Função phopea interpolação linear (reescalar 0-1)


if(
  length(hope3)!= 0 
){
  for(z in 1:length(hope3)){
    adeq = hope3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    hope3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plothope

plot (hope3)
hope3
###  Média simples

hololepis_pedunculata_3 <- mean(hope3)

hololepis_pedunculata_3

###  Escrever o raster final


writeRaster(hololepis_pedunculata_3, file = paste('D:/lu/models/hololepis_pedunculata/rcp45_miroc/hololepis_pedunculata_media_3', '.tif', sep=""))



################################################ ilex_dumosa rcp45_canesm  #########################################################

ilex_dumosa_1 <- list.files(path = "D:/lu/models/ilex_dumosa/rcp45_canesm",	
                                      pattern = "tif",
                                      full.name = TRUE)

### Ver a lista
ilex_dumosa_1

###### Transformar em objeto raster

id1 <- stack(ilex_dumosa_1)


### Plotid
plot(id1)

id1

### Função de interpolação linear (reescalar 0-1)


if(
  length(id1)!= 0 
){
  for(z in 1:length(id1)){
    adeq = id1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    id1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plotid

plot (id1)
id1
### Média simples

ilex_dumosa_media_1 <- mean(id1)

ilex_dumosa_media_1

### Escrever o raster final


writeRaster(ilex_dumosa_media_1, file = paste('D:/lu/models/ilex_dumosa/rcp45_canesm/ilex_dumosa_media_1', '.tif', sep=""))



################################################ ilex_dumosa_ rcp45_hadgem #########################################################

ilex_dumosa_2 <- list.files(path = "D:/lu/models/ilex_dumosa/rcp45_hadgem",	
                                      pattern = "tif",
                                      full.name = TRUE)

### Ver a lista
ilex_dumosa_2

### Transformid em objeto

id2 <- stack(ilex_dumosa_2)


### Plotid
plot(id2)

id2

###  Função pida interpolação linear (reescalar 0-1)


if(
  length(id2)!= 0 
){
  for(z in 1:length(id2)){
    adeq = id2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    id2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plotid

plot (id2)
id2
#### Média simples

ilex_dumosa_media_2 <- mean(id2)

ilex_dumosa_media_2


####  Escrever o raster final


writeRaster(ilex_dumosa_media_2, file = paste('D:/lu/models/ilex_dumosa/rcp45_hadgem/ilex_dumosa_media_2', '.tif', sep=""))



################################################ ilex_dumosa rcp45_miroc  #########################################################

ilex_dumosa_3 <- list.files(path = "D:/lu/models/ilex_dumosa/rcp45_miroc",	
                                      pattern = "tif",
                                      full.name = TRUE)

### Ver a lista
ilex_dumosa_3

### Transformid em objeto

id3 <- stack(ilex_dumosa_3)


####  Plotid
plot(id3)

id3

#### Função pida interpolação linear (reescalar 0-1)


if(
  length(id3)!= 0 
){
  for(z in 1:length(id3)){
    adeq = id3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    id3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plotid

plot (id3)
id3
###  Média simples

ilex_dumosa_3 <- mean(id3)

ilex_dumosa_3

###  Escrever o raster final


writeRaster(ilex_dumosa_3, file = paste('D:/lu/models/ilex_dumosa/rcp45_miroc/ilex_dumosa_media_3', '.tif', sep=""))


################################################ jacaranda_puberula rcp45_canesm  #########################################################

jacaranda_puberula_1 <- list.files(path = "D:/lu/models/jacaranda_puberula/rcp45_canesm",	
                            pattern = "tif",
                            full.name = TRUE)

### Ver a lista
jacaranda_puberula_1

###### Transformar em objeto raster

jp1 <- stack(jacaranda_puberula_1)


### Plotjp
plot(jp1)

jp1

### Função de interpolação linear (reescalar 0-1)


if(
  length(jp1)!= 0 
){
  for(z in 1:length(jp1)){
    adeq = jp1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    jp1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plotjp

plot (jp1)
jp1
### Média simples

jacaranda_puberula_media_1 <- mean(jp1)

jacaranda_puberula_media_1

### Escrever o raster final


writeRaster(jacaranda_puberula_media_1, file = paste('D:/lu/models/jacaranda_puberula/rcp45_canesm/jacaranda_puberula_media_1', '.tif', sep=""))



################################################ jacaranda_puberula_ rcp45_hadgem #########################################################

jacaranda_puberula_2 <- list.files(path = "D:/lu/models/jacaranda_puberula/rcp45_hadgem",	
                            pattern = "tif",
                            full.name = TRUE)

### Ver a lista
jacaranda_puberula_2

### Transformjp em objeto

jp2 <- stack(jacaranda_puberula_2)


### Plotjp
plot(jp2)

jp2

###  Função pjpa interpolação linear (reescalar 0-1)


if(
  length(jp2)!= 0 
){
  for(z in 1:length(jp2)){
    adeq = jp2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    jp2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plotjp

plot (jp2)
jp2
#### Média simples

jacaranda_puberula_media_2 <- mean(jp2)

jacaranda_puberula_media_2


####  Escrever o raster final


writeRaster(jacaranda_puberula_media_2, file = paste('D:/lu/models/jacaranda_puberula/rcp45_hadgem/jacaranda_puberula_media_2', '.tif', sep=""))



################################################ jacaranda_puberula rcp45_miroc  #########################################################

jacaranda_puberula_3 <- list.files(path = "D:/lu/models/jacaranda_puberula/rcp45_miroc",	
                            pattern = "tif",
                            full.name = TRUE)

### Ver a lista
jacaranda_puberula_3

### Transformjp em objeto

jp3 <- stack(jacaranda_puberula_3)


####  Plotjp
plot(jp3)

jp3

#### Função pjpa interpolação linear (reescalar 0-1)


if(
  length(jp3)!= 0 
){
  for(z in 1:length(jp3)){
    adeq = jp3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    jp3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plotjp

plot (jp3)
jp3
###  Média simples

jacaranda_puberula_3 <- mean(jp3)

jacaranda_puberula_3

###  Escrever o raster final


writeRaster(jacaranda_puberula_3, file = paste('D:/lu/models/jacaranda_puberula/rcp45_miroc/jacaranda_puberula_media_3', '.tif', sep=""))


################################################ miconia_ligustroides rcp45_canesm  #########################################################

miconia_ligustroides_1 <- list.files(path = "D:/lu/models/miconia_ligustroides/rcp45_canesm",	
                                   pattern = "tif",
                                   full.name = TRUE)

### Ver a lista
miconia_ligustroides_1

###### Transformar em objeto raster

mili1 <- stack(miconia_ligustroides_1)


### Plotmili
plot(mili1)

mili1

### Função de interpolação linear (reescalar 0-1)


if(
  length(mili1)!= 0 
){
  for(z in 1:length(mili1)){
    adeq = mili1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mili1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plotmili

plot (mili1)
mili1
### Média simples

miconia_ligustroides_media_1 <- mean(mili1)

miconia_ligustroides_media_1

### Escrever o raster final


writeRaster(miconia_ligustroides_media_1, file = paste('D:/lu/models/miconia_ligustroides/rcp45_canesm/miconia_ligustroides_media_1', '.tif', sep=""))



################################################ miconia_ligustroides_ rcp45_hadgem #########################################################

miconia_ligustroides_2 <- list.files(path = "D:/lu/models/miconia_ligustroides/rcp45_hadgem",	
                                   pattern = "tif",
                                   full.name = TRUE)

### Ver a lista
miconia_ligustroides_2

### Transformmili em objeto

mili2 <- stack(miconia_ligustroides_2)


### Plotmili
plot(mili2)

mili2

###  Função pmilia interpolação linear (reescalar 0-1)


if(
  length(mili2)!= 0 
){
  for(z in 1:length(mili2)){
    adeq = mili2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mili2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plotmili

plot (mili2)
mili2
#### Média simples

miconia_ligustroides_media_2 <- mean(mili2)

miconia_ligustroides_media_2


####  Escrever o raster final


writeRaster(miconia_ligustroides_media_2, file = paste('D:/lu/models/miconia_ligustroides/rcp45_hadgem/miconia_ligustroides_media_2', '.tif', sep=""))


################################################ miconia_ligustroides rcp45_miroc  #########################################################

miconia_ligustroides_3 <- list.files(path = "D:/lu/models/miconia_ligustroides/rcp45_miroc",	
                                   pattern = "tif",
                                   full.name = TRUE)

### Ver a lista
miconia_ligustroides_3

### Transformmili em objeto

mili3 <- stack(miconia_ligustroides_3)


####  Plotmili
plot(mili3)

mili3

#### Função pmilia interpolação linear (reescalar 0-1)


if(
  length(mili3)!= 0 
){
  for(z in 1:length(mili3)){
    adeq = mili3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mili3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plotmili

plot (mili3)
mili3
###  Média simples

miconia_ligustroides_3 <- mean(mili3)

miconia_ligustroides_3

###  Escrever o raster final


writeRaster(miconia_ligustroides_3, file = paste('D:/lu/models/miconia_ligustroides/rcp45_miroc/miconia_ligustroides_media_3', '.tif', sep=""))



################################################ myrcia_multiflora rcp45_canesm  #########################################################

myrcia_multiflora_1 <- list.files(path = "D:/lu/models/myrcia_multiflora/rcp45_canesm",	
                                     pattern = "tif",
                                     full.name = TRUE)

### Ver a lista
myrcia_multiflora_1

###### Transformar em objeto raster

mymu1 <- stack(myrcia_multiflora_1)


### Plotmymu
plot(mymu1)

mymu1

### Função de interpolação linear (reescalar 0-1)


if(
  length(mymu1)!= 0 
){
  for(z in 1:length(mymu1)){
    adeq = mymu1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mymu1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plotmymu

plot (mymu1)
mymu1
### Média simples

myrcia_multiflora_media_1 <- mean(mymu1)

myrcia_multiflora_media_1

### Escrever o raster final


writeRaster(myrcia_multiflora_media_1, file = paste('D:/lu/models/myrcia_multiflora/rcp45_canesm/myrcia_multiflora_media_1', '.tif', sep=""))



################################################ myrcia_multiflora_ rcp45_hadgem #########################################################

myrcia_multiflora_2 <- list.files(path = "D:/lu/models/myrcia_multiflora/rcp45_hadgem",	
                                     pattern = "tif",
                                     full.name = TRUE)

### Ver a lista
myrcia_multiflora_2

### Transformmymu em objeto

mymu2 <- stack(myrcia_multiflora_2)


### Plotmymu
plot(mymu2)

mymu2

###  Função pmymua interpolação linear (reescalar 0-1)


if(
  length(mymu2)!= 0 
){
  for(z in 1:length(mymu2)){
    adeq = mymu2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mymu2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plotmymu

plot (mymu2)
mymu2
#### Média simples

myrcia_multiflora_media_2 <- mean(mymu2)

myrcia_multiflora_media_2


####  Escrever o raster final


writeRaster(myrcia_multiflora_media_2, file = paste('D:/lu/models/myrcia_multiflora/rcp45_hadgem/myrcia_multiflora_media_2', '.tif', sep=""))



################################################ myrcia_multiflora rcp45_miroc  #########################################################

myrcia_multiflora_3 <- list.files(path = "D:/lu/models/myrcia_multiflora/rcp45_miroc",	
                                     pattern = "tif",
                                     full.name = TRUE)

### Ver a lista
myrcia_multiflora_3

### Transformmymu em objeto

mymu3 <- stack(myrcia_multiflora_3)


####  Plotmymu
plot(mymu3)

mymu3

#### Função pmymua interpolação linear (reescalar 0-1)


if(
  length(mymu3)!= 0 
){
  for(z in 1:length(mymu3)){
    adeq = mymu3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mymu3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plotmymu

plot (mymu3)
mymu3
###  Média simples

myrcia_multiflora_3 <- mean(mymu3)

myrcia_multiflora_3

###  Escrever o raster final


writeRaster(myrcia_multiflora_3, file = paste('D:/lu/models/myrcia_multiflora/rcp45_miroc/myrcia_multiflora_media_3', '.tif', sep=""))


################################################ myrcia_subavenia rcp45_canesm  #########################################################

myrcia_subavenia_1 <- list.files(path = "D:/lu/models/myrcia_subavenia/rcp45_canesm",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
myrcia_subavenia_1

###### Transformar em objeto raster

mysu1 <- stack(myrcia_subavenia_1)


### Plotmysu
plot(mysu1)

mysu1

### Função de interpolação linear (reescalar 0-1)


if(
  length(mysu1)!= 0 
){
  for(z in 1:length(mysu1)){
    adeq = mysu1[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mysu1[[z]] <- calc(adeq, adeq_norm)
  }
}
### Plotmysu

plot (mysu1)
mysu1
### Média simples

myrcia_subavenia_media_1 <- mean(mysu1)

myrcia_subavenia_media_1

### Escrever o raster final


writeRaster(myrcia_subavenia_media_1, file = paste('D:/lu/models/myrcia_subavenia/rcp45_canesm/myrcia_subavenia_media_1', '.tif', sep=""))



################################################ myrcia_subavenia_ rcp45_hadgem #########################################################

myrcia_subavenia_2 <- list.files(path = "D:/lu/models/myrcia_subavenia/rcp45_hadgem",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
myrcia_subavenia_2

### Transformmysu em objeto

mysu2 <- stack(myrcia_subavenia_2)


### Plotmysu
plot(mysu2)

mysu2

###  Função pmysua interpolação linear (reescalar 0-1)


if(
  length(mysu2)!= 0 
){
  for(z in 1:length(mysu2)){
    adeq = mysu2[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mysu2[[z]] <- calc(adeq, adeq_norm)
  }
}
#### Plotmysu

plot (mysu2)
mysu2
#### Média simples

myrcia_subavenia_media_2 <- mean(mysu2)

myrcia_subavenia_media_2


####  Escrever o raster final


writeRaster(myrcia_subavenia_media_2, file = paste('D:/lu/models/myrcia_subavenia/rcp45_hadgem/myrcia_subavenia_media_2', '.tif', sep=""))



################################################ myrcia_subavenia rcp45_miroc  #########################################################

myrcia_subavenia_3 <- list.files(path = "D:/lu/models/myrcia_subavenia/rcp45_miroc",	
                                  pattern = "tif",
                                  full.name = TRUE)

### Ver a lista
myrcia_subavenia_3

### Transformmysu em objeto

mysu3 <- stack(myrcia_subavenia_3)


####  Plotmysu
plot(mysu3)

mysu3

#### Função pmysua interpolação linear (reescalar 0-1)


if(
  length(mysu3)!= 0 
){
  for(z in 1:length(mysu3)){
    adeq = mysu3[[z]]
    minimo <- min(adeq[], na.rm=T)
    maximo <- max(adeq[], na.rm=T)
    adeq_norm <- function(x) {(x-minimo)/(maximo-minimo)}
    mysu3[[z]] <- calc(adeq, adeq_norm)
  }
}
####  Plotmysu

plot (mysu3)
mysu3
###  Média simples

myrcia_subavenia_3 <- mean(mysu3)

myrcia_subavenia_3

###  Escrever o raster final


writeRaster(myrcia_subavenia_3, file = paste('D:/lu/models/myrcia_subavenia/rcp45_miroc/myrcia_subavenia_media_3', '.tif', sep=""))