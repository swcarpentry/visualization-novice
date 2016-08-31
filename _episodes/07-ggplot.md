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
