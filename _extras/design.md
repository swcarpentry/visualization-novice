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

### Running and Quitting Interactively

*   Teaching: 15 min (because setup issues)
*   Exercises: 0 min (accounted for in teaching time - no separate exercise)
    *   Run the Notebook
    *   Create a few Markdown cells
    *   Create and execute a Python cell that prints 1+2

### Variables and Assignment

*   Teaching: 5 min
*   Exercises: 5 min
    *   Trace behavior of swapping (`a, b = b, a` the old fashioned way) with an intermediate variable
    *   Calculate elapsed time in seconds using named values for seconds per minute, etc.

### Data Types and Type Conversion

*   Teaching: 5 min
*   Exercises: 5 min
    *   Predict result types (or errors) of various operations
    *   Add conversion functions to broken code to make it work

### Built-in Functions (and Methods) and Help

*   Teaching: 5 min
*   Exercises: 5 min
    *   Chain calculations with max and min
    *   Find a useful method using help(str)
    *   Parsons Problem to achieve specific results with string methods

### Error Messages

*   Teaching: 10 min (review of error messages seen to date)
*   Exercises: 10 min
    *   Diagnose and fix small errors (some syntax, some runtime)

### Libraries (Including Aliases)

*   Teaching: 5 min
*   Exercises: 5 min
    *   Operations with math library
    *   Look things up in the python.org docs

### Pandas Data Frames

*   Teaching: 10 min
*   Exercises: 10 min
    *   Import Pandas
    *   Create and display a data frame

### Reading Tabular Data

*   Teaching: 5 min
*   Exercises: 5 min
    *   Read one continent's subset of gapminder CSV data
*   Callout:
    *   How to read data from Excel spreadsheets via export to CSV
    *   How tor ead data from Excel spreadsheets directly (needs another library)

### Collective Operations

*   Teaching: 10 min
*   Exercises: 10 min
    *   Select various subsets of data
    *   Normalize values (scale to 0..1)

### Plotting

*   Teaching: 10 min (to show a variety of plots and debug display problems)
*   Exercises: 5 min
    *   Plot normalized change in GDP over time (tweaking provided code)

### For Loops

*   Teaching: 15 min (do *not* introduce lists)
*   Exercises: 10 min
    *   Reverse a string by repeated append
    *   Trace execution of loop

### Looping Over Data Sets

*   Teaching: 10 min (use glob to get filenames)
*   Exercises: 15 min
    *   Count rows of each data set
    *   Check number of columns in each data set is the same

### *Lunch Break*

### Lists

*   Teaching: 10 min
*   Exercises: 10 min
    *   Indexing exercises
    *   Conversion from list to string and back
    *   Sum values in a list

### Conditionals

*   Teaching: 10 min (inside loop)
*   Exercises: 15 min
    *   Count vowels
    *   Report badly-sized files inside loop

### Writing Functions

*   Teaching: 15 min
*   Exercises: 15 min
    *   Check size of a single data file
    *   Check sizes of all data files in a directory
        *   Write new function using previous function

### Documentation

*   Teaching: 5 min
*   Exercises: 10 min
    *   Add docstrings to functions written earlier

### Programming Style

*   Teaching: 10 min (mostly to introduce checklist)
*   Exercises: 15 min
    *   Clean up badly-written 20-line program

### Debugging

*   Teaching: 10 min (divide and conquer)
*   Exercises: 15 min
    *   Debug three-function program

### Defensive Programming

*   Teaching: 5 min
*   Exercises: 10 min
    *   Add assertions to functions based on docstrings

### Programming with Arrays

*   Teaching: 10 min
*   Exercises: 10 min
    *   More complicated array indexing

### Wrap-Up

*   Teaching: 25 min
    *   Overview of key SciPy modules
    *   How to find and install libraries
    *   Running Python from the command line
    *   Other editing tools
*   Exercises: 0 min


[R-ecology-lesson]: http://www.datacarpentry.org/R-ecology-lesson/
[dc-website]: http://datacarpentry.org
[gapminder-data]: http://www.gapminder.org/data/
[good-chart]: http://extremepresentation.typepad.com/.shared/image.html?/photos/uncategorized/choosing_a_good_chart.jpg
[instructor-training]: https://swcarpentry.github.io/instructor-training/
[swc-website]: http://software-carpentry.org
