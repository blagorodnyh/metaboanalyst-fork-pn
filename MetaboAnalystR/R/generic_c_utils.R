#' MetaboAnalystR: A package for computating the notorious bar statistic.
#'
#' The MetaboAnalystR package provides a pipeline for metabolomics processing.
#' 
#' @section MetaboAnalystR functions:
#' The MetaboAnalystR functions ...
#'
#' @docType package
#' @name MetaboAnalystR
#' @useDynLib MetaboAnalystR, .registration=TRUE
NULL
#> NULL


######### ======= ------------- C function Bin: Batch Effect Module ----------- ======== #########

## Internal C fucntion - C_imodwt_r
## ref: Percival, D. B. and A. T. Walden (2000) 
## Wavelet Methods for Time Series Analysis, Cambridge University Press.
C_imodwt_r <- function(y,z,N,j, L, ht, gt, XX){
  if (.on.public.web){
    .C("imodwt", y, z, N, j, L, ht, gt, out=XX)$out
  } else {
    .C("C_imodwt", y, z, N, j, L, ht, gt, out=XX)$out
  }
}

## Internal C fucntion - C_modwt_r
## ref: Percival, D. B. and A. T. Walden (2000) 
## Wavelet Methods for Time Series Analysis, Cambridge University Press.
C_modwt_r <- function(X,N,j, L, ht, gt,W, V){
  if (.on.public.web){
    .C("modwt", X, N, as.integer(j), L,ht, gt, W = W, V = V)[7:8]
  } else {
    .C("C_modwt", X, N, as.integer(j), L, ht, gt, W = W, V = V)[7:8]
  }
}


  
############# ============ ------------- Bin bottom ----------- ============ ###########

## Internal C fucntion - fmatch
## ref: https://cran.r-project.org/web/packages/fastmatch/index.html
fmatch_r <- function(x, table, nomatch = NA_integer_, incomparables = NULL){
  .Call("fmatch", x, table, nomatch, incomparables, FALSE)
}
  
