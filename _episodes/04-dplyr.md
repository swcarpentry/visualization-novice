---
title: "dplyr Basics"
teaching: 10
exercises: 5
questions:
- "What are the basic `dplyr` functions?"
- "How do I implement the basic `dplyr` functions?"
objectives:
- "To understand the basic `dplyr` functions: `select()`, `filter()`,
  `group_by()`, and `summarize()`"
keypoints:
- "Use `dplyr` to manipulate, summarize, and analyze your data."
---

~~~
library(dplyr)
~~~
{: .r}

> ## dplyr Challenge
>
> How many countries are in Africa?
>
> A.  5
> B.  38
> C.  52
> D.  142
>
> > ## Answer
> >
> > C. 52
> {: .solution}
> 
> > ## Code Solution 
> >
> > ~~~
> > Africa <- filter(data, continent=="Africa")
> > summarize(Africa, countries = n())
> > ~~~
> > {: .r}
> {: .solution}
> 
> Make a `data.frame` that stores the count of countries per continent?
>
> > ## Output Solution
> >
> > ~~~
> > Source: local data frame [5 x 2]
> >
> >   continent countries
> >      (fctr)     (int)
> > 1    Africa        52
> > 2  Americas        25
> > 3      Asia        33
> > 4    Europe        30
> > 5   Oceania         2
> > ~~~
> > {: .output}
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > data %>%
> >   group_by(continent) %>%
> >   summarize(countries = n())
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}
