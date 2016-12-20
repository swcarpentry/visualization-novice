---
title: "ggplot2 Basics"
teaching: 10
exercises: 5
questions:
- "What is the grammar of graphics established by `ggplot2`?"
- "How does `ggplot2` generate graphics through layers?"
objectives:
- "To understand `ggplot2` aesthetic mapping of layers"
- "To generate graphics using `ggplot2`"
keypoints:
- "Use `ggplot2` to visualize and analyze data." 
---

Suppose you were asked to draw a graph. Before drawing, you would 
possibly have several questions on how to draw is. For instance, 
which __data__ should be __mapped__ to the plot:  is it the relationship 
between a categorical and a continuous variable, 
or the relationship between two continuous variable? Similarly, which
__geometrical__ representations should you use: a bar, a point or a density
line? Once you determine these informations, how does the appearance, the
__aesthetic__, of the geometrical elements would look like? It is this 
reasoning from the Grammar of Graphicas that it is used in the
`ggplot2` package.

`ggplot2` implements the notion that every plot is drawn by adding layers
on top of one another - just like as if you were drawing.

Implement histogram for "How was the population of Africa distributed
across the continent by country in 2007?"

> ## `ggplot` Shuffle Challenge
>
> Rearrange the following code to generate a histogram.
>
> ~~~
> geom_histogram() +
> labs(x = "Log10( 2007 Population )", y = "Count") 
> ggplot(Africa, aes(log10(pop_2007))) +
> ~~~
> {: .r}
>
> > ## Output Solution
> >
> > ![histogram][histogram-bad]
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > ggplot(Africa, aes(log10(pop_2007))) +
> >  geom_histogram() +
> >  labs(x = "Log10( 2007 Population )", y = "Count")
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

[histogram-bad]: {{ site.baseurl }}/fig/histogram-bad.jpeg
