---
title: "Introduction"
teaching: 15
exercises: 0
questions:
- "How do I read, analyze, and visualize a tabular data set?"
- "How do I manipulate, summarize, and analyze data to answer a research
  question?"
- "How do I choose the best chart to answer my research question?"
- "How do I generate the best chart to answer my research question?"
- "How do I produce a publication quality version of my chart?"
objectives:
- "To interactively generate analysis code and save it in a file"
- "To read tabular data into a data frame"
- "To manipulate and summarize tabular data using `dplyr`"
- "To generate publication quality charts using `ggplot2`"
- "To critique others' choices of charts and esthetics and express how to
  improve them"
- "To access `help()`, vignette tutorials, and online documentation"
- "To interpret common error/warning messages from `dplyr` and `ggplot2`"
keypoints:
- "`dplyr` is one useful tool to manipulate, summarize, and analyze data."
- "`ggplot2` is one useful tool to visualize and analyze data."
- "A clearly defined research question is essential to a successful analysis
  and graphical representation of the results."
---

## Welcome to the Software Carpentry lesson on Data Visualization for novices

### Setup

Make sure you have followed the [setup instructions][setup] before moving onto
the next episodes.

You will also want to be sure that you have `dplyr`, `tidyr`, and `ggplot2`
installed in your R console.

~~~
install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2")
~~~
{: .r}

### Prerequisites

This lesson is designed for novice programmers that already have some practice
with basic data management using base R function and the `dplyr` package. The
following lessons, [Data Management in R][data-management] and 
[`dplyr` Basics][dplyr], provide a refresher for the prerequisites and an 
opportunity to prepare the [data][data] for the lesson examples.

### Audience

Have you ever seen a figure that tried to convey way too much? Or a figure that just didn't seem to give you any useful information?

This lesson is for scientists that are getting started using R to analyze their
data and want to know more about data visualization using `ggplot2` and want to
practice choosing the best figure to present their data and data analysis. The
lesson should prepare you to choose and generate the best publication quality chart to answer your research question.

### Goals

This lesson will walk you through the steps to generate a publication quality
chart that directly addresses a research question, including the steps to:

   - interactively generate analysis code and save it in a file
   - read tabular data into a data frame
   - manipulate and summarize tabular data using `dplyr`
   - generate publication quality charts using `ggplot2`

Interactive participation in the lesson should also give you a start critiquing 
others' choices of charts and esthetics and expressing how to improve them.

[setup]: {{ site.baseurl }}/setup/
[data-management]: {{ site.baseurl }}/02-data-management/
[dplyr]: {{ site.baseurl }}/04-dplyr/
[data]: {{ site.baseurl }}/data/gapminder_all.csv
