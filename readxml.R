library(XML)
library(RCurl)
#fileURL <- "http://www.w3schools.com/xml/simple.xml"
fileURL <- "view-source_www.w3schools.com_xml_simple.xml"
doc <- xmlTreeParse(fileURL,useInternal=TRUE)
rootNode <- xmlRoot(doc)
xmlName(rootNode)
rootNode[[1]]
rootNode[[1]][[1]]
xlmSApply(rootNode,xmlValue)
xlmSApply(rootNode,"//name",xmlValue)
xlmSApply(rootNode,"//price",xmlValue)

fileUrl <- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeParse(fileUrl,useInternal=TRUE)
scores <- xpathSApply(doc,"//li[@class='score']",xmlValue)
teams <- xpathSApply(doc,"//li[@class='team-name']",xmlValue)
scores   # will show game scores
teams    # will show game opponents
