\name{SRM_crc_training}
\docType{data}

\alias{data:SRM_crc_training}
\alias{SRM_crc_training}


\title{The training set from a study for subjects with colorectal cancer}
\description{
72 proteins, including two standard proteins, AIAG-Bovine and FETUA-Bovine, were targeted for plasma samples with SRM with isotope labeled reference peptides in order to identify candidate protein biomarker for non-invasive detection of CRC. The training cohort included 100 subjects in control group and 100 subjects with CRC. Each sample for subject was measured in a single injection without technical replicate. The training cohort was analyzed with Skyline. The dataset was already normalized as described in manuscript. User do not need extra normalization. NAs should be considered as censored missing. Two standard proteins can be removed for statistical analysis.
}
\usage{
data(SRM_crc_training)
}
\format{

    \code{SRM_crc_training} is a data.frame.

}
\references{
Surinova, S. et al. (2015) Prediction of colorectal cancer diagnosis based on circulating plasma proteins. \emph{EMBO Mol. Med.}, 7, 1166–1178.
}
\examples{
## Intensities are already normalized as described in the reference.
data(SRM_crc_training)

## Example of using MSstats for differential abundance analysis.
require(MSstats)
input.proposed <- dataProcess(SRM_crc_training, 
                            normalization=FALSE, 
                            summaryMethod="TMP",
                            cutoffCensored="minFeature", 
                            censoredInt="NA", 
                            MBimpute=TRUE,
                            maxQuantileforCensored=0.999)
                
comparison<-matrix(c(1,-1),nrow=1)
row.names(comparison)<-c("Disease-Healthy")

output.comparison <- groupComparison(contrast.matrix=comparison, 
                            data=input.proposed)
head(output.comparison$ComparisonResult)
                                    
}
\keyword{datasets}
