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

## The Grammar of Graphics

Suppose you were asked to draw a graph. Before drawing, you would possibly have
several questions on how to do it:

1. Which __data__ should be __mapped__ into the plot:  
   - is it the relationship between a categorical and a continuous variable?
   - is it the relationship between two continuous variables?
2. Which __geometrical__ representation should you use: 
   - a bar? 
   - a point?
   - a density line? 
3. You may also determine the appearance, the __aesthetic__, of the geometrical
   elements: 
   - are they going to be colored or filled? 
   - what should be their shape?

This series of questions portrays the process used by the [Grammar of Graphics](http://www.springer.com/us/book/9780387245447) to determine the composition of
a desired chart. This same process can be used to choose the a good chart an to 
create plots in the `ggplot2` package.

`ggplot2` implements the Grammar of Graphics by developing a programming process
in R that generates plots by adding layers on top of one another - *just like as
if you were drawing*.

## `ggplot2` basics

[`ggplot()`](http://docs.ggplot2.org/current/ggplot.html) takes two main
arguments: a dataset and a set of mappings. Mappings are the __aesthetics__
defined by `aes()`.

~~~
ggplot(africa, aes(x = pop_2007))
~~~
{: .r}

Add the components of a figure using layers such as [`geom_histogram()`](http://docs.ggplot2.org/current/geom_histogram.html). 
Layers are connected by a `+`.

~~~
ggplot(africa, aes(x = pop_2007)) +
  geom_histogram()
~~~
{: .r}

You can modify the output from the layers by rescaling variables in the mapping.

~~~
ggplot(africa, aes(x = log10(pop_2007))) +
  geom_histogram()
~~~
{: .r}

You can also rescale variables with an additional layer such as
[`scale_continuous()`](http://docs.ggplot2.org/current/scale_continuous.html).

~~~
ggplot(africa, aes(x = pop_2007)) +
  geom_histogram() +
  scale_x_log10()
~~~
{: .r}

Many components of your figure can be modified using additional layers such as
[`labs()`](http://docs.ggplot2.org/current/labs.html).

~~~
ggplot(africa, aes(x = pop_2007)) +
  geom_histogram() +
  scale_x_log10() +
  labs(x = "Log10( 2007 Population )", y = "Count")
~~~
{: .r}

## Implement a histogram with `ggplot2` 

Let's revisit our research question: "How was the population of Africa
distributed across the continent by country in 2007?". We determined that we
should use a line histogram or density plot.

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
