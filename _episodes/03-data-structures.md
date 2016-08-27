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
- "'Variables' are associated with columns in tidy data."
- "As a descriptor of a specific column of data, 'variables' tend to describe
  numerically continuous data, while 'categories' describe discrete or
  categorical data that is organized in groups."
- "'Values' are associated with cells in a data table."
- "'Replicates' are values with similar variables and categories most often seen  
  in experimental data."
- "'Absolute' values receive context by their units, while 'relative' values are 
  standardized in some fashion (i.e., proportion, per unit) for comparison among
  categories."
---

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
> > A.  `country`, because it is a 'categorical' variable
> {: .solution}
{: .challenge}
