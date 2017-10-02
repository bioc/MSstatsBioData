\name{SRM_mpm_validation}
\docType{data}

\alias{data:SRM_mpm_validation}
\alias{SRM_mpm_validation}


\title{The validation set from a study of subjects with malignant pleural mesothelioma(MPM)}
\description{
To identify candidate biomarkers for MPM in serum, the experiment targeted 31 candidate peptides with SRM with isotope labeled reference peptides. The validation set consists of total 98 subjects: 34 MPM, 32 healthy donors(HD), 32 non-small cell lung cancer (NSCLC). Each sample was injected once without technical replicate. 7 Subjects are overlapped with training set. All samples were processed by Skyline.
}
\usage{
data(SRM_mpm_validation)
}
\format{

    \code{SRM_mpm_validation} is a data.frame.

}
\references{
Cerciello, F. et al. (2013) Identification of a seven glycopeptide signature for malignant pleural mesothelioma in human serum by selected reaction monitoring. \emph{Clin. Proteomics}, 10, 16.
}

\examples{
data(SRM_mpm_validation)

## Example of using MSstats for differential abundance analysis.
require(MSstats)
input.proposed <- dataProcess(SRM_mpm_validation, 
                            summaryMethod="TMP",
                            cutoffCensored="minFeature", 
                            censoredInt="0", 
                            MBimpute=TRUE,
                            maxQuantileforCensored=0.999)
                
comparison1<-matrix(c(-1,1,0),nrow=1)
comparison2<-matrix(c(-1,0,1),nrow=1)
comparison3<-matrix(c(0,1,-1),nrow=1)
comparison<-rbind(comparison1, comparison2, comparison3)
row.names(comparison)<-c("MPM-control","NSCLC-control","MPM-NSCLC")

output.comparison <- groupComparison(contrast.matrix=comparison, 
                            data=input.proposed)
head(output.comparison$ComparisonResult)

}
\keyword{datasets}
