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

## Example of using MSstats for differential abundance analysis.
require(MSstats)
input.proposed <- dataProcess(SRM_yeast, 
                            summaryMethod="TMP",
                            cutoffCensored="minFeature", 
                            censoredInt="0", 
                            MBimpute=TRUE,
                            maxQuantileforCensored=0.999)
                
comparison1<-matrix(c(-1,1,0,0,0,0,0,0,0,0),nrow=1)
comparison2<-matrix(c(-1,0,1,0,0,0,0,0,0,0),nrow=1)
comparison3<-matrix(c(-1,0,0,1,0,0,0,0,0,0),nrow=1)
comparison4<-matrix(c(-1,0,0,0,1,0,0,0,0,0),nrow=1)
comparison5<-matrix(c(-1,0,0,0,0,1,0,0,0,0),nrow=1)
comparison6<-matrix(c(-1,0,0,0,0,0,1,0,0,0),nrow=1)
comparison7<-matrix(c(-1,0,0,0,0,0,0,1,0,0),nrow=1)
comparison8<-matrix(c(-1,0,0,0,0,0,0,0,1,0),nrow=1)
comparison9<-matrix(c(-1,0,0,0,0,0,0,0,0,1),nrow=1)

comparison <- rbind(comparison1,comparison2,comparison3,
                    comparison4,comparison5,comparison6,
                    comparison7,comparison8,comparison9)
row.names(comparison) <- c("T2-T1","T3-T1","T4-T1",
                            "T5-T1","T6-T1","T7-T1",
                            "T8-T1","T9-T1","T10-T1")


output.comparison <- groupComparison(contrast.matrix=comparison, 
                            data=input.proposed)
head(output.comparison$ComparisonResult)

}
\keyword{datasets}
