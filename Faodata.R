#############################
#
#  FAO data
#
#
############################

install.packages("FAOSTAT")
library(FAOSTAT)


vignette("FAOSTAT", package = "FAOSTAT")

FAOsearch()
test = getFAO(query = .LastSearch)

FAOquery.df = data.frame(varName = c("arableLand", "cerealExp", "cerealProd"),
                         domainCode = c("RL", "TP", "QC"),
                         itemCode = c(6621, 1944, 1717),
                         elementCode = c(5110, 5922, 5510),
                         stringsAsFactors = FALSE)