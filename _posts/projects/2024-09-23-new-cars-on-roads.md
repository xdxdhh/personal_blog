---
layout: post
title: New Cars on Czech Roads
subtitle: Which new cars are appearing on the czech roads?
categories: visualizations
tags: [visualizations, data]
---

<!-- {{ site.excerpt }} -->


When I was once driving home to Prague and debated family cars with my boyfriend, I began to wonder what kind of cars people buy nowadays. Is it still Skoda or Volkswagen, or is there finally some change in the air?
What is the proportion of electric vehicles? How many years into the past should one look into to see some changes unfold? I then started to ponder whether the data were publicly available somewhere.

I've recently finished the [Data Sketches](https://www.datasketch.es/) book by Nadieh Bremer and Shirley Wu, so I got the idea of trying to create a poster with this information, which I've never done before.


A quick search brought me to the Ministry of Transport, which appeared to have the exact data - about new vehicle registrations, even archives for multiple years.
One day sometime later I finally managed to find some time and sat down at my computer and downloaded the data. To my sadness, I found out that its quality was not the best and I deemed it unusable.
After another bit of searching, I found the [Vehicle Registration Datacube](https://www.dataovozidlech.cz/), where I managed to obtain the necessary data (all vehicle registrations in the Czech Republic from January to July) in good enough quality.

![Cars data example]({% projects_url cars_data_example.png %}){: .center-block :}

Upon closer inspection of the data I found many typos in dates (e.g. 0215 instead of 2015), but after fixing that it was ready to go.
I tried to write down the questions that I was curious about and wanted them answered (and preferably also visualized):
- What is the proportion of newly bought cars and cars imported from different county?
- What is the proportion of hybrids and electric cars (maybe also difference from previous years)?
- Top 5 models purchased?
- Most popular brands - is it still Skoda and Volkswagen?
- What colors are trendy?
- What is the most popular month for buying a car? Probably not right after Christmas?


I loaded the data into Python and was ready to go. 
First I inspected the number of newly bought cars vs. the imported ones. The results did not surprise me very much, but what surprised me was that the average age of an imported car was 10 years! 
And that was even after filtering cars that were more than TODO years old - as they are hopefully not regularly driven on the roads.
No wonder that I see so many old cars on the Czech roads.


TODO obrazek

I was surprised to discover that only 3% of cars were electric and another 3% were hybrids. Curious about how this compared to the rest of Europe, I found that the EU average is 14.4% for electric vehicles and 35.6% for hybrids. This seemed quite low, so I did some further research online. It turned out the data was accurate: the Czech Republic lags behind most of the EU in new electric vehicle purchases. This alone would not surprise me, but the difference was much larger than I anticipated.

![EV EU vs Czech]({% projects_url cars_eu_czech_ev.png %})
_Source: [European Environment Agency](https://www.eea.europa.eu/en/analysis/indicators/new-registrations-of-electric-vehicles)_

Not gonna lie, this fact made me a bit sad.


What didn’t surprise me, though, were the most popular car brands. As expected, Škoda and Volkswagen dominated the market, with Škoda accounting for almost a third of all new cars. Volkswagen managed 11.5%, while Hyundai and Toyota each captured over 6%. All other brands made up only a few percent.

TODO Obrazek

Thanks to this Škoda's massive market share, five of the six most purchased cars were Škoda models. 
The only exception was the Hyundai i30, which managed to break into the top ranks.
The most popular brand of pure EVs (not hybrids) was Tesla, which accounted for 37% of all new EVs.

TODO Obrazek

The most popular color trio was, unsurprisingly, gray, white, and black, followed by blue and red.

TODO Obrazek


Registrations were fairly evenly distributed over the six months, with perhaps a slight upward trend. There was an EU initiative aimed at boosting EV sales, which led the Czech government to introduce a program offering businesses a discount of up to 300,000 CZK on electric vehicle purchases—a significant incentive. This initiative began in mid-March, and I believe the first EVs bought through this program appeared in April. (By the way, the 2 billion CZK allocated for this program was fully used up by the end of October, making it quite a success.) So, I wondered if I will be able to see higher number of EV registrations from April onwards.

TODO Results

I would also like to make a separate analysis of the results of this initiative in the future, as I find it quite interesting.

power output



As I've never created a poster before, I did some research on what tools to use. I was playing with the idea of using D3.js, but after seeing the overhead of creating a simple bar chart in D3.js, I decided not to go in this direction. (However, I understand the appeal of being able to control every figure aspect in D3.js and definitely want to revisit it in the future!)
So I decided to stick to something I know and that is generating the figures in Python.
For the poster itself, after some searching, I found Canva, which seemed to do what I needed, without any harsh learning curve.

Before I started with the poster itself, I did a quick sketch of my imagination (I decided to use the Czech language for the poster, as it was the target data country).
My first imagination looked like this :D

![Cars posters proof of concept]({% projects_url cars_first_idea.png %}){: .center-block :}

I immediately got the idea of using a speedometer gauge for the proportion of new and imported cars, but quickly found out it is quite hard to do in Python.
I was able to get the half doughnut, but not the arrow.
Thankfully a combination of good old GIMP with Canva saved me, and I obtained a somewhat acceptable chart.

![Cars posters proof of concept]({% projects_url cars_gauge.png %}){: .center-block style="width: 50%; max-width: 300px; height: auto;" }

The other charts were not that difficult to get, and by doing the labels in Canva it was even easier.