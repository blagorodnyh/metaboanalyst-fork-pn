% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enrich_integ.R
\name{PerformIntegPathwayAnalysis}
\alias{PerformIntegPathwayAnalysis}
\title{Perform integrative pathway analysis}
\usage{
PerformIntegPathwayAnalysis(mSetObj, topo="dc", enrich="hyper", 
libOpt="integ", integOpt="query")
}
\arguments{
\item{mSetObj}{Input name of the created mSet Object}

\item{topo}{Select the mode for topology analysis: Degree Centrality ("dc") measures 
the number of links that connect to a node 
(representing either a gene or metabolite) within a pathway; Closeness Centrality ("cc") measures 
the overall distance from a given node 
to all other nodes in a pathway; Betweenness Centrality ("bc")measures the number of shortest paths from 
all nodes to all the others that pass through a given node within a pathway.}

\item{enrich}{Method to perform over-representation analysis (ORA) based on either hypergenometrics analysis ("hyper")
or Fisher's exact method ("fisher").}

\item{libOpt}{Select the different modes of pathways, either the gene-metabolite mode ("integ") which 
allows for joint-analysis
and visualization of both significant genes and metabolites or the gene-centric ("genetic") and 
metabolite-centric mode ("metab") which allows users
to identify enriched pathways driven by significant genes or metabolites, respectively.}

\item{integOpt}{integOpt,default is "query"}
}
\description{
used for integrative analysis 
as well as general pathways analysis for meta-analysis results
}
\author{
Jeff Xia \email{jeff.xia@mcgill.ca}
McGill University, Canada
License: GNU GPL (>= 2)
}
