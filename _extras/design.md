---
layout: page
title: "Lesson Design"
permalink: /design/
---
## Stage 0 - Assumptions

*   Audience
    *   Graduate students and practicing scientists in numerate disciplines from cosmology to economics
        *   Lesson content broadly applicable across disciplines
        *   Lesson examples from population demography ([Gapminder data][gapminder-data]) 
    *   Must understand basic data management and manipulation 
        *   Likely worked with spreadsheets and interactive stats tools (SAS)
        *   Familiar with tabular data structure
        *   Familiar with filtering and summarizing data in groups
        *   Understands basic statistics (mean, stdev, lm) to compare groups
    *   Should have some limited programming experience in R, including:
        *   Content from Lessons 00 - 04 of Data Carpentry's [analyzing ecological data in R][R-ecology-lesson]
        *   How to load a CSV (`read.csv()`) 
        *   Basic `dplyr` function (`filter()`, `summarize()`, etc.)
*   Constraints
    *   One half day 0:00-4:00
        *   3:45 teaching time
        *   0:15 coffee break
    *   Learners use native installs on their own machines
        *   Must setup native local install prior to lesson
        *   No time is included in schedule for software setup
    *   Use RStudio for project management and live coding
*   Data
    *   Use the [Gapminder data][gapminder-data] throughout
    *   Break into multiple files by continent 
        *   GDP, Population, Lifespan, other variables?
        *   To make display of output from examples tidier (use Oceana, which is only two lines)
    *   Choose various data types or vary analysis to include all of the choices for visualization
    *   Develop examples to show use of multiple data sets?  
*   Focus on `dplyr` and `ggplot2`
    *   Makes lesson usable to novice programmers by avoiding control flow
    *   Genuine novices are likely to need some introductory support
*   Exercises will mostly *not* be "write this code from scratch"
    *   Focus on decision-making of data structure and visualization
    *   Lots of short exercises that can reliably be finished in allotted time
    *   Use MCQs, fill-in-the-blanks, Parsons Problems, "tweak this code", etc.
*   Lesson materials
    *   Notes for instructors and self-study will be written in Markdown
    *   Learners could be provided with decision tree and solution code for each  exercise

## Stage 1 - Desired Results

### Goals

1.  Learners will be able to navigate [Choosing a Good Chart][good-chart].
    *   The appropriate graphic should be chosen to respond directly to the scientific question/hypothesis that is to be addressed with the data
    *   Key decisions
        1.  What is the structure of the data/results to communicate?
            *   Relationship
            *   Comparison
            *   Distribution
            *   Composition
        2.  How many variables or categories need to be conveyed?
            *   Is one of those variables time?
        3.  How much data is available for each variable or category?
        4.  Are absolute or relative values more appropriate to communicate?
2.  Learners will be able to implement the appropriate graphical device using `dplyr` and `ggplot2`.
    *   Basic graphing layers
        *   `ggplot()` 
        *   `aes()`
        *   `geom_line()`
        *   `geom_bar()`
        *   `geom_smooth()`
        *   `geom_point()`        
        *   `geom_boxplot()`
        *   `geom_smooth()`
    *   Facet subplots
        *   `facet_grid()`
        *   `facet_wrap()`
    *   Dataset and aesthetic adjustments (*Publication quality figures*)
        *   `scale_manual()`
        *   `lims()`
        *   `labs()`
        *   `guide_legend()`
        *   `theme()`        

### Summative Assessment

*   Midpoint: Given a research question and some data, choose and generate the best chart.
*   Final: Evaluate an analysis report generated from code that includes four or five pairs of research questions and charts:
    1.  Modify some data that is laid out differently (*but is still tabular*) than what is required by the graphing process
    2.  Find and fix a chart that is not the best option to address the research question
    3.  Modify one chart to be publication quality

### Essential Questions

How do I...

*   Read, analyze, and visualize a tabular data set?
*   Manipulate, summarize, and analyze data to answer a research question?
*   Choose the best chart to answer my research question?
*   Generate the best chart to answer my research question?
*   Produce a publication quality version of my chart?

### Learners Will Be Able To...

