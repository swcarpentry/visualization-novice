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

Tidy data structure rules:

1.  Order doesn’t matter
2.  No duplicate rows
3.  Every cell contains one value
4.  One column per type of information
5.  No redundant information

Restructure tables with messy data.

![Table Restructure][table-restructure]

Important `tidyr` functions:

- gather()
- separate()

Gapminder `data` time series is stored cross-tabulated.


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
