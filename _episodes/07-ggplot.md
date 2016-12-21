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

+ `ggplot2` implements the notion that every plot is drawn by adding layers
on top of one another - just like as if you were drawing.

Suppose you were asked to draw a graph. Before drawing, you would 
possibly have several questions on how to do it:
1. Which __data__ should be __mapped__ into the plot:  is it the relationship 
between a categorical and a continuous variable, 
or that between two continuous variables;
2. Which __geometrical__ representation should you use: a bar, a point or a density
line? 
3. You may also determine the appearance, the __aesthetic__, of the geometrical
 elements: are they going to be colored or filled? If they are a point, should it 
be a circle, a square or a triangle?

It is this reasoning from the Grammar of Graphics that is used to create plots in the
`ggplot2` package.

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
