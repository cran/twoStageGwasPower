\name{twoStageGwasPower}
\alias{twoStageGwasPower}
\docType{package}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
thresholds and power for two-stage gwas
}
\description{
Computes the critical values for a two-stage gwas association study and
compute power for replication and joint analyses.
}
\usage{
twoStageGwasPower(pD, pG, grr, inheritance = "multiplicative", pi.samples, pi.markers, alpha.marker, n.cases, n.controls)
}

\arguments{
  \item{pD}{
Probability of disease in the population (prevalence)
}
  \item{pG}{
Frequency of disease allele in the population
}
  \item{grr}{
Genotypic relative risk
}
  \item{inheritance}{
Inheritance type ("dominant", "recessive", "multiplicative", or "additive"
}
  \item{pi.samples}{
Proportion of samples genotyped in Stage 1
}
  \item{pi.markers}{
Proportion of markers genotyped in Stage 2
}
  \item{alpha.marker}{
Significance level used for each marker, accounting for multiple comparisons among a large number of markers
}
  \item{n.cases}{
Number of cases
}
  \item{n.controls}{
Number of controls
}
}
\details{
This function computes the critical values and powers of the replication and joint methods of analyzing
a two-stage GWAS design. Details may be found in Skol AD, Scott, LJ, Abecasis GR, Boehnke M (2006)
}
\value{
A list containing:
  \item{power.SingleStage}{Power of a one stage design}
  \item{power.joint}{Power of a joint analysis}
  \item{power.rep}{Power of a replication analysis (based only on the second stage markers)}
  \item{c1}{Stage one threshold}
  \item{c2}{Replication (stage two) threshold}
  \item{c.joint}{Joint analysis threshold}
  \item{c.singleStage}{Single stage design threshold}
  \item{penetrance.GG}{Penetrance of the GG genotype (homozygous for disease allele)}
  \item{penetrance.Gg}{Penetrance of the Gg genotype}
  \item{penetrance.gg}{Penetrance of the gg genotype}
  \item{p0}{disease allele frequency in controls}
  \item{p1}{disease allele frequency in cases}
  \item{p.stageOne}{probability that associated markers will be followed up in Stage 2}
  \item{savings}{reduction in genotyping using two-stage design as compared to the single-stage design}
}
\references{
Skol AD, Scott, LJ, Abecasis GR, Boehnke M (2006) Nature Genetics
               doi:10.1038/ng1706
               
http://www.sph.umich.edu/csg/abecasis/CaTS/
}
\author{
Dirk F Moore <dirkfmoore@gmail.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
# prevalence of disease is 0.10, the allele frequency is 0.40,
#  a multiplicative model with 0.40 samples in the first stage and
#  10% of the markers selected for Stage 2. There are 1000 cases
#  and 1000 controls, 300,000 markers, with a genome-wide alpha of 0.05

power.gwas.out <- twoStageGwasPower(pD=0.10, pG=0.40, grr=1.40, 
                 inheritance="multiplicative", pi.samples=0.40, pi.markers=0.10, 
                 alpha.marker=0.05/300000, n.cases=1000, n.controls=1000)
power.gwas.out

# Same, but with 1% of markers selected for Stage 2
power.gwas.out2 <- twoStageGwasPower(pD=0.10, pG=0.40, grr=1.40, 
             inheritance="multiplicative", pi.samples=0.40, pi.markers=0.010, 
             alpha.marker=0.05/300000, n.cases=1000, n.controls=1000)
power.gwas.out2

# Same, but a dominant model with 4000 controls and 2000 cases
power.gwas.out3 <- twoStageGwasPower(pD=0.10, pG=0.40, grr=1.40, 
           inheritance="dominant", pi.samples=0.40, pi.markers=0.10, 
           alpha.marker=0.05/300000, n.cases=2000, n.controls=4000)
power.gwas.out3
}

\keyword{gwas}
\keyword{power}
