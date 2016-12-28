---
title: "Faceted Table of Histograms"
teaching: 5
exercises: 15
questions:
- "What kind of scientific question does a faceted table of charts address?"
- "How do I generate a faceted table with `ggplot2`?"
objectives:
- "To generate a faceted table of histograms using `ggplot2`"
keypoints:
- "Faceted tables represent a comparison among many items or categories."
- "Multiple good charts can address a single scientific question."
---

> ## Our research question is: 
>
> How was the world population distributed among continents in 2007?
{: .checklist}

> ## What is it's category?
>
> It is a __comparison__. 
{: .solution} 

> ## What is being compared: items? or time?
>
> Items are being compared: `population` and `continent`.
{: .solution}

> ## Is there a single variable? or two variables?
>
> There is __one variable__: `population`.
{: .solution}

> ## Are there few categories? or many?
>
> There are __many categories__: `continent`. 
{: .solution}

> ## So we choose to make a:
>
> __Table with embedded charts__ or a "faceted bar chart"
{: .discussion}


When seeking to compare the graphics of multiple categories, you can build a table of graphics using [`facet_grid()`][grid] or [`facet_wrap()`][wrap]  

~~~
ggplot(data, aes(pop_2007)) +
  geom_histogram() +
  facet_grid(. ~ continent)
~~~
{: .r}

> ## Fix the Faceted Table Code Challenge
>
> Fix the code to generate a faceted table of histograms using the data table 
> generated in the `dplyr` Review Fill-in Challenge from [Lesson 12: Tidy Data
> Structure][tidyr].
>
> ~~~
> ggplot(pop_2007, aes(year)) +
>   geom_histogram(binwidth=0.5) +
>   scale_x_log10(limits = c(0.1, 10))
>   facet_grid(continent ~ .) +
>   labs(x = Population [millions], y = Number of countries, 
>        title = "2007") +
>   theme_bw(base_size = 42, base_family = "Script") +
>   theme(axis.title=element_text(size=36))
> ~~~
> {: .r}
>
> > ## Output Solution
> >
> > ![faceted histogram][faceted-histogram]
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > ggplot(pop_2007, aes(population/1000000)) +             # Replace aes()
> >  geom_histogram(binwidth=0.5) +
> >  scale_x_log10(limits = c(0.1, 1000)) +                 # Add +
> >  facet_grid(. ~ continent) +                            # Reverse ~ .
> >  labs(x = "Population [millions]", y = "Number of countries", 
> >       title = "2007") +                                 # Add ""
> >  theme_bw(base_size = 24, base_family = "Helvetica") +  # Fix input vars
> >  theme(axis.title = element_text(size = 36))
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

> ## Alternate Good Charts Discussion
>
> This is another quality solution to addressing "How was the world population 
> distributed among continents in 2007?"
>
> Compare and contrast the two graphic representations addressing the research
> question.
>
> ![grouped density][grouped-density]
>
> > ## Grouped Density Chart Code
> >
> > ~~~
> > ggplot(pop_2007, aes(x = population/1000000, y = ..count.., fill = continent)) +
> >  geom_density(alpha = 0.6) +
> >  geom_histogram(data=filter(pop_2007, continent=="Oceania"), alpha = 0.6) +
> >  scale_x_log10(limits = c(0.1, 1000)) +
> >  labs(x = "Population [millions]", y = "Number of countries", title = "2007") +
> >  theme_bw(base_size = 24, base_family = "Helvetica") +
> >  theme(axis.title = element_text(size = 36))
> > ~~~
> > {: .r}
> {: .solution}
{: .discussion}

[grid]: http://docs.ggplot2.org/current/facet_grid.html
[wrap]: http://docs.ggplot2.org/current/facet_wrap.html
[tidyr]: {{ site.baseurl }}/12-tidyr
[faceted-histogram]: {{ site.baseurl }}/fig/faceted-histogram.jpeg
[grouped-density]: {{ site.baseurl }}/fig/grouped-density.jpeg
