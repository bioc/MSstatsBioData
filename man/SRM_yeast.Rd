\name{SRM_yeast}
\docType{data}

\alias{data:SRM_yeast}
\alias{SRM_yeast}


\title{Time course investigation of central carbon metabolism of \emph{S. cerevisiae}}
\description{
45 proteins in the glycolysis/gluconeogenesis/TCA cycle/glyoxylate cycle network were targeted in SRM experiment with isotope labeled reference peptides. Three biological replicates were measured at ten time points (T1-T10, labeled as 1 to 10 in Condition column). There are total 30 MS runs measured. It covered dynamic growth phases of \emph{S. cerevisiae}, in a glucose-rich medium (T1-T4), diauxic shift (T5-T6), post-diauxic phase (T7-T9), and stationary phase (T10). Each transition was quantified automatically using MultiQuant with no missing values.
}
\usage{
data(SRM_yeast)
}
\format{

    \code{SRM_yeast} is a data.frame.

}
\references{
Picotti, P. et ak. (2009) Full dynamic range proteome analysis of S. cerevisiae by targeted proteomics. \emph{Cell}, 138, 795–806.
}
\examples{
data(SRM_yeast)
}
\keyword{datasets}