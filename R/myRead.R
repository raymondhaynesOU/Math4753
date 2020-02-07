#' CSV Reader (Lab 2 Version)
#'
#' @param csv The name of the CSV file being read
#'
#' @return data frame that contains the data
#' @export
#'
#' @examples
#' dird="C:\\Users\\stew9983\\OneDrive - University of Oklahoma\\DATAxls\\"
#' mpg.df=myread("EPAGAS.csv")
myread = function(csv){
  fl = paste(dird,csv,sep="")
  read.table(fl,header=TRUE,sep=",")
}
