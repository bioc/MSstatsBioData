\name{DDA_cardio}
\docType{data}

\alias{data:DDA_cardio}
\alias{DDA_cardio}


\title{Dataset of cardiovascular disease study}
\description{
This study is for investigation for cardiovascular disease between control and four disease stages.  (0, 1, 2, 3, 4 in Condition) 246 samples from control and disease patients were analyzed with single injection by label- free DDA as described in 15. There are 97 identified proteins. The dataset was processed by Monarch, (http: //www.bloomberg.com/research/stocks/private/snapshot.asp?privcapid=20704167). Unusually, this DDA dataset had no missing values because the procedure reported the background signal if a feature in a run was not detected.
}
\usage{
data(DDA_cardio)
}
\format{

    \code{DDA_cardio} is a data.frame.

}

\references{
Clough, T. et al. (2009) Protein quantification in label-free LC-MS experiments. \emph{J. Proteome Res.}, 8, 5275–5284.

}
\examples{
data(DDA_cardio)
}
\keyword{datasets}
