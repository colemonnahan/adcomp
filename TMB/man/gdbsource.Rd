\name{gdbsource}
\alias{gdbsource}
\title{Source R-script through gdb to get backtrace.}
\usage{
  gdbsource(file, interactive = FALSE)
}
\arguments{
  \item{file}{Your R script}

  \item{interactive}{Run interactive gdb session?}
}
\value{
  Object of class \code{backtrace}
}
\description{
  Source R-script through gdb to get backtrace.
}
\details{
  This function is useful for debugging templates. If a
  script aborts e.g. due to an out-of-bound index operation
  it should be fast to locate the line that caused the
  problem by running \code{gdbsource(file)}. Alternatively,
  If more detailed debugging is required, then
  \code{gdbsource(file,TRUE)} will provide the full
  backtrace followed by an interactive gdb session where
  the individual frames can be inspected. Note that
  templates should be compiled without optimization and
  with debug information i.e. \code{compile(cppfile,"-O0
  -g")} in order to provide correct line numbers.
}
