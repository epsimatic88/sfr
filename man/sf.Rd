% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sf.R
\name{sf}
\alias{sf}
\alias{st_sf}
\alias{sf}
\alias{[.sf}
\title{Create sf object}
\usage{
st_sf(..., agr = NA_agr_, row.names,
  stringsAsFactors = default.stringsAsFactors(), crs, precision)

\method{[}{sf}(x, i, j, ..., drop = FALSE, op = st_intersects)
}
\arguments{
\item{...}{column elements to be binded into an \code{sf} object, one of them being of class \code{sfc}}

\item{agr}{character vector; see details below.}

\item{row.names}{row.names for the created \code{sf} object}

\item{stringsAsFactors}{logical; logical: should character vectors be converted to factors?  The `factory-fresh' default is \code{TRUE}, but this can be changed by setting \code{options(stringsAsFactors = FALSE)}.}

\item{crs}{coordinate reference system: integer with the epsg code, or character with proj4string}

\item{precision}{numeric; see \link{st_as_binary}}

\item{x}{object of class \code{sf}}

\item{i}{record selection, see \link{[.data.frame}}

\item{j}{variable selection, see \link{[.data.frame}}

\item{drop}{whether to drop to simpler (e.g. vector) representation, see \link{[.data.frame}}

\item{op}{function; geometrical binary predicate function to apply when \code{i} is a simple feature object}
}
\description{
Create sf, which extends data.frame-like objects with a simple feature list column
}
\details{
\code{agr}, attribute-geometry-relationship, specifies for each non-geometry attribute column how it relates to the geometry, and can have one of following values: "constant", "aggregate", "identity". "constant" is used for attributes that are constant throughout the geometry (e.g. land use), "aggregate" where the attribute is an aggregate value over the geometry (e.g. population density or population count), "identity" when the attributes uniquely identifies the geometry of particular "thing", such as a building ID or a city name. The default value, \code{NA_agr_}, implies we don't know.

"[.sf" will return a \code{data.frame} if the geometry column (of class \code{sfc}) is dropped, an \code{sfc} object if only the geometry column is selected, otherwise the behavior depending on \code{drop} is identical to that of \link{[.data.frame}.
}
\examples{
g = st_sfc(st_point(1:2))
st_sf(a=3,g)
st_sf(g, a=3)
st_sf(a=3, st_sfc(st_point(1:2))) # better to name it!
g = st_sfc(st_point(1:2), st_point(3:4))
s = st_sf(a=3:4, g)
s[1,]
class(s[1,])
s[,1]
class(s[,1])
s[,2]
class(s[,2])
g = st_sf(a=2:3, g)
pol = st_sfc(st_polygon(list(cbind(c(0,3,3,0,0),c(0,0,3,3,0)))))
h = st_sf(r = 5, pol)
g[h,]
h[g,]
}
