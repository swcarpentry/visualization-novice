---
title: "Scientific Questions and Hypotheses"
teaching: 10
exercises: 5
questions:
- "What makes a good scientific question or hypothesis?"
objectives:
- "To compose a strong scientific question"
- "To differentiate between questions that describe a distribution,
  relationship, comparison, or composition"
keypoints:
- "Strong research questions and hypotheses direct the goals of data collection and analysis. They have clearly defined answers with deliberate investigation."
- "A well detailed research question can be answered with a good chart." 
---

## Gapminder Ignorance Project

[Gapminder][about-gapminder] is a "fact tank" from Sweden that maintains data and teaching resources about global development. Gapminder promotes a fact-based
world view from a deeper understanding of reliable statistics. From their data,
we can begin to formulate some research questions to explore:

What are the major trends in global populations and economies?

How is the world population distributed among countries and continents?

How is population linked to economies and health?

Has that changed over time?

## Good Research Questions

Good research questions are falsifiable/verifiable with data. They are well-defined and have a clear research outcome or set of outcomes.

## Research questions lead to clear data visualizations.

Data visualization through tables and graphics are a scientists way of conveying
a convincing answer to their research question based on quantitative evidence.
We focus on graphics, or __charts__, in this lesson for data visualization.

Charts can take on endless forms and customizations to address your research question. We will work to simplify your options to effectively determine the *best* visualization for your data.

## Defining your research question for visualization

Dr. Andrew Abela from Catholic University of America and 'Extreme Presentation'
put together a decision making tree for ["Choosing a Good Chart"][good-chart]
that we will draw from for this lesson. He breaks up data visualization into
four main categories: distribution, relationship, comparison, or composition. 
Our lesson will work through each of these categories (described by 
[this reference][chart-categories-view] [from Qlik][chart-categories-source]) 
to define a research question and generate a data visualization to address the
question.

__Distribution__: Distribution charts arrange numerical values in order by rank 
or count along an axis. The chart visualizes the shape of the data using context
from the range of values, a central tendency, and outliers.

__Relationship__: Relationship charts set two or three numerical variables along 
axis to visualize correlations or clusters in the data. Often these charts are
accompanied by visual representations of statistics (e.g., regression,
confidence intervals, groupings). 

__Comparison__: Comparison charts group data into categories or along a timespan
on one axis with numerical values on the other. This visualization is used to
find the lowest and highest values in the data and general trends within groups
or with time.

__Composition__: Composition charts group data into categories that are linked to a common process or are some parts of a whole. The chart visualizes how
values can be divided into relative shares (i.e.,  percentage of total) or
absolute difference (i.e, value  of total).

> ## Scientific Question Challenge
>
> Match `Column A` with `Column B`.
>
> A            | B
> ---          | ---
> Comparison   | How was the population of Africa distributed across the continent by country in 2007?
> Distribution | What is the relationship of GDP per capita, life expectancy, and population across the world per country in 2007?
> Relationship | How was the world population distributed among continents in 2007?
> Composition  | How has the composition of the world population among continents changed from 1952-2007?
>
> > ## Answer
> >
> > * Distribution: How was the population of Africa distributed across the
> >   continent by country in 2007?
> > * Relationship: What is the relationship of GDP per capita, life expectancy,
> >   and population across the world per country in 2007?
> > * Comparison: How was the world population distributed among continents in
> >   2007?
> > * Composition: How has the composition of the world population among
> >   continents changed from 1952-2007?
> {: .solution}
{: .challenge}

[about-gapminder]: https://www.gapminder.org/about-gapminder/
[good-chart]: http://extremepresentation.typepad.com/.shared/image.html?/photos/uncategorized/choosing_a_good_chart.jpg
[chart-categories-view]: https://community.qlik.com/servlet/JiveServlet/previewBody/7816-102-2-10600/Choosing-A-GoodChart-Dissected-FINAL.pdf
[chart-categories-source]: https://community.qlik.com/docs/DOC-7816
