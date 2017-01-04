---
title: "Bubble Charts"
teaching: 10
exercises: 10
questions:
- "What kind of scientific question does a bubble chart address?"
- "How do I generate a bubble chart with `ggplot2`?"
objectives:
- "To generate a bubble chart using `ggplot2`"
keypoints:
- "Bubble charts represent a relationship with three variables" 
---

> ## Our research question is: 
>
> What is the relationship of GDP per capita, life expectancy, and population
> across the world per country in 2007?
{: .checklist}

> ## What is its category?
>
> It is a __relationship__. 
{: .solution} 

> ## Are there two or three numerical data points?
>
> There are __three variable__. All are continuous variables.
{: .solution}

> ## So we choose to make a:
>
> __Bubble chart__
{: .discussion}

Bubble charts use [`geom_point()`][geom-point] to add a scatter plot for two
continuous variables and then can modify the `size`, `color`, or `shape` with
the third variable to make it a bubble chart.

~~~
ggplot(data, aes(x = gdpPercap_2007, y = lifeExp_2007, size = pop_2007)) +
  geom_point()
~~~
{: .r}

[`geom_smooth()`][geom-smooth] adds a regression line to the graphic using a
`"Loess"` method by default. The `method = lm` argument sets a ordinary least squares linear model. The layer also adds 95% confidence intervals by default.

~~~
ggplot(data, aes(x = gdpPercap_2007, y = lifeExp_2007, size = pop_2007)) +
  geom_point() +
  geom_smooth()
~~~
{: .r}

> ## Bubble Chart Sort and Fill-in Challenge
>
> Sort and fill in the missing pieces of the following code to generate a
> bubble chart.
>
> ~~~
> ggplot(data, aes(x = ________, y = ________, size = pop_2007)) +
> geom_point() +
> theme_classic()
> geom_smooth() +
> labs(x = ________, y = ________, size = "pop", title = "2007") +
> ~~~
> {: .r}
>
> > ## Output Solution
> >
> > ![bubble chart][bubble-chart-bad]
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > ggplot(data, aes(x = gdpPercap_2007, y = lifeExp_2007, size = pop_2007)) +
> >   geom_smooth() +
> >   geom_point() +
> >   labs(x = "gdpPercap", y = "lifeExp", size = "pop", title = "2007") +
> >   theme_classic()
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

The [`scale_manual()`][scale-manual] set of functions helps you customize the
data elements of the graphic for clear visualization.

~~~
ggplot(data, aes(x = gdpPercap_2007, y = lifeExp_2007, size = pop_2007)) +
  geom_point() +
  geom_smooth() +
  scale_size(range = c(2, 20))
~~~
{: .r}
 
> ## Publication Quality Bubble Chart Fill-in Challenge
>
> Fill in the missing pieces of the following code to generate a publication
> quality bubble chart.
>
> ~~~
> ggplot(data, aes(________)) +
>   geom_smooth(method = ________, color = "black", size = 2) +
>   geom_point() +
>   scale_size(range = c(________)) +
>   scale_x_log10() +
>   labs(x = "GDP/capita [adjusted US$]", y = "Life Expectancy [years]", 
>        size = "Population [millions]", title = "2007") +
>   theme_classic(________) +
>   theme(axis.title = ________)
> ~~~
> {: .r}
>
> > ## Output Solution
> >
> > ![pub quality bubble chart][bubble-chart-good]
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > ggplot(data, aes(x = gdpPercap_2007, y = lifeExp_2007, 
> >                  size = pop_2007/1000000)) +
> >   geom_smooth(method = "lm", color = "black", size = 2) +
> >   geom_point() +
> >   scale_size(range = c(2, 20)) +
> >   scale_x_log10() +
> >   labs(x = "GDP/capita [adjusted US$]", y = "Life Expectancy [years]", 
> >        size = "Population [millions]", title = "2007") +
> >   theme_classic(base_size = 24, base_family = "Helvetica") +
> >   theme(axis.title = element_text(size = 36))
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

[geom-point]: http://docs.ggplot2.org/current/geom_point.html
[geom-smooth]: http://docs.ggplot2.org/current/geom_smooth.html
[bubble-chart-bad]: {{ site.baseurl }}/fig/bubble-chart-bad.jpeg
[bubble-chart-good]: {{ site.baseurl }}/fig/bubble-chart-good.jpeg
