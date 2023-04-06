############################################### Byrsonima sericea Uncertainty among algorithms


bs.files <- list.files(path= "D:/GitHub/outputs/Byrsonima sericea/present/partitions", 
                        pattern=paste0("_", ".*tif"),
                        full.names = TRUE, 
                        recursive = FALSE)
bs <- stack(bs.files)
bssu <- calc(bs, function(x) median(x)) #adequabilidade
bsun <- calc(bs, function(x) max(x) - min(x)) #incerteza

writeRaster(bssu, filename=paste("D:/GitHub/outputs/Byrsonima sericea/present/uncertainty_Byrsonima_sericea"), format="GTiff")
writeRaster(bsun, filename=paste("D:/GitHub/outputs/Byrsonima sericea/present/ensemble_median_Byrsonima_sericea"), format="GTiff")


######################################## Croton_floribundus Uncertainty among algorithms  #################################################


cf.files <- list.files(path= "D:/GitHub/outputs/Croton floribundus/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
cf <- stack(cf.files)
cfsu <- calc(cf, function(x) median(x)) #adequabilidade
cfun <- calc(cf, function(x) max(x) - min(x)) #incerteza

writeRaster(cfun, filename=paste("D:/GitHub/outputs/Croton floribundus/present/uncertainty_Croton_floribundus"), format="GTiff")
writeRaster(cfsu, filename=paste("D:/GitHub/outputs/Croton floribundus/present/ensemble_median_Croton_floribundus"), format="GTiff")



######################################## Croton_urucurana Uncertainty among algorithms #################################################

cu.files <- list.files(path= "D:/GitHub/outputs/Croton urucurana/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
cu <- stack(cu.files)
cusu <- calc(cu, function(x) median(x)) #adequabilidade
cuun <- calc(cu, function(x) max(x) - min(x)) #incerteza

writeRaster(cuun, filename=paste("D:/GitHub/outputs/Croton urucurana/present/uncertainty_Croton_urucurana"), format="GTiff")
writeRaster(cusu, filename=paste("D:/GitHub/outputs/Croton urucurana/present/ensemble_median_Croton_urucurana"), format="GTiff")



######################################## Eremanthus erythropappus Uncertainty among algorithms #################################################

ee.files <- list.files(path= "D:/GitHub/outputs/Eremanthus erythropappus/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
ee <- stack(ee.files)
eesu <- calc(ee, function(x) median(x)) #adequabilidade
eeun <- calc(ee, function(x) max(x) - min(x)) #incerteza

writeRaster(eeun, filename=paste("D:/GitHub/outputs/Eremanthus erythropappus/present/uncertainty_Eremanthus_erythropappus"), format="GTiff")
writeRaster(eesu, filename=paste("D:/GitHub/outputs/Eremanthus erythropappus/present/ensemble_median_Eremanthus_erythropappus"), format="GTiff")




######################################## Erythrina verna Uncertainty among algorithms #################################################

ev.files <- list.files(path= "D:/GitHub/outputs/Erythrina verna/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
ev <- stack(ev.files)
evsu <- calc(ev, function(x) median(x)) #adequabilidade
evun <- calc(ev, function(x) max(x) - min(x)) #incerteza

writeRaster(evun, filename=paste("D:/GitHub/outputs/Erythrina verna/present/uncertainty_Erythrina_verna"), format="GTiff")
writeRaster(evsu, filename=paste("D:/GitHub/outputs/Erythrina verna/present/ensemble_median_Erythrina_verna"), format="GTiff")


######################################## Gaylussacia salicifolia Uncertainty among algorithms #################################################

gy.files <- list.files(path= "D:/GitHub/outputs/Gaylussacia salicifolia/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
gy <- stack(gy.files)
gysu <- calc(gy, function(x) median(x)) #adequabilidade
gyun <- calc(gy, function(x) max(x) - min(x)) #incerteza

writeRaster(gyun, filename=paste("D:/GitHub/outputs/Gaylussacia salicifolia/present/uncertainty_Gaylussacia_salicifolia"), format="GTiff")
writeRaster(gysu, filename=paste("D:/GitHub/outputs/Gaylussacia salicifolia/present/ensemble_median_Gaylussacia_salicifolia"), format="GTiff")




######################################## Inga edulis Uncertainty among algorithms #################################################

ie.files <- list.files(path= "D:/GitHub/outputs/Inga edulis/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
ie <- stack(ie.files)
iesu <- calc(ie, function(x) median(x)) #adequabilidade
ieun <- calc(ie, function(x) max(x) - min(x)) #incerteza

writeRaster(ieun, filename=paste("D:/GitHub/outputs/Inga edulis/present/uncertainty_Inga_edulis"), format="GTiff")
writeRaster(iesu, filename=paste("D:/GitHub/outputs/Inga edulis/present/ensemble_median_Inga_edulis"), format="GTiff")


######################################## Inga vera Uncertainty among algorithms #################################################

iv.files <- list.files(path= "D:/GitHub/outputs/Inga vera/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
iv <- stack(iv.files)
ivsu <- calc(iv, function(x) median(x)) #adequabilidade
ivun <- calc(iv, function(x) max(x) - min(x)) #incerteza

writeRaster(ivun, filename=paste("D:/GitHub/outputs/Inga vera/present/Uncertainty_Inga_vera"), format="GTiff")
writeRaster(ivsu, filename=paste("D:/GitHub/outputs/Inga vera/present/ensemble_median_Inga_vera"), format="GTiff")



######################################## Joannesia princeps Uncertainty among algorithms #################################################

jp.files <- list.files(path= "D:/GitHub/outputs/Joannesia princeps/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
jp <- stack(jp.files)
jpsu <- calc(jp, function(x) median(x)) #adequabilidade
jpun <- calc(jp, function(x) max(x) - min(x)) #incerteza

writeRaster(jpun, filename=paste("D:/GitHub/outputs/Joannesia princeps/present/uncertainty_Joannesia_princeps"), format="GTiff")
writeRaster(jpsu, filename=paste("D:/GitHub/outputs/Joannesia princeps/present/ensemble_median_Joannesia_princeps"), format="GTiff")


######################################## Mabea fistulifera Uncertainty among algorithms #################################################

mf.files <- list.files(path= "D:/GitHub/outputs/Mabea fistulifera/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
mf <- stack(mf.files)
mfsu <- calc(mf, function(x) median(x)) #adequabilidade
mfun <- calc(mf, function(x) max(x) - min(x)) #incerteza

writeRaster(mfun, filename=paste("D:/GitHub/outputs/Mabea fistulifera/present/uncertainty_Mabea_fistulifera"), format="GTiff")
writeRaster(mfsu, filename=paste("D:/GitHub/outputs/Mabea fistulifera/present/ensemble_median_Mabea_fistulifera"), format="GTiff")




######################################## Myrsine coriacea Uncertainty among algorithms #################################################

mc.files <- list.files(path= "D:/GitHub/outputs/Myrsine coriacea/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
mc <- stack(mc.files)
mcsu <- calc(mc, function(x) median(x)) #adequabilidade
mcun <- calc(mc, function(x) max(x) - min(x)) #incerteza

writeRaster(mcun, filename=paste("D:/GitHub/outputs/Myrsine coriacea/present/uncertainty_Myrsine_coriacea"), format="GTiff")
writeRaster(mcsu, filename=paste("D:/GitHub/outputs/Myrsine coriacea/present/ensemble_median_Myrsine_coriacea"), format="GTiff")


######################################## Nectandra membranacea Uncertainty among algorithms #################################################

nm.files <- list.files(path= "D:/GitHub/outputs/Nectandra membranacea/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
nm <- stack(nm.files)
nmsu <- calc(nm, function(x) median(x)) #adequabilidade
nmun <- calc(nm, function(x) max(x) - min(x)) #incerteza

writeRaster(nmun, filename=paste("D:/GitHub/outputs/Nectandra membranacea/present/uncertainty_Nectandra_membranacea"), format="GTiff")
writeRaster(nmsu, filename=paste("D:/GitHub/outputs/Nectandra membranacea/present/ensemble_median_Nectandra_membranacea"), format="GTiff")


######################################## Pera glabrata Uncertainty among algorithms #################################################

pg.files <- list.files(path= "D:/GitHub/outputs/Pera glabrata/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
pg <- stack(pg.files)
pgsu <- calc(pg, function(x) median(x)) #adequabilidade
pgun <- calc(pg, function(x) max(x) - min(x)) #incerteza

writeRaster(pgun, filename=paste("D:/GitHub/outputs/Pera glabrata/present/uncertainty_Pera_glabrata"), format="GTiff")
writeRaster(pgsu, filename=paste("D:/GitHub/outputs/Pera glabrata/present/ensemble_median_Pera_glabrata"), format="GTiff")


######################################## Platypodium elegans Uncertainty among algorithms #################################################

pe.files <- list.files(path= "D:/GitHub/outputs/Platypodium elegans/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
pe <- stack(pe.files)
pesu <- calc(pe, function(x) median(x)) #adequabilidade
peun <- calc(pe, function(x) max(x) - min(x)) #incerteza

writeRaster(peun, filename=paste("D:/GitHub/outputs/Platypodium elegans/present/uncertainty_Platypodium_elegans"), format="GTiff")
writeRaster(pesu, filename=paste("D:/GitHub/outputs/Platypodium elegans/present/ensemble_median_Platypodium_elegans"), format="GTiff")



######################################## Sapium glandulosum Uncertainty among algorithms #################################################

sg.files <- list.files(path= "D:/GitHub/outputs/Sapium glandulosum/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
sg <- stack(sg.files)
sgsu <- calc(sg, function(x) median(x)) #adequabilidade
sgun <- calc(sg, function(x) max(x) - min(x)) #incerteza

writeRaster(sgun, filename=paste("D:/GitHub/outputs/Sapium glandulosum/present/uncertainty_Sapium_glandulosum"), format="GTiff")
writeRaster(sgsu, filename=paste("D:/GitHub/outputs/Sapium glandulosum/present/ensemble_median_Sapium_glandulosum"), format="GTiff")



######################################## Schinus terebinthifolia Uncertainty among algorithms #################################################

st.files <- list.files(path= "D:/GitHub/outputs/Schinus terebinthifolia/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
st <- stack(st.files)
stsu <- calc(st, function(x) median(x)) #adequabilidade
stun <- calc(st, function(x) max(x) - min(x)) #incerteza

writeRaster(stun, filename=paste("D:/GitHub/outputs/Schinus terebinthifolia/present/uncertainty_Schinus_terebinthifolia"), format="GTiff")
writeRaster(stsu, filename=paste("D:/GitHub/outputs/Schinus terebinthifolia/present/ensemble_median_Schinus_terebinthifolia"), format="GTiff")


######################################## Senna macranthera Uncertainty among algorithms #################################################

sm.files <- list.files(path= "D:/GitHub/outputs/Senna macranthera/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
sm <- stack(sm.files)
smsu <- calc(sm, function(x) median(x)) #adequabilidade
smun <- calc(sm, function(x) max(x) - min(x)) #incerteza

writeRaster(smun, filename=paste("D:/GitHub/outputs/Senna macranthera/present/uncertainty_Senna_macranthera"), format="GTiff")
writeRaster(smsu, filename=paste("D:/GitHub/outputs/Senna macranthera/present/ensemble_median_Senna_macranthera"), format="GTiff")


######################################## Solanum lycocarpum Uncertainty among algorithms #################################################

sl.files <- list.files(path= "D:/GitHub/outputs/Solanum lycocarpum/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
sl <- stack(sl.files)
slsu <- calc(sl, function(x) median(x)) #adequabilidade
slun <- calc(sl, function(x) max(x) - min(x)) #incerteza

writeRaster(slun, filename=paste("D:/GitHub/outputs/Solanum lycocarpum/present/uncertainty_Solanum_lycocarpum"), format="GTiff")
writeRaster(slsu, filename=paste("D:/GitHub/outputs/Solanum lycocarpum/present/ensemble_median_Solanum_lycocarpum"), format="GTiff")


######################################## Sparattosperma leucanthum Uncertainty among algorithms #################################################

spl.files <- list.files(path= "D:/GitHub/outputs/Sparattosperma leucanthum/present/partitions", 
                       pattern=paste0("_", ".*tif"),
                       full.names = TRUE, 
                       recursive = FALSE)
spl <- stack(spl.files)
splsu <- calc(spl, function(x) median(x)) #adequabilidade
splun <- calc(spl, function(x) max(x) - min(x)) #incerteza

writeRaster(splun, filename=paste("D:/GitHub/outputs/Sparattosperma leucanthum/present/uncertainty_Sparattosperma leucanthum"), format="GTiff")
writeRaster(splsu, filename=paste("D:/GitHub/outputs/Sparattosperma leucanthum/present/ensemble_median_Sparattosperma leucanthum"), format="GTiff")












































