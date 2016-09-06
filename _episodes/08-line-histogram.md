---
title: "Generating a Line Histogram"
teaching: 10
exercises: 10
questions:
- "What kind of scientific question does a line histogram address?"
- "How do I generate a line histogram with `ggplot2`?"
objectives:
- "To generate a line histogram using `ggplot2`"
keypoints:
- "Line histograms represent a single variable distributions with many points." 
---

Walk through decision making steps from question to chart.
 
-   "How was the population of Africa distributed across the continent by 
    country in 2007?"
-   Single variable distribution with many points
-   Line Histogram

Implement line histogram.

-   `geom_histogram()`
-   `geom_density()`

> ## Line Histogram Fill-in Challenge
>
> Fill in the missing pieces of the following code to generate a line histogram.
>
> ~~~
> ggplot(Africa, aes(________, ..count..)) +
>   geom_density() ________
>   labs(x = "Log10(________)", y = "Count")
> ~~~
> {: .r}
>
> > ## Output Solution
> >
> > ![line histogram][line-histogram-bad]
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > ggplot(Africa, aes(log10(pop_2007), ..count..)) +
> >  geom_density() +
> >  labs(x = "Log10( 2007 Population )", y = "Count")
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

[line-histogram-bad]: {{ site.baseurl }}/fig/line-histogram-bad.jpeg
