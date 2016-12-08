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

## A *realy* quick refresher on `dplyr`

`dplyr` is a package that needs to be installed and initiated in your R console.
You should have already installed it using `install.packages("dplyr")`.

~~~
library(dplyr)
~~~
{: .r}

For this lesson we will primarily use the basic set of `dplyr` functions
(`select()`, `filter()`, `group_by()`, and `summarize()`) to manipulate the data
to the form required for our analysis and visualization. A more in-depth
introduction can be found [here][dplyr-vingette].

Each of the `dplyr` functions takes a `data.frame` (or `tibble`) as its first
argument.
  
`select()` takes a list of column names and returns a `tibble` with those columns.

~~~
select(data, country, pop_1952)
~~~
{: .r}

`filter()` takes a conditional statement and returns a `tibble` that is a subset of the `data`.

~~~
filter(data, pop_1952 < 500000)
~~~
{: .r}

Often, the `tibble` is a result of another `dplyr` function. So,
functions can be nested or piped (%>%) to link the data manipulation steps.

~~~
select(filter(data, pop_1952 < 500000), country, pop_1952)
~~~
{: .r}

~~~
data %>%
  filter(pop_1952 < 500000) %>%
  select(country, pop_1952)
~~~
{: .r}

`summarize()` uses standard math functions (e.g., `min()`, `max()`, `sum()`,
`mean()`) to generate new data values.

~~~
summarize(data, count = n(), min_pop1952 = min(pop_1952))
~~~
{: .r}  

`group_by()` takes a list of categorical columns and is used to initiate grouping the `summarize()` calculations.

~~~
data %>%
  group_by(continent) %>%
  summarize(sum_pop1952 = sum(pop_1952),
            avg_pop1952 = mean(pop_1952))
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

[dplyr-vingette]: https://cran.rstudio.com/web/packages/dplyr/vignettes/introduction.html