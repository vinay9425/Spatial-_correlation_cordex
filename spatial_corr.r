setwd("C:/Users/evs4/Desktop/") # set your present working directory where your csv data file is

data<-c(read.csv("compare_model_mimr.csv")) # It will read your data to a variable data
cccm<-c(data$AV_CCCM)
cnrm<-c(data$AV_CNRM)
csiro<-c(data$AV_CSIRO)
ipsl<-c(data$AV_IPSL)
mpi_mr<-c(data$AV_MPI_MR)
noaa<-c(data$AV_NOAA)
remo2009<-c(data$AV_REMO2009)
observed<-c(data$Met_observed)

cor.test(observed,cccm)
cor.test(observed,cnrm)
cor.test(observed,csiro)
cor.test(observed,ipsl)
cor.test(observed,mpi_mr)
cor.test(observed,noaa)
cor.test(observed,remo2009)

 par(mfrow=c(1,7))
boxplot(observed,col="red",main="Observed",ylim=c(-0.25,35))
abline(h = 25.66, v = 0, col = "gray60")
boxplot(cccm,col="green",main="CCCM",ylim=c(-0.25,35))
abline(h = 25.66, v = 0, col = "gray60")
boxplot(cnrm,col="purple",main="CNRM",ylim=c(-0.25,35))
abline(h = 25.66, v = 0, col = "gray60")
boxplot(csiro,col="blue",main="CSIRO",ylim=c(-0.25,35))
abline(h = 25.66, v = 0, col = "gray60")
boxplot(ipsl,col="grey",main="IPSL",ylim=c(-0.25,35))
abline(h = 25.66, v = 0, col = "gray60")
boxplot(noaa,col="magenta",main="NOAA",ylim=c(-0.25,35))
abline(h = 25.66, v = 0, col = "gray60")
boxplot(remo2009,col="yellow",main="REMO2009",ylim=c(-0.25,35))
abline(h = 25.66, v = 0, col = "gray60")


abline(h = 25.66, v = 0, col = "gray60")

boxplot(mpi_mr,col="violet",main="MPI_MR",ylim=c(-0.25,35))



