% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/general_data_utils.R
\name{Read.mzTab}
\alias{Read.mzTab}
\title{Read an mzTab tab separated file from the passed in file.
Adapted from: https://github.com/lifs-tools/rmzTab-m/blob/master/R/MzTabReader.r}
\usage{
Read.mzTab(mSetObj = NA, filename, identifier = "name")
}
\arguments{
\item{mSetObj}{Input the name of the created mSetObj (see InitDataObjects).}

\item{filename}{The name of the mzTab file to parse.}

\item{identifier}{The identifier to be used when the table is parsed. Use "name"
to use the chemical_name, "mass" to use the theoretical_neutral_mass and "sml_id"
to use the SML_ID. If the number of missing name and mass entries is greater than 90%,
then the SML_ID will be used.}
}
\description{
Read an mzTab tab separated file from the passed in file.
Adapted from: https://github.com/lifs-tools/rmzTab-m/blob/master/R/MzTabReader.r
}
