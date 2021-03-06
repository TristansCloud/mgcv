% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mgcvExports.R
\name{gam.reparam}
\alias{gam.reparam}
\title{Finding stable orthogonal re-parameterization of the square root penalty.}
\usage{
gam.reparam(rS, lsp, deriv)
}
\arguments{
\item{rS}{list of the square root penalties: last entry is root of 
fixed penalty, if \code{fixed.penalty==TRUE} (i.e. \code{length(rS)>length(sp)}). 
The assumption here is that \code{rS[[i]]} are in a null space of total penalty already; 
see e.g. \code{totalPenaltySpace} and \code{mini.roots}.}

\item{lsp}{vector of log smoothing parameters.}

\item{deriv}{if \code{deriv==1} also the first derivative of the log-determinant of the penalty matrix 
is returned, if \code{deriv>1} also the second derivative is returned.}
}
\value{
A list containing \itemize{
         \item{\code{S}: the total penalty matrix similarity transformed for stability.}
         \item{\code{rS}: the component square roots, transformed in the same way.}
         \item{\code{Qs}: the orthogonal transformation matrix \code{S = t(Qs)\%*\%S0\%*\%Qs}, where \code{S0} is the
                          untransformed total penalty implied by \code{sp} and \code{rS} on input.}
         \item{\code{det}: log|S|.}
         \item{\code{det1}: dlog|S|/dlog(sp) if \code{deriv >0}.}
         \item{\code{det2}: hessian of log|S| wrt log(sp) if \code{deriv>1}.}
                         }
}
\description{
INTERNAL function for finding an orthogonal re-parameterization which avoids "dominant machine zero leakage" between
             components of the square root penalty.
}
\author{
Simon N. Wood <simon.wood@r-project.org>.
}
