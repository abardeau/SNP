\name{minorAlleleFrequency}
\alias{minorAlleleFrequency}
\alias{filterSNPs}
\alias{mafHist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{THIS FUNCTION WILL DETERMINE SNP FREQUENCIES
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
minorAlleleFrequency(SNPmat)
}
\usage{
minorAlleleFrequency(SNPMat)
filterSNPs(SNPmat, minMAF = 0.05)
mafHist(SNPmat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SNPmat}{This is to filter SNPs
%%     ~~Describe \code{SNPmat} here~~
}
  \item{minMAF}{This is for the minumin minor Allele Frequency}
}

\value{
  \item{minorAlleleFrequency}{returns a vector of allele frequencies}
  \item{filterSNPs}{returns a SNP matrix in the same format as SNPmat but with columns removed for SNPs with very rare alleles}
  \item{mafHis}{draws a plot and doesnt return anything}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}

\author{Amanda Bardeau
%%  ~~who you are~~
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (SNPmat) 
{
    maf <- colMeans(SNPmat, na.rm = TRUE)/2
    common <- which(maf > 0.5)
    maf[common] <- 1 - maf[common]
    return(maf)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.



