---
title: "Data Management in R"
teaching: 10
exercises: 5
questions:
- "How do I import data into the R environment?"
- "What is the Gapminder data structure?"
objectives:
- "To read Gapminder data to R"
- "To evaluate Gapminder data structure"
keypoints:
- "Be sure to setup an RStudio project or `setwd()` to point to your data file
  before importing it."
- "Import data using `read.csv()`."
- "Familiarize yourself with your data and its structure prior to analysis."
---

## Import your data.

Be sure that the [data][data] is downloaded to a project folder that is connected to your RStudio project or your working directory of your R console.

Import the data using `read.csv()`.
 
~~~
data <- read.csv("gapminder_all.csv")
~~~
{: .r}

## Learn the structure of your data.

Some base R functions are useful to check out the structure of your data.

- `head()` shows all of the columns (or variables) with just the first six rows,
  but it is not great for data with a lot of columns. Like this:

~~~
head(data)
~~~
{: .r}

> ## output
> ~~~
>   continent      country gdpPercap_1952 gdpPercap_1957 gdpPercap_1962 gdpPercap_1967 gdpPercap_1972
> 1    Africa      Algeria      2449.0082      3013.9760      2550.8169      3246.9918      4182.6638
> 2    Africa       Angola      3520.6103      3827.9405      4269.2767      5522.7764      5473.2880
> 3    Africa        Benin      1062.7522       959.6011       949.4991      1035.8314      1085.7969
> 4    Africa     Botswana       851.2411       918.2325       983.6540      1214.7093      2263.6111
> 5    Africa Burkina Faso       543.2552       617.1835       722.5120       794.8266       854.7360
> 6    Africa      Burundi       339.2965       379.5646       355.2032       412.9775       464.0995
>   gdpPercap_1977 gdpPercap_1982 gdpPercap_1987 gdpPercap_1992 gdpPercap_1997 gdpPercap_2002 gdpPercap_2007
> 1      4910.4168      5745.1602      5681.3585      5023.2166      4797.2951      5288.0404      6223.3675
> 2      3008.6474      2756.9537      2430.2083      2627.8457      2277.1409      2773.2873      4797.2313
> 3      1029.1613      1277.8976      1225.8560      1191.2077      1232.9753      1372.8779      1441.2849
> 4      3214.8578      4551.1421      6205.8839      7954.1116      8647.1423     11003.6051     12569.8518
> 5       743.3870       807.1986       912.0631       931.7528       946.2950      1037.6452      1217.0330
> 6       556.1033       559.6032       621.8188       631.6999       463.1151       446.4035       430.0707
>   lifeExp_1952 lifeExp_1957 lifeExp_1962 lifeExp_1967 lifeExp_1972 lifeExp_1977 lifeExp_1982 lifeExp_1987
> 1       43.077       45.685       48.303       51.407       54.518       58.014       61.368       65.799
> 2       30.015       31.999       34.000       35.985       37.928       39.483       39.942       39.906
> 3       38.223       40.358       42.618       44.885       47.014       49.190       50.904       52.337
> 4       47.622       49.618       51.520       53.298       56.024       59.319       61.484       63.622
> 5       31.975       34.906       37.814       40.697       43.591       46.137       48.122       49.557
> 6       39.031       40.533       42.045       43.548       44.057       45.910       47.471       48.211
>   lifeExp_1992 lifeExp_1997 lifeExp_2002 lifeExp_2007 pop_1952 pop_1957 pop_1962 pop_1967 pop_1972 pop_1977
> 1       67.744       69.152       70.994       72.301  9279525 10270856 11000948 12760499 14760787 17152804
> 2       40.647       40.963       41.003       42.731  4232095  4561361  4826015  5247469  5894858  6162675
> 3       53.919       54.777       54.406       56.728  1738315  1925173  2151895  2427334  2761407  3168267
> 4       62.745       52.556       46.634       50.728   442308   474639   512764   553541   619351   781472
> 5       50.260       50.324       50.650       52.295  4469979  4713416  4919632  5127935  5433886  5889574
> 6       44.736       45.326       47.360       49.580  2445618  2667518  2961915  3330989  3529983  3834415
>   pop_1982 pop_1987 pop_1992 pop_1997 pop_2002 pop_2007
> 1 20033753 23254956 26298373 29072015 31287142 33333216
> 2  7016384  7874230  8735988  9875024 10866106 12420476
> 3  3641603  4243788  4981671  6066080  7026113  8078314
> 4   970347  1151184  1342614  1536536  1630347  1639131
> 5  6634596  7586551  8878303 10352843 12251209 14326203
> 6  4580410  5126023  5809236  6121610  7021078  8390505
> ~~~
> {: .output}
{: .solution}

- `str()` gives the "shape" of the data by observations and variables and lists
  all of the variables and their `class()`.

~~~
str(data)
~~~
{: .r}

