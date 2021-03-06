% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logicals.R
\name{\%or\%}
\alias{\%or\%}
\alias{\%and\%}
\alias{\%or\%.checkr_result}
\alias{\%and\%.checkr_result}
\alias{not}
\title{Combine or negate checkr_results}
\usage{
res1 \%or\% res2

res1 \%and\% res2

\method{\%or\%}{checkr_result}(res1, res2)

\method{\%and\%}{checkr_result}(res1, res2)

not(res1)
}
\arguments{
\item{res1}{the first checkr result}

\item{res2}{the second checkr result}
}
\description{
The outcome of a checkr test is an object of class \code{checkr_result} that indicates
whether the test was passed or failed or was sufficient to move on to additional tests.
}
\examples{
# normally these results are made by the checking functions
code <- for_checkr(quote(1))
pa <- check(code, passif(V==1, "Good!"))
pb <- check(code, passif(V==1, "Great!"))
fa <- check(code, failif(V==1, "too bad"))
fb <- check(code, failif(V==1, "sorry"))
oka <- check(code, noteif(V==1, "note a"))
okb <- check(code, noteif(V==1, "note b"))
pa \%or\% pb
pa \%and\% pb
fa \%or\% fb
fa \%and\% fb
oka \%or\% okb
oka \%and\% okb
oka \%and\% fa
oka \%or\% fa
pa \%or\% fa
pa \%and\% fa
pa \%or\% oka
pa \%and\% oka
checkr::not(pa)
checkr::not(fa)

}
