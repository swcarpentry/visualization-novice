---
title: "Stacked Area Chart"
teaching: 5
exercises: 15
questions:
- "What kind of scientific question does a stacked area chart address?"
- "How do I generate a stacked area chart with `ggplot2`?"
objectives:
- "To generate a stacked area chart using `ggplot2`"
keypoints:
- "Stacked area charts represent a composition changing over time."
---

> ## Our research question is: 
>
> How has the composition of the world population among continents changed
> from 1952-2007?
{: .checklist}

> ## What is its category?
>
> It is a __composition__. 
{: .solution} 

> ## Is the variable changing over time? or static?
>
> The variable `population` is __changing over time__.
{: .solution}

> ## Are there few periods? or many?
>
> There are __many periods__: 1952-2007.
{: .solution}

> ## Do only relative differences matter? or relative and absolute?
>
> __Relative and absolute__ differences matter.
{: .solution}

> ## So we choose to make a:
>
> __Stacked area chart__
{: .discussion}

The research question motivates an analysis that groups the countries in each `continent` to get a total population for each year. We can use `dplyr` to
`summarize()` the `population` data from our tidy data `pop_by_continent` into
`sum()` for each `continent`.

~~~
total_pop_continent<- pop_by_continent %>%
  group_by(continent, year) %>%
  summarize(tot_pop = sum(population)/1000000000)
~~~
{: .r}
 
To visualize this data as a stacked area chart, we can use [`geom_line()`][geom-line] 
with an optional argument `position = "stack"`.

~~~
ggplot(total_pop_continent, aes(as.numeric(year), tot_pop, 
       group = continent)) +
  geom_line(position = "stack")
~~~
{: .r}

*The `as.numeric()` is needed to modify `year` because it was set as a
`"character"` by default by `tidyr`.*

[`geom_area()`][geom-area] is a much more visually appealing function for
grouped data.

~~~ 
ggplot(total_pop_continent, aes(as.numeric(year), tot_pop, 
       fill = continent)) + 
  geom_area() +
  labs(fill = "Continent")
~~~
{: .r}

> ## Chart Improvement Challenge
>
> Here is a incomplete (or *bad*) example of the chart we are going for. Modify
> the code to a publication quality stacked area chart.
>
> ~~~
> total_pop_continent<- pop_by_continent %>%
>   group_by(continent, year) %>%
>   summarize(tot_pop = sum(population)/1000000000)
>
> ggplot(total_pop_continent, aes(as.numeric(year), tot_pop, 
>        group = continent)) +
>   geom_line(position = "stack")
> ~~~
> {: .r}
>
> ![stacked line chart][stacked-line]
>
> > ## Output Solution
> >
> > ![stacked area chart][stacked-area]
> {: .solution}
>
> > ## Code Solution
> >
> > ~~~
> > ggplot(total_pop_continent, aes(as.numeric(year), tot_pop, 
> >        fill = continent)) + 
> >   geom_area() +
> >   labs(x = "Year", y = "Population [billions]", 
> >        fill = "Continent") +
> >   theme_classic(base_size = 24, base_family = "Helvetica") +
> >   theme(axis.title = element_text(size = 36))
> > ~~~
> > {: .r}
> {: .solution}
{: .challenge}

[geom-line]: http://docs.ggplot2.org/current/geom_path.html
[geom-area]: http://docs.ggplot2.org/current/geom_ribbon.html
[stacked-line]: {{ site.baseurl }}/fig/stacked-line.jpeg
[stacked-area]: {{ site.baseurl }}/fig/stacked-area.jpeg
