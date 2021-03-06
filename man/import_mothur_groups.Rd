\name{import_mothur_groups}
\alias{import_mothur_groups}
\title{Parse mothur group file into a simple hash table.}
\usage{
  import_mothur_groups(mothur_group_file)
}
\arguments{
  \item{mothur_group_file}{A character string indicating
  the location of the \emph{mothur}-produced group file in
  which the sample-source of each sequence is recorded. See
  \code{http://www.mothur.org/wiki/Make.group}}
}
\value{
  A data.frame that is effectively a hash table between
  sequence names and their sample source.
}
\description{
  The data.frame object returned by this function is not
  immediately useable by other \emph{phyloseq} functions,
  and must be first parsed in conjunction with a separate
  \emph{mothur} \code{"list"} file. This function is made
  accessible to \emph{phyloseq} users for troubleshooting
  and inspection, but the \code{link{import_mothur()}}
  function is suggested if the goal is to import the OTU
  clustering results from \emph{mothur} into
  \emph{phyloseq}. You will need both a group file and a
  list file for that end.
}
\seealso{
  \code{\link{import_mothur}}
}
\keyword{internal}

