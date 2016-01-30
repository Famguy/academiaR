library(jsonlite)

# API URL
url <- "http://127.0.0.1:3000/v1/schools?"

# List of args to be added using &
args <- list(zip=91423)
for (arg in names(args)) {
  url <- paste(url, arg,"=", args[[arg]], "&", sep='')
}

# Fields to show
url <- paste0(url,"fields=")
fields <- c('school.name','id','2013.cost.avg_net_price.overall')
for (field in fields) {
  url <- paste(url, field, ",", sep='')
}
url <- substr(url, 1, nchar(url)-1)

# Sorting by parameter
sortby <- "2013.cost.avg_net_price.overall"
stype <- "asc"
url <- paste(url,"&sort=",sortby,":",stype,sep='')

# Get URL data into JSON format
print(url)
data <- fromJSON(url)