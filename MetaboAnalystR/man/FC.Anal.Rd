% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats_univariates.R
\name{FC.Anal}
\alias{FC.Anal}
\title{Fold change analysis, unpaired}
\usage{
FC.Anal(mSetObj, fc.thresh=2, cmp.type = 0, paired=FALSE)
}
\arguments{
\item{mSetObj}{Input the name of the created mSetObj (see InitDataObjects)}

\item{fc.thresh}{Fold-change threshold, numeric input}

\item{cmp.type}{Comparison type, 0 for group 1 minus group 2, and 1 for group 
1 minus group 2}

\item{paired}{Logical, TRUE or FALSE}
}
\description{
Perform fold change analysis, method can be mean or median
}
\author{
Jeff Xia\email{jeff.xia@mcgill.ca}
McGill University, Canada
License: GNU GPL (>= 2)
}
