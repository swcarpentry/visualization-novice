---
title: "Data Structures"
teaching: 5
exercises: 5
questions:
- "What are data variables and categories?"
- "What are data values and replicates?"
- "What is the difference between absolute and relative values?"
objectives:
- "To identify data structure features in Gapminder data"
- "To be familiar with differentiating data structures for choosing a good
   chart"
keypoints:
- "__Variables__ are associated with columns in tidy data."
- "As a descriptor of a specific column of data, __variables__ tend to describe
  numerically continuous data, while __categories__ describe discrete or
  categorical data that is organized in groups."
- "__Values__ are associated with cells in a data table."
- "__Replicates__ are values with similar variables and categories most often
  seen in experimental data."
- "__Absolute__ values receive context by their units, while __relative__ values
  are standardized in some fashion (i.e., proportion, per unit) for comparison
  among categories."
---

## Data structure is the shape and content of your data.

The shape of your data ought to be rectangular and can be described by the number of rows and columns.

Column in your data can also be called __variables__ or __fields__. However, the general use of the term __variable__ to describe a column can also be used more specifically to describe numerically continuous data. As a complement to this specific use of variables, __categories__ describe discrete or categorical data
that can be organized in groups.

__Values__ make up the rows of the data and are more specifically associated
with cells in a data table. Values can represent numerical or categorical data.
Numerical values should be recognized as __absolute__ or __relative__. Absolute
values receive context by their units, while relative values are standardized in
some fashion (i.e., proportion, per unit) and most often used for comparison
among categories.

Rows of data may represent observational or experimental __replicates__. Most
generally, replicates are values with similar variables and categories that
are evaluated in data analysis.

> ## Data Organization Challenge
>
> What years are represented in the Gapminder data?
>
> > ## Answer
> >
> > 1952-2007
> {: .solution}
> 
> Which variable is more appropriate to group by? Why?
>
> A.  `country`  
> B.  `gdpPercap` 
>
> > ## Answer
> >
> > A.  `country`, because it is a __categorical__ variable
> {: .solution}
{: .challenge}

## Tidy data follows a set of rules.

These rules keep data well organized and ready for analysis.

1. Order doesn’t matter
2. No duplicate rows
3. Every cell contains one value
4. One column per type of information
5. No redundant information
