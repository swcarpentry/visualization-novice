---
title: "Generating a Density Plot"
teaching: 10
exercises: 10
questions:
- "What kind of scientific question does a density plot address?"
- "How do I generate a density plot with `ggplot2`?"
objectives:
- "To generate a density plot using `ggplot2`"
keypoints:
- "Density plots are single variable distributions for many points." 
---

In [Lesson 06: Choosing A good Chart][good-chart] we determined that the
research question "How was the population of Africa distributed across the
continent by country in 2007?" would be best addressed by a line histogram.

Then, in [Lesson 07: ggplot2 Basics][ggplot] we generated a basic histogram that
represents the data values as bars. A more effective visual representation of
many data points is a line histogram or what most R folks call, a __density
plot__. The `ggplot2` layer for a density plot is [`geom_density()`][geom-density].
 

~~~
ggplot(Africa, aes(x = pop_2007)) +
  geom_density()
~~~
{: .r}

`geom_density()` shows a density estimate on the y-axis by default. If you are interested in the count of values along the x-axis for a clearer quantitative
description of the population distribution you can set the y-axis to
`..count..`. Values that `ggplot2` calculates behind the scenes are named with
the `..   ..` convention, such as `..count..`.

~~~
ggplot(Africa, aes(x = pop_2007, y = ..count..)) +
  geom_density()
~~~
{: .r}

> ## Density Plot Fill-in Challenge
>
> Fill in the missing pieces of the following code to generate a density plot.
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

[good-chart]: {{ site.baseurl}}/06-good-chart/
[ggplot]: {{ site.baseurl}}/07-ggplot/
[geom-density]: http://docs.ggplot2.org/current/geom_density.html
[line-histogram-bad]: {{ site.baseurl }}/fig/line-histogram-bad.jpeg
