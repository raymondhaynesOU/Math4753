#' CSV Reader (Lab 2 Version)
#'
#' @param csv The name of the CSV file being read
#'
#' @return data frame that contains the data
#' @export
#'
#' @examples
#' mpg.df=myread("EPAGAS.csv")
myread = function(csv){
  read.table(csv,header=TRUE,sep=",")
}
