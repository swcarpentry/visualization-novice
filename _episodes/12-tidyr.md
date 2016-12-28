---
title: "Tidy Data Structure"
teaching: 5
exercises: 5
questions:
- "What is tidy data structure?"
- "How do I use `tidyr` to restructure messy data?"
objectives:
- "To understand the importance of tidy data structure"
- "To tidy our data in preparation for the final figure"
keypoints:
- "Tidy data has one value per cell and all similar values in a single column." 
---

## Tidy data structure

Tidy data structure rules:

1.  Order doesn’t matter
2.  No duplicate rows
3.  Every cell contains one value
4.  One column per type of information
5.  No redundant information

Restructure tables with messy data.

![Table Restructure][table-restructure]

## Gapminder is not quite tidy

The Gapminder data time series is stored cross-tabulated with each type of
information (such as population, GDP,or life expectancy) are represented by
multiple columns for each year that the information was collected. This violates
rule #4 ("One column per type of information"). Our remaining research questions
use time series data, so we are going to have to tidy up the data to help our
analysis and visualization.

## The `tidyr` functions

The [`tidyr` package][tidyr] helps restructure data to make it easier to 
analyze. 

`gather()` removes redundant columns and makes the data longer by setting the
redundant columns into rows. It takes multiple arguments:

* `data.frame` *that can be piped*
* Column name for grouping of old column headers
* Column name for grouping of old column values
* Column range for old columns with values

~~~
pop_year_gather <- data %>%
  gather(year, population, pop_1952:pop_2007)
~~~
{: .r}

This data restructure moves the names of the redundant columns into row values.
But the column names like `"pop_2007"` then violate rule #3 ("Every cell
contains one value").  

`separate()` splits multiple values in a single column to multiple columns. It
takes multiple arguments:

* `data.frame` *that can be piped*
* Column name
* New column names
* Separator value or character

~~~
pop_year_separate <- data %>%
  separate(year, c("pop", "year"), sep = "_")
~~~
{: .r}


> ## `tidyr` Fill-in Challenge
>
> Fill in the missing pieces of the following code to generate a tidy
> data table.
>
> ~~~
> pop_by_continent <- ________ %>%
>   gather(year, population, ________) %>%
>   separate(________, c("pop", "year"), sep = "_") %>%
>   select(continent, country, ________, ________)
> ~~~
> {: .r}
>
> > ## Output Solution
> >
> > ~~~
> > > str(pop_by_continent)
> > 'data.frame':	1704 obs. of  4 variables:
> >  $ continent : Factor w/ 5 levels "Africa","Americas",..: 1 1 1 1 1 1 1 1 1 1 ...
> >  $ country   : Factor w/ 142 levels "Afghanistan",..: 3 4 11 14 17 18 20 22 23 27 ...
> >  $ year      : chr  "1952" "1952" "1952" "1952" ...
> >  $ population: num  9279525 4232095 1738315 442308 4469979 ...
> >
> > > head(pop_by_continent)
> >   continent      country year population
> > 1    Africa      Algeria 1952    9279525
> > 2    Africa       Angola 1952    4232095
> > 3    Africa        Benin 1952    1738315
> > 4    Africa     Botswana 1952     442308
> > 5    Africa Burkina Faso 1952    4469979
> > 6    Africa      Burundi 1952    2445618
> > ~~~
> > {: .output}
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > pop_by_continent <- data %>%
> >  gather(year, population, pop_1952:pop_2007) %>%
> >  separate(year, c("pop", "year"), sep = "_") %>%
> >  select(continent, country, year, population)
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

> ## `dplyr` Review Fill-in Challenge
>
> Fill in the missing pieces of the following code to filter data for 2007.
>
> ~~~
> pop_2007 <- filter(________)
> ~~~
> {: .r}
>
> > ## Output Solution
> >
> > ~~~
> > > str(pop_2007)
> > 'data.frame':	142 obs. of  4 variables:
> >  $ continent : Factor w/ 5 levels "Africa","Americas",..: 1 1 1 1 1 1 1 1 1 1 ...
> >  $ country   : Factor w/ 142 levels "Afghanistan",..: 3 4 11 14 17 18 20 22 23 27 ...
> >  $ year      : chr  "2007" "2007" "2007" "2007" ...
> >  $ population: num  33333216 12420476 8078314 1639131 14326203 ...
> >
> > > head(pop_2007)
> >   continent      country year population
> > 1    Africa      Algeria 2007   33333216
> > 2    Africa       Angola 2007   12420476
> > 3    Africa        Benin 2007    8078314
> > 4    Africa     Botswana 2007    1639131
> > 5    Africa Burkina Faso 2007   14326203
> > 6    Africa      Burundi 2007    8390505
> > ~~~
> > {: .output}
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > pop_2007 <- filter(pop_by_continent, year==2007)
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

[table-restructure]: http://www.datacarpentry.org/semester-biology/materials/database-struct-multiple-habitat-values.png
[tidyr]: https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html