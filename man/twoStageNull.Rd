\name{twoStageNull}
\alias{twoStageNull}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
thresholds for two-stage gwas
}
\description{
Computes thresholds for two-stage genome-wide association study for replication 
and joint analyses, and for a single-stage design
}
\usage{
twoStageNull(pi.samples, pi.markers, alpha.marker)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{pi.samples}{
Proportion of samples genotyped in Stage 1
}
  \item{pi.markers}{
Proportion of markers genotyped in Stage 2
}
  \item{alpha.marker}{
Significance level used for each marker, accounting for multiple comparisons among a large number of markers
}
}
\value{
A list containing:
  \item{c1}{Stage one threshold}
  \item{c2}{Replication (stage two) threshold}
  \item{c.joint}{Joint analysis threshold}
  \item{c.singleStage}{Single stage design threshold}
}
\references{
Skol AD, Scott, LJ, Abecasis GR, Boehnke M (2006) Nature Genetics
               doi:10.1038/ng1706
               
http://www.sph.umich.edu/csg/abecasis/CaTS/
}

\author{
Dirk F Moore <dirkfmoore@gmail.com>
}

\examples{
# compute thresholds for two-stage design with 40% of subjects selected for stage one
#  and 10% of markers selected for follow-up in the second stage,
#  with an alpha level of 0.05/300000
power.thresh.out <- twoStageNull(pi.samples=0.40, pi.markers=0.10, 
                                 alpha.marker=0.05/300000)
power.thresh.out
}

