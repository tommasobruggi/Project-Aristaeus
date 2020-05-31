# Welcome to Project Aristaeus

## The Challenge

This project is tackling the *Quiet Planet* Space Apps COVID-19 Challenge by NASA. The challenge is to use space-based data to document the global to local environmental changes caused by Covid-19 and the associated societal responses.

## Project Aims & Achievements

Project Aristaeus aims to raise awareness of the endangered bee populations, which struggle to survive. We provide the first website which uses space-based environmental data to monitor geographically where bee populations can thrive in the UK. Project Aristaeus is also a useful tool to quickly compare and evaluate the changes in environmental factors which could lead to species extinction.

Check out our website!

[Project Aristaeus website](https://aristeaus.herokuapp.com/)

## Problem Description

The COVID-19 outbreak has affected people across 185 countries, and the effects have reached unbelievable levels, beyond the spread of the disease itself and efforts to quarantine it. However, as people have been confined to their homes, and the major industrial areas have reduced their production rates, wildlife has discovered a Quiet Earth, with less human disturbance, traffic and polluting fumes. In the UK, some councils redistribute the resources to pandemic-related activities, leaving the roadside verges uncut. This has not only stimulated wildflowers bloom, but also changed the declining trend in the wild bee population. 

For British bees, there is still hope as a first step could be taken by some authorities from Devon, which have already accepted that the verge mowing operation should be done later and less frequently. But what about the other endangered species?

Through our project, we would like to show that even the slightest change in societal habits could improve the life of organisms on Earth. We are living in near-unprecedented times and we believe the minimal impact of human factors on the environment is a great opportunity to learn better about our ecosystem.

## What inspired us

Nowadays, things are changing quickly, and NASA has demonstrated to us that the sky is no more the limit. However, for other organisms, Earth is the only home, and their lives rely on how humans manage to keep the fragile natural equilibrium intact. Bees represent just a tiny percent of the whole endangered species all around the world, each one providing important ecosystem services. ⅓ of the global food is pollination dependent and nearly 80% of the insect crop pollination is done by honey bees. Therefore, protecting them, we will be able to support the food chain worldwide, responding to the Sustainable Development Goal (SDG) 2: ZERO HUNGER. 

As bees are great indicators of how healthy, or otherwise, our environment is, Project Aristaeus also tackles other sustainable development goals proposed by the United Nations. Specifically, it offers insights into SDG 15: THE LIFE ON EARTH and 13: CLIMATE ACTION. 

We have come up with an automated information portal, in which climatic data, specifically the daytime temperature, is correlated with land use, ground ozone and nitrogen dioxide concentrations, and both normalized difference and enhanced vegetation indexes. This portal is accessible publicly but is targeted towards local government agencies and environmental associations.

## Data Retrieval & Analysis

Datasets were retrieved from a variety of sources, mainly from NASA’s Earthdata Search (https://search.earthdata.nasa.gov/search).
Data analysis was conducted using Python 3, Jupyter Notebooks and MATLAB.
The website was developed using a flask server and bootstrap for the front-end.

Problems:
One of the main problems we encountered was opening hdf and he5 files downloaded from the Earthdata search to analyze the desired data. None of us had any experience in dealing with satellite-based data prior to this challenge.

Achievements:
Having said that, we were able to find very interesting data and to visualize it effectively (e.g. using earthpy) combining data from different geographical locations. Using a slider the reader can clearly see how the vegetation indices have increased across most of the UK since the beginning of the pandemic, for example.

PROBABLY NEED TO GO MORE IN DEPTH

## Authors

- [Tommaso Bruggi](https://www.linkedin.com/in/tommasobruggi/)
- [Callum Abbott](https://www.linkedin.com/in/c-abbott/)
- [Clara Edmonds](https://www.youtube.com/channel/UCK7Z8YWukZ2QGBlCDN7LEog)
- [Nikolas Pilavakis](https://www.linkedin.com/in/nikolas-pilavakis-a967a11a1/)
- [Rebeca Ursu](https://www.linkedin.com/in/rebeca-elena-ursu/)
- [Demetris Christodoulou](https://www.linkedin.com/in/dimitris-c/)

Connect with us and feel free to contact us!

## Related Literature

1. Stefan Dötterl, Marina Vater, Thomas Rupp, and Andreas Held, 'Ozone Differentially Affects Perception of Plant Volatiles in Western Honey Bees', 25th of June 2016
2. Misha Leong, George K. Roderick, 'Remote sensing captures varying temporal patterns of vegetation between human-altered and natural landscapes', 4th of August 2015
2. ‘Coronavirus may prove boost for UK's bees and rare wildflowers’, The Guardian, 9th of April, 2020
3. ‘20 facts you need to know about bees’, Friends of Earth
4. ‘It Takes 2 Million Flowers to Make 1 lb. of Honey’, AgHires, 31st of August, 2018
5. Margaret J. Couvillon, Ginny Fitzpatrick, Anna Dornhaus, 'Ambient Air Temperature Does Not Predict whether Small or Large Workers Forage in Bumble Bees (Bombus impatiens)', 21st of May 2015

## License 

This work is provided under the terms of Creative Commons Attribution 4.0 International ([CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/)) license.
