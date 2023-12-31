% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stats_chemometrics.R
\name{SPLSR.Anal}
\alias{SPLSR.Anal}
\title{Perform SPLS-DA}
\usage{
SPLSR.Anal(
  mSetObj = NA,
  comp.num,
  var.num,
  compVarOpt,
  validOpt = "Mfold",
  foldNum = 5,
  doCV = FALSE
)
}
\arguments{
\item{mSetObj}{Input name of the created mSet Object}

\item{comp.num}{Input the number of computations to run}

\item{var.num}{Input the number of variables}

\item{compVarOpt}{Input the option to perform SPLS-DA}

\item{validOpt}{INput the valid option}
}
\description{
Sparse PLS-DA (from mixOmics)
}
\author{
Jeff Xia \email{jeff.xia@mcgill.ca}
McGill University, Canada
License: GNU GPL (>= 2)
}