> ## output
> ~~~
> 'data.frame':	142 obs. of  38 variables:
>  $ continent     : Factor w/ 5 levels "Africa","Americas",..: 1 1 1 1 1 1 1 1 1 1 ...
>  $ country       : Factor w/ 142 levels "Afghanistan",..: 3 4 11 14 17 18 20 22 23 27 ...
>  $ gdpPercap_1952: num  2449 3521 1063 851 543 ...
>  $ gdpPercap_1957: num  3014 3828 960 918 617 ...
>  $ gdpPercap_1962: num  2551 4269 949 984 723 ...
>  $ gdpPercap_1967: num  3247 5523 1036 1215 795 ...
>  $ gdpPercap_1972: num  4183 5473 1086 2264 855 ...
>  $ gdpPercap_1977: num  4910 3009 1029 3215 743 ...
>  $ gdpPercap_1982: num  5745 2757 1278 4551 807 ...
>  $ gdpPercap_1987: num  5681 2430 1226 6206 912 ...
>  $ gdpPercap_1992: num  5023 2628 1191 7954 932 ...
>  $ gdpPercap_1997: num  4797 2277 1233 8647 946 ...
>  $ gdpPercap_2002: num  5288 2773 1373 11004 1038 ...
>  $ gdpPercap_2007: num  6223 4797 1441 12570 1217 ...
>  $ lifeExp_1952  : num  43.1 30 38.2 47.6 32 ...
>  $ lifeExp_1957  : num  45.7 32 40.4 49.6 34.9 ...
>  $ lifeExp_1962  : num  48.3 34 42.6 51.5 37.8 ...
>  $ lifeExp_1967  : num  51.4 36 44.9 53.3 40.7 ...
>  $ lifeExp_1972  : num  54.5 37.9 47 56 43.6 ...
>  $ lifeExp_1977  : num  58 39.5 49.2 59.3 46.1 ...
>  $ lifeExp_1982  : num  61.4 39.9 50.9 61.5 48.1 ...
>  $ lifeExp_1987  : num  65.8 39.9 52.3 63.6 49.6 ...
>  $ lifeExp_1992  : num  67.7 40.6 53.9 62.7 50.3 ...
>  $ lifeExp_1997  : num  69.2 41 54.8 52.6 50.3 ...
>  $ lifeExp_2002  : num  71 41 54.4 46.6 50.6 ...
>  $ lifeExp_2007  : num  72.3 42.7 56.7 50.7 52.3 ...
>  $ pop_1952      : num  9279525 4232095 1738315 442308 4469979 ...
>  $ pop_1957      : num  10270856 4561361 1925173 474639 4713416 ...
>  $ pop_1962      : num  11000948 4826015 2151895 512764 4919632 ...
>  $ pop_1967      : num  12760499 5247469 2427334 553541 5127935 ...
>  $ pop_1972      : num  14760787 5894858 2761407 619351 5433886 ...
>  $ pop_1977      : num  17152804 6162675 3168267 781472 5889574 ...
>  $ pop_1982      : num  20033753 7016384 3641603 970347 6634596 ...
>  $ pop_1987      : num  23254956 7874230 4243788 1151184 7586551 ...
>  $ pop_1992      : num  26298373 8735988 4981671 1342614 8878303 ...
>  $ pop_1997      : num  29072015 9875024 6066080 1536536 10352843 ...
>  $ pop_2002      : int  31287142 10866106 7026113 1630347 12251209 7021078 15929988 4048013 8835739 614382 ...
>  $ pop_2007      : int  33333216 12420476 8078314 1639131 14326203 8390505 17696293 4369038 10238807 710960 ...
> ~~~
> {: .output}
{: .solution}

- `names()` generates a vector of all the variables in the data.

~~~
names(data)
~~~
{: .r}

> ## output
> ~~~
>  [1] "continent"      "country"        "gdpPercap_1952" "gdpPercap_1957" "gdpPercap_1962" "gdpPercap_1967"
>  [7] "gdpPercap_1972" "gdpPercap_1977" "gdpPercap_1982" "gdpPercap_1987" "gdpPercap_1992" "gdpPercap_1997"
> [13] "gdpPercap_2002" "gdpPercap_2007" "lifeExp_1952"   "lifeExp_1957"   "lifeExp_1962"   "lifeExp_1967"  
> [19] "lifeExp_1972"   "lifeExp_1977"   "lifeExp_1982"   "lifeExp_1987"   "lifeExp_1992"   "lifeExp_1997"  
> [25] "lifeExp_2002"   "lifeExp_2007"   "pop_1952"       "pop_1957"       "pop_1962"       "pop_1967"      
> [31] "pop_1972"       "pop_1977"       "pop_1982"       "pop_1987"       "pop_1992"       "pop_1997"      
> [37] "pop_2002"       "pop_2007" 
> ~~~
> {: .output}
{: .solution}

> ## Data Structures Challenge
>
> How many rows are in the Gapminder Data?
>
> A.  6 
> B.  38
> C.  142
> D.  2007
>
> > ## Answer
> >
> > C.  142
> {: .solution}
> 
> How many columns are in the Gapminder Data?
>
> A.  6
> B.  38
> C.  142
> D.  2007
>
> > ## Answer
> >
> > B.  38
> {: .solution}
{: .challenge}

[data]: {{ site.baseurl }}/data/gapminder_all.csv