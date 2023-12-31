% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spectra_processing.R
\name{PerformDataInspect}
\alias{PerformDataInspect}
\title{PerformDataInspect}
\usage{
PerformDataInspect(
  datapath = NULL,
  rt.range = c(0, 0),
  mz.range = c(0, 0),
  dimension = "3D",
  res = 100
)
}
\arguments{
\item{datapath}{data file path}

\item{rt.range}{retention time range, unit is seconds}

\item{mz.range}{m/z range}

\item{dimension}{view dimension, canbe "2D" or "3D"}

\item{res}{resolution number, higher of the number means higher resolution}
}
\description{
PerformDataInspect is used to plot 2D/3D structure of the MS data
}
\author{
Zhiqiang Pang
}