*   Interactively generate analysis code and save it in a file
*   Read tabular data into a data frame
*   Manipulate and summarize tabular data using `dplyr`
*   Generate publication quality charts using `ggplot2`
*   Critique others' choices of charts and esthetics and express how to improve them
*   Access `help()`, vignette tutorials, and online documentation
*   Interpret common error/warning messages from `dplyr` and `ggplot2`

### Learners Will Know...

*   That a clearly defined research question is essential to a successful analysis and graphical representation of the results
*   Where to find documentation on `dplyr` and `ggplot2`
*   How to find out what other graphical software R offers

## Stage 2 - Learning Plan

### Introductions and Learning Objectives

*   Teaching: 15 min
*   Exercises: 0 min (accounted for in teaching time - no separate exercise)
    *   Ensure setup issues resolved
    *   Assess how much `dplyr` review will be necessary (15 min alotted below)

### Data Management in R

*   Teaching: 10 min
*   Exercises: 5 min
    *   Import Gapminder data (`read.csv()`)
    *   Gapminder data structure (`str()`, `head()`)

### Data Structures

*   Teaching: 5 min
*   Exercises: 5 min (identify data structure features in Gapminder data)
    *   Variables and categories
    *   Values and replicates
    *   Absolute values vs. relative values

### `dplyr` Recap

*   Teaching: 10 min
*   Exercises: 5 min
    *   `select()`
    *   `filter()`
    *   `group_by()`
    *   `summarize()`

### Scientific Questions and Hypotheses

*   Teaching: 10 min
*   Exercises: 5 min (match column A to B: structure term to question) 
    *   Define: distribution, relationship, comparison, composition

### Introduce 'Choosing a Good Chart'

*   Teaching: 10 min
*   Exercises: 5 min
    *   Chart dependends on scientific question and data structure
    *   "How was the population of Africa distributed across the continent by country in 2007?" 

### `ggplot`: Grammar of Graphics

*   Teaching: 10 min
*   Exercises: 5 min (Parsons Problem with components and form of `ggplot`)
    *   Aesthetics mapping
    *   Layers
    *   Themes

### Line Histogram

*   Teaching: 10 min
*   Exercises: 10 min
    *   Single variable distribution with many points
    *   "How was the population of Africa distributed across the continent by country in 2007?"
    *   `geom_histogram()`, `geom_density()`

### Publication Quality Figures

*   Teaching: 5 min
*   Exercises: 5 min
    *   `labs()`
    *   `theme()`
    *   Midpoint assessment

### *Coffee Break* 15 min

### Bubble Chart

*   Teaching: 10 min
*   Exercises: 10 min
    *   Relationship with three variables
    *   "What is the relationship of GDP per capita, life expectancy, and population across the world per country in 2007?"
    *   `geom_point()`, `geom_smooth()`
    *   `scale_manual()`

### Tidy Data Structure

*   Teaching: 5 min
*   Exercises: 5 min (Faded Problem to get `data.frame` for 'Faceted Table')
    *   Time series data

### Faceted Table of Histogram Bar Charts

*   Teaching: 5 min
*   Exercises: 15 min
    *   Comparison among many items/categories
    *   "How was the world population distributed among continents in 2007?"
    *   `facet_grid()`
    *   `lims()`

### Stacked Area Chart

*   Teaching: 5 min
*   Exercises: 15 min
    *   Composition changing over time
    *   "How has the composition of the world population among continents changed from 1952-2007?"
    *   `geom_line()`, `geom_area()`
    *   `guide_legend()`
    *   Final Assessment

### Wrap-Up

*   Teaching: 10 min
    *   Overview of choosing a good chart and `ggplot2`
    *   Other R graphing tools (i.e., interactive)
*   Exercises: 0 min


[R-ecology-lesson]: http://www.datacarpentry.org/R-ecology-lesson/
[dc-website]: http://datacarpentry.org
[gapminder-data]: http://www.gapminder.org/data/
[good-chart]: http://extremepresentation.typepad.com/.shared/image.html?/photos/uncategorized/choosing_a_good_chart.jpg
[instructor-training]: https://swcarpentry.github.io/instructor-training/
[swc-website]: http://software-carpentry.org
