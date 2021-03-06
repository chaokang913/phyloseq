\name{import_usearch_uc}
\alias{import_usearch_uc}
\title{Import usearch table format (\code{.uc}) to OTU table}
\usage{
  import_usearch_uc(ucfile, colRead = 9, colOTU = 10,
  readDelimiter = "_", verbose = TRUE)
}
\arguments{
  \item{ucfile}{(Required). A file location character
  string or \code{\link{connection}} corresponding to the
  file that contains the usearch output table. This is
  passed directly to \code{\link{read.table}}. Please see
  its \code{file} argument documentation for further links
  and details.}

  \item{colRead}{(Optional). Numeric. The column index in
  the uc-table file that holds the read IDs. The default
  column index is \code{9}.}

  \item{colOTU}{(Optional). Numeric. The column index in
  the uc-table file that holds OTU IDs. The default column
  index is \code{10}.}

  \item{readDelimiter}{(Optional). An R \code{\link{regex}}
  as a character string. This should be the delimiter that
  separates the sample ID from the original ID in the
  demultiplexed read ID of your sequence file. The default
  is plain underscore, which in this \code{\link{regex}}
  context is \code{"_"}.}

  \item{verbose}{(Optional). A \code{\link{logical}}.
  Default is \code{TRUE}. Should progresss messages be
  \code{\link{cat}}ted to standard out?}
}
\description{
  UPARSE is an algorithm for OTU-clustering implemented
  within usearch. At last check, the UPARSE algortihm was
  accessed via the \code{-cluster_otu} option flag. For
  details about installing and running usearch, please
  refer to the \href{http://drive5.com/usearch/}{usearch
  website}. This importer is intended to read a particular
  table format output that is generated by usearch with the
  \code{-uc} option flag, a file format that is often given
  the \code{.uc} extension in usearch documentation.
  Because usearch is an external (non-R) application, there
  is no direct way to continuously check that these
  suggested arguments and file formats will remain in their
  current state. If there is a problem, please verify your
  version of usearch, create a small reproducible example
  of the problem, and post it as an issue on the phyloseq
  issues tracker. The version of usearch expected by this
  import function is \code{7.0.109}. Hopefully later
  versions of usearch maintain this function and format,
  but the phyloseq team has no way to guarantee this, and
  so any feedback about this will help maintain future
  functionality. For instance, it is currently assumed that
  the 9th and 10th columns of the \code{.uc} table hold the
  read-label and OTU ID, respectively; and it is also
  assumed that the delimiter between sample-name and read
  in the read-name entries is a single \code{"_"}.
}
\examples{
usearchfile <- system.file("extdata", "usearch.uc", package="phyloseq")
import_usearch_uc(usearchfile)
}
\seealso{
  \code{\link{import}}

  \code{\link{import_biom}}

  \code{\link{import_qiime}}
}

