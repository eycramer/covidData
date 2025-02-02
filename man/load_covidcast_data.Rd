% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_covidcast_data.R
\name{load_covidcast_data}
\alias{load_covidcast_data}
\title{Assemble a data frame of incident hospitalizations due to
COVID-19 as they were available as of a specified issue date in COVIDcast.}
\usage{
load_covidcast_data(
  issue_date = NULL,
  as_of = NULL,
  location_code = NULL,
  spatial_resolution = "state",
  temporal_resolution = "weekly",
  measure = "hospitalizations",
  geography = "US"
)
}
\arguments{
\item{issue_date}{character issue date (i.e. report date) to use for
constructing truths in format 'yyyy-mm-dd'}

\item{as_of}{character as_of date to use for constructing truths in
format 'yyyy-mm-dd'}

\item{location_code}{character vector of location codes. Default to NULL.
For US locations, this should be a list of FIPS code or 'US'}

\item{spatial_resolution}{character vector specifying spatial unit types to
include: 'state' and/or 'national'. It has to match with locations in \code{location_code}.}

\item{temporal_resolution}{character vector specifying temporal resolution
to include: 'daily' or 'weekly'}

\item{measure}{character vector specifying measure of covid prevalence:
must be 'hospitalizations'}

\item{geography}{character, which data to read. Default is "US".
Note this variable is not used in the function}
}
\value{
data frame with columns location (fips code), date, inc, and cum
}
\description{
Assemble a data frame of incident hospitalizations due to
COVID-19 as they were available as of a specified issue date in COVIDcast.
}
