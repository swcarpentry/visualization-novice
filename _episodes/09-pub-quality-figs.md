---
title: "Making Publication Quality Figures"
teaching: 5
exercises: 5
questions:
- "What makes up a publication quality figure?"
- "What customization features are in `ggplot2`?"
objectives:
- "To generate a publication quality figure using `ggplot2`"
keypoints:
- "Publication quality figures stand alone to address a scientific question."
- "Publication quality figures include clear headings, labels, and symbols."
- "Publication quality figures are often accompanied by a descriptive caption." 
---

Publication quality figures are clean and direct data visualizations that
clearly illustrate your conclusion to the research question. Publication quality
figures should include only the necessary data and visualization elements to
convey the desired message, which are organized by a simple plot frame or theme. 
All visualization elements are clearly labeled and/or included in a legend and
are described in the accompanying caption for the graphic. These elements
include the axis, data shape and color, and any statistical elements giving
analytical context to the data.

`ggplot2` makes development and customization of publication quality figures easy through the use of layers such as [`labs()`][labs], [`theme()`][theme], and
[`guide_legend()`][legend].

`labs()` adds axis labels and a title to the figure, which we have seen before. 

~~~
ggplot(Africa, aes(log10(pop_2007), ..count..)) +
  geom_density() +
  labs(x = "Log10( 2007 Population )", y = "Count", 
       title = "African Population Distribution 2007")
~~~
{: .r}

*Titles were required with figures in many projects through school, but are more
commonly replaced by captions in scientific publications.*

`theme()` can be used in a couple of different ways. I recommend the `theme_classic()` or `theme_bw()` as a starting point for formatting figures to
publication quality.

~~~
ggplot(Africa, aes(log10(pop_2007), ..count..)) +
  geom_density() +
  labs(x = "Log10( 2007 Population )", y = "Count") +
  theme_class()
~~~
{: .r}

The theme layers can be modified with arguments such as `base_size` or
`base_family` to add font specifications.

~~~
ggplot(Africa, aes(log10(pop_2007), ..count..)) +
  geom_density() +
  labs(x = "Log10( 2007 Population )", y = "Count") +
  theme_classic(base_size = 24, base_family = "Helvetica") +
~~~
{: .r}

Sometimes, it is necessary to adjust specific elements of the graphic to ensure
clear visibility.

~~~
ggplot(Africa, aes(log10(pop_2007), ..count..)) +
  geom_density() +
  labs(x = "Log10( 2007 Population )", y = "Count") +
  theme_classic(base_size = 24, base_family = "Helvetica") +
  theme(axis.title = element_text(size = 36))
~~~
{: .r}

> ## Density Plot Fill-in Challenge Continued
>
> Fill in the missing pieces of the following code to generate a publication
> quality line histogram.
>
> ~~~
> ggplot(________) +
>   ________ +
>   labs(________, y = "Count") +
>   theme_classic(base_size = 24, base_family = ________) +
>   theme(axis.title = element_text(size = 36))
> ~~~
> {: .r}
>
> > ## Output Solution
> >
> > ![line histogram][line-histogram-good]
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > ggplot(Africa, aes(log10(pop_2007), ..count..)) +
> >   geom_density() +
> >   labs(x = "Log10( 2007 Population )", y = "Count") +
> >   theme_classic(base_size = 24, base_family = "Helvetica") +
> >   theme(axis.title = element_text(size = 36))
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

[labs]: http://docs.ggplot2.org/current/labs.html
[theme]: http://docs.ggplot2.org/current/theme.html
[legend]: http://docs.ggplot2.org/current/guide_legend.html
[line-histogram-good]: {{ site.baseurl }}/fig/line-histogram-good.jpeg
