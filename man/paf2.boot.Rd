\name{Bootstrapping the decomposed PaF income polarization index}
\alias{paf2.boot}
\title{
Bootstrapping the decomposed PaF income polarization index
}

\description{
Bootstrapping the decomposed PaF income polarization index
}

\usage{
paf2.boot(y, a, R = 1000)
}

\arguments{
\item{y}{
A numeric vector with income data.
}
\item{a}{
The value of \eqn{\alpha}. This can be a number only, between 0.25 and 1.
}
\item{R}{
The number of bootstrap resamples to perform.
}
}

\details{
The function computes the decomposed PaF index of Duclos, Esteban and Ray (2004) for a specific value of \eqn{\alpha}. The decomposition is with respect to the deprivation and surplus components as suggested by Araar (2008). The PaF index, the deprivation and surplus components, and also their bootstrap estimates, the estimated bias and the estimated standard error of each, and the confidence intervals are returned.
}

\value{
A list including:
\item{boot}{
A matrix with the bootstrap estimates.
}
\item{index}{
The estimates.
}
\item{info}{
A matrix with: the bootstrap based estimates, the bootstrap estimated bias of the estimates, the bootstrap estimated standard errors of the estimates, and the 95\% percentile bootstrap confidence intervals for each component.
}
}

\references{
Araar A. (2008). On the Decomposition of Polarization Indices: Illustrations with Chinese and Nigerian Household Surveys. CIRPEE Working Paper No. 08-06.
https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1136142

Duclos J. Y., Esteban, J. and Ray D. (2004). Polarization: concepts, measurement, estimation. Econometrica, 72(6): 1737--1772.
}

\author{
Michail Tsagris.

R implementation and documentation: Michail Tsagris \email{mtsagris@uoc.gr}.
}

%\note{
%%  ~~further notes~~
%}

\seealso{
\code{\link{paf2}, \link{paf.boot}
}
}

\examples{
y <- rgamma(100, 10, 0.01)
paf2.boot(y, 0.25)
}
