% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peaks_to_function.R
\name{CreateMummichogLibs}
\alias{CreateMummichogLibs}
\title{Create Mummichog Libraries from KEGG}
\usage{
CreateMummichogLibs(folder, kegg_compounds)
}
\arguments{
\item{folder}{Input the path of the folder containing the metpa rda files.}

\item{kegg_compounds}{Input the name of the KEGG dictionary containing the 
KEGG compound IDs, KEGG compopund names, and molecular weight.}
}
\description{
Function to create mummichog libraries from
MetaboAnalyst pathway libraries (metpa).
Outputs the RDS files in the current working directory. RDS files
are saved using the KEGG organism code.
}
