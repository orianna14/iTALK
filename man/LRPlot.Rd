% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LRPlot.R
\name{LRPlot}
\alias{LRPlot}
\title{Plotting ligand-receptor pairs}
\usage{
LRPlot(data, datatype, gene_col = NULL, transparency = 0.5,
  link.arr.lwd = 1, link.arr.lty = NULL, link.arr.col = NULL,
  link.arr.width = NULL, link.arr.type = NULL, facing = "clockwise",
  cell_col = NULL, print.cell = TRUE, track.height_1 = uh(2, "mm"),
  track.height_2 = uh(12, "mm"), annotation.height_1 = 0.01,
  annotation.height_2 = 0.01, text.vjust = "0.4cm", ...)
}
\arguments{
\item{data}{A dataframe contains significant ligand-receptor pairs and related
information such as expression level/log fold change and cell type}

\item{datatype}{Type of data. Options are "mean count" and "DEG"}

\item{gene_col}{Colors used to represent different categories of genes.}

\item{transparency}{Transparency of link colors, 0 means no transparency and
1 means full transparency. If transparency is already set in col or row.col
or column.col, this argument will be ignored. NAalso ignores this argument.}

\item{link.arr.lwd}{line width of the single line link which is put in the
center of the belt.}

\item{link.arr.lty}{line type of the single line link which is put in the
center of the belt.}

\item{link.arr.col}{color or the single line link which is put in the center
of the belt.}

\item{link.arr.width}{size of the single arrow head link which is put in the
center of the belt.}

\item{link.arr.type}{Type of the arrows, pass to Arrowhead. Default value is
triangle. There is an additional option big.arrow}

\item{facing}{Facing of text.}

\item{cell_col}{Colors used to represent types of cells. If set NULL, it
will be generated randomly}

\item{print.cell}{Whether or not print the type of cells on the outer layer
of the graph.}

\item{track.height_1}{height of the cell notation track}

\item{track.height_2}{height of the gene notation track}

\item{annotation.height_1}{Track height corresponding to values in annotationTrack.}

\item{annotation.height_2}{Track height corresponding to values in annotationTrack.}

\item{text.vjust}{adjustment on ’vertical’ (radical) direction. Besides to set it
as numeric values, the value can also be a string contain absoute unit, e.g.
"2.1mm", "-1 inche", but only "mm", "cm", "inches"/"inche" are allowed.}
}
\value{
A figure of the significant interactions
}
\description{
This function loads the significant interactions as a dataframe. A circle
plot will be generated using package circlize. The width of the arrow
represents the expression level/log fold change of the ligand; while the
width of arrow head represents the expression level/log fold change of the
receptor. Different color and the type of the arrow stands for whether
the ligand and/or receptor are upregulated or downregulated. Users can select
the colors represent the cell type by their own or chosen randomly by default.
}
\references{
Gu, Z. (2014) circlize implements and enhances circular
visualization in R. Bioinformatics.
}
