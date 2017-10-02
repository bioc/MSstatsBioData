\name{SRM_ovarian}
\docType{data}

\alias{data:SRM_ovarian}
\alias{SRM_ovarian}


\title{Dataset for a study of subjects with ovarian cancer}
\description{
Original published raw data, SRM with isotope labeled reference peptides, has total 83 patients plasma samples. Skyline succeeded to analyze 81 patients samples. The dataset including 66 ovarian cancer (OC) patients and 15 patients with benign ovarian tumors was used to evaluate. Each patient sample measured once without technical replicate. Total 36 proteins were used to evaluate the ability of statistical method to detect differential abundance proteins between OC and benign groups.
}
\usage{
data(SRM_ovarian)
}
\format{

    \code{SRM_ovarian} is a data.frame.

}
\references{
Huttenhain, R. et al. (2012) Reproducible quantification of cancer-associated proteins in body fluids using targeted proteomics. \emph{Sci. Tansl. Med.}, 4, 142ra94.
}

\examples{
data(SRM_ovarian)

## Example of using MSstats for differential abundance analysis.
require(MSstats)
input.proposed <- dataProcess(SRM_ovarian, 
                            summaryMethod="TMP",
                            cutoffCensored="minFeature", 
                            censoredInt="0", 
                            MBimpute=TRUE,
                            maxQuantileforCensored=0.999)
                
comparison<-matrix(c(1,-1),nrow=1)
row.names(comparison)<-c("Disease-Healthy")

output.comparison <- groupComparison(contrast.matrix=comparison, 
                            data=input.proposed)
head(output.comparison$ComparisonResult)

}
\keyword{datasets}
