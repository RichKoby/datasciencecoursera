if (!file.exists("databalt")) {
  dir.create("databalt")
}

fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./databalt/cameras.csv", method = "curl")
list.files("./databalt")
dateDownloaded <- date()
dateDownloaded

#fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
#download.file(fileUrl, destfile = "./databalt/cameras.xlsx", method = "curl")
#list.files("./databalt")
dateDownloaded <- date()
dateDownloaded

cameraData <- read.table(file="./databalt/Baltimore_Fixed_Speed_Cameras.csv",sep=",",header=TRUE)
head(cameraData)
cameraData2 <- read.csv(file="./databalt/Baltimore_Fixed_Speed_Cameras.csv")
library(xlsx)
cameraData3 <- read.xlsx(file="./databalt/Baltimore_Fixed_Speed_Cameras.xlsx",sheetIndex=1,header=TRUE)
colIndex <- 2:3
rowIndex <- 1:4
cameraDataSubset <- read.xlsx(file="./databalt/Baltimore_Fixed_Speed_Cameras.xlsx",sheetIndex=1,colIndex=colIndex,rowIndex=rowIndex)
cameraDataSubset
