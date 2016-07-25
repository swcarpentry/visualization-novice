---
layout: page
title: "Lesson Design"
permalink: /design/
---
## Stage 0 - Assumptions

*   Audience
    *   Graduate students and practicing scientists 
        *   Materials not specific to discipline
    *   Must understand basic data management and manipulation 
        *   Likely worked with spreadsheets and interactive stats tools (SAS)
    *   Must understand basic statistics (mean, stdev, lm)
    *   Might have some limited programming experience
*   Constraints
    *   One full day 09:00-17:00
        *   06:30 teaching time
        *   1:00 for lunch
        *   0:30 total for two coffee breaks
    *   Learners use native installs on their own machines
        *   May use VMs or cloud resources at instructor's discretion
        *   Must also setup native local install as an option
    *   May draw from [r-novice-gapminder lesson][r-novice-gapminder]
        *   How much time do we spend to introduce tidy data structure, `dplyr`, `tidyr`?
    *   Use R Studio for project management and live coding
*   Data
    *   Use the [Gapminder data][gapminder-data] throughout
    *   Break into multiple files by continent 
        *   GDP, Population, Lifespan
        *   To make display of output from examples tidier (use Oceana, which is only two lines)
    *   Develop examples to show use of multiple data sets
        *   Choose to use different data types or vary analysis to include all of the various data types for visualization
*   Focus on `dplyr` and `ggplot2`
    *   Makes lesson usable to novice programmers by avoiding control flow
    *   Genuine novices are likely to need some introductory support
*   Exercises will mostly *not* be "write this code from scratch"
    *   Focus on decision-making of data structure and visualization
    *   Lots of short exercises that can reliably be finished in allotted time
    *   Use MCQs, fill-in-the-blanks, Parsons Problems, "tweak this code", etc.
*   Lesson materials
    *   Notes for instructors and self-study will be written in Markdown
    *   Learners could be provided with decision tree and solution code for each  exercises

## Stage 1 - Desired Results

### Goals

1.  Get learners to the stage described in the "Software" section of
    "[Good Enough Practices in Scientific Computing][good-enough]".
    *   Goals
        1.  Make it easy for people (including your future self) to understand and (re)use your code
        2.  Modular, comprehensible, reusable, and testable all come together
    *   Rules
        1.  Every analysis step is represented textually (complete with parameter values)
        2.  Every program or script has a brief explanatory comment at the start
        3.  Programs of all kinds (including "scripts") are broken into functions
        4.  No duplication
        5.  Functions and variables have meaningful names
        6.  Dependencies and requirements are explicit (e.g., a requirements.txt file)
            *   This rule is *not* covered in this lesson
        7.  Commenting/uncommenting are not routinely used to control program behavior
        8.  Use a simple example or test data set to run to tell if it's working at all and whether it gives a known correct output for a simple known input
        9.  Submit code to a reputable DOI-issuing repository upon submission of paper, just like data
            *   This rule is *not* covered in this lesson
2.  Enable them to make sense of other onlines tutorials and resources

### Summative Assessment

*   Midpoint: plot a bar chart showing the average GDP per continent from the data.
*   Final: given a two-page analysis program made up of five functions:
    1.  Modify the input function to read data that is laid out differently (but is still tabular).
    2.  Find and fix a bug in the analysis routine (off-by-one error).
    3.  Add an option to create a plot instead of dumping results as CSV.

### Essential Questions

How do I...

*   ...read, analyze, and visualize a tabular data set?
*   ...process multiple data sets?
*   ...tell if my program is working correctly?
*   ...fix it when it's not?
*   ...find and use software other people have written instead of writing my own?

### Learners Will Be Able To...

*   Run code interactively
*   Run code saved in a file
*   Write single-condition `if` statements
*   Convert between basic data types (integer, float, string)
*   Call built-in functions
*   Use `help` and online documentation
*   Import a library using an alias
*   Call something from an imported library
*   Read tabular data into an array or data frame
*   Do collective operations on arrays and data frames
*   Create simple plots of data in arrays and data frames
*   Interpret common error messages
*   Track down bugs by running small tests of program modules
*   Write non-recursive functions taking a fixed number of named parameters
*   Create literate programs in the Jupyter Notebook

### Learners Will Know...

*   That a program is a piece of lab equipment that implements an analysis
    *   Needs to be validated/calibrated before/during use
    *   Makes analysis reproducible, reviewable, shareable
*   That programs are written for people, not for computers
    *   Meaningful variable names
    *   Modularity for readability as well as re-use
    *   No duplication
    *   Document purpose and use
*   That there is no magic: the programs they use are no different in principle from those they build
*   How to assign values to variables
*   What integers, floats, strings, and data frames are
*   How to trace the execution of a `for` loop
*   How to create and index lists
*   How to trace the execution of `if`/`else` statements
*   The difference between defining and calling a function
*   What a call stack is
*   Where to find documentation on standard libraries
*   How to find out what else scientific Python offers

## Stage 2 - Learning Plan

This section originally presented a point-form outline of the lesson episodes
with time estimates for teaching and exercises.
That information is now in the syllabus on the front page.

[r-novice-gapminder]: http://swcarpentry.github.io/r-novice-gapminder/
[dc-website]: http://datacarpentry.org
[gapminder-data]: http://www.gapminder.org/data/
[good-enough]: https://github.com/swcarpentry/good-enough-practices-in-scientific-computing
[instructor-training]: https://swcarpentry.github.io/instructor-training/
[swc-website]: http://software-carpentry.org
