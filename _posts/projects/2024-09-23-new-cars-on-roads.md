---
layout: post
title: New Cars on Czech Roads
subtitle: Which new cars are appearing on the czech roads?
categories: visualizations
tags: [visualizations, data]
excerpt_image: /assets/projects/cars_first_idea.png
---
# Backstory
When I was once driving home to Prague and debated family cars with my boyfriend I started to wonder what kind of cars do people buy nowadays. Is it still Skoda or Volkswagen or not? 
What is the proportion of electric vehicles? How many years into the past should one look into to see some changes unfold? I then started to ponder if the data are publicly available somewhere.

I've recently finished [Data Sketches book](https://www.datasketch.es/) by Nadieh Bermer and Shirley Wu, so I got an idea of attempting to create a poster with this information, which is something I've never done before.


## Data
Quick search brought me to ministerstvo dopravy, which appeared to have the exact data - about new vehicle registrations, even archive for multiple years.
One day sometime later I sat down to my computer after a month of hilday and I downloaded the data. To my sadness I found out that its quality was not the best and I deemed it unusable.
After another bit of searching, I found the [Registr vozidel Datacube](https://www.dataovozidlech.cz/), where I managed to obtain the neccessary data (so new registration in Czech republic from 1.1 to 1.7) in good enough quality.

<!-- ![Cars data example](/assets/projects/cars_data_example.png){: .center-block :} -->
![Cars data example]({% projects_url cars_data_example.png %}){: .center-block :}

There were many typos in dates (e.g. 0215 instead of 2015), but after fixing that it was ready to go.


## Questions

I sat down and tried to write down the questions that I was curious about and wanted them answered:
- What is the proportion of newly bought / imported from somewhere else
- What is the proportion of hybrids and electric cars (difference from previous years?)
- Top 5 models purchased
- Most popular brands - is it still Skoda and VW?
- What colors are trendy
- What is the most popular month for buying a car? Probably not right after Christmas?


## Analysis

The analysis with the code can also be found in XX.

## Poster Creation
As I've never created a poster before, I did some research to what tools to use. I was playing with the idea of using D3.js, but after seeing the overhead of creating a simple bar chart in D3.js, I decided not to go into this direction. (However, I understand the appeal of being able to control every figure aspect in D3.js and definitely want to revisit it in the future!)
So I decided to stick to something I know and that is generating the figures in Python.
For the poster itself, after some search I found Canva, which seemed to do what I needed, without harsh learning curve.

Before I started with the poster itself, I did a quick sketch of my imagination (I decided to use czech language for this one, as it was the target data country).

<!-- ![Cars posters proof of concept](/assets/projects/cars_first_idea.png){: .center-block :} -->
![Cars posters proof of concept]({% projects_url cars_first_idea.png %}){: .center-block :}

I quickly got an idea of using speedometer gauge for the proportion of new cars / foreign cars, but quickly found out its quite hard to do in Python.
I was able to get the half dougnut, but not the arrow.
