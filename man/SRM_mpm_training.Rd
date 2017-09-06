\name{SRM_mpm_training}
\docType{data}

\alias{data:SRM_mpm_training}
\alias{SRM_mpm_training}


\title{The training set from a study of subjects with malignant pleural mesothelioma(MPM)}
\description{
To identify candidate biomarkers for MPM in serum, the experiment targeted 32 candidate peptides with SRM with isotope labeled reference peptides. For peptide-level analysis, ProteinName column has unique id for each peptide. The training set includes total 75 subjects: 25 MPM, 25 healthy donors(HD), 25 non-small cell lung cancer (NSCLC). Each sample was injected once without technical replicate. All samples were processed by Skyline. Zero value in Intensity should be considered as censored missing.
}
\usage{
data(SRM_mpm_training)
}
\format{

    \code{SRM_mpm_training} is a data.frame.

}
\references{
Cerciello, F. et al. (2013) Identification of a seven glycopeptide signature for malignant pleural mesothelioma in human serum by selected reaction monitoring. \emph{Clin. Proteomics}, 10, 16.
}

\examples{
data(SRM_mpm_training)
}
\keyword{datasets}
