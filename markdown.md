---
title: "Codebook Markdown for Getting and Cleaning Data Course Project.md"
author: "Paul Houghton"
date: "Monday, July 21, 2014"
output: html_document
---

This is a codebook describing the process I used for the completion of the getting and cleaning data course project .

The first section of the code is where the data is sourced. It was downloaded from the commented out url in line 1 then manually unzipped and placed in a folder at the same level as the RStudio project.

The next section (lines 2- 28) was the process for importing the test data, relabelling the column headers then combining into a single dataframe.

The import process was repeated in the next section (lines 30- ) to import and process the training data.






This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
