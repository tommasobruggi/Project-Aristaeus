# Welcome to Project Aristaeus

## The Challenge

This project is tackling the *Quiet Planet* Space Apps COVID-19 Challenge by NASA. The challenge is to use space-based data to document the global to local environmental changes caused by Covid-19 and the associated societal responses.

## Project Aims & Achievements

Project Aristaeus aims to raise awareness of the endangered bee populations, which struggle to survive. We provide the first website which uses space-based environmental data to monitor geographically where bee populations can thrive in the UK. Project Aristaeus correlates climatic data, specifically the daytime temperature, ground ozone and nitrogen dioxide concentrations, and both normalized difference and enhanced vegetation indexes to quickly compare and evaluate the changes in environmental factors which could lead to bee species extinction.

Check out our [Project Aristaeus website!](https://aristeaus.herokuapp.com/)

## Problem Description

The COVID-19 outbreak has affected people across 185 countries, and the effects have reached unbelievable levels, beyond the spread of the disease itself and efforts to quarantine it. However, as people have been confined to their homes, and the major industrial areas have reduced their production rates, wildlife has discovered a *Quiet Planet*, with less human disturbance, traffic and polluting fumes. In the UK, some councils are redistributing the resources to pandemic-related activities, leaving the roadside verges uncut. This has not only stimulated wildflowers bloom, but also changed the declining trend in the wild bee population. 

For British bees, there is still hope as a first step could be taken by some authorities from Devon, which have already accepted that the verge mowing operation should be done later and less frequently. But what about the other endangered species?

Through our project, we would like to show that even the slightest change in societal habits could improve the life of organisms on Earth. We are living in near-unprecedented times and we believe the minimal impact of human factors on the environment is a great opportunity to learn better about our ecosystem.

<p align="center">
  <img src="https://github.com/DemetrisChr/project-aristaeus/blob/master/Poster_final.png">
</p>

## What inspired us

Nowadays, things are changing quickly, and NASA has demonstrated to us that the sky is no more the limit. However, for other organisms, Earth is the only home, and their lives rely on how humans manage to keep the fragile natural equilibrium intact. Bees represent just a tiny percent of the whole endangered species all around the world, each one providing important ecosystem services. ⅓ of the global food is pollination dependent and nearly 80% of the insect crop pollination is done by honey bees. Therefore, protecting them, we will be able to support the food chain worldwide, responding to the Sustainable Development Goal (SDG) 2: ZERO HUNGER. 

As bees are great indicators of how healthy, or otherwise, our environment is, Project Aristaeus also tackles other sustainable development goals proposed by the United Nations. Specifically, it offers insights into SDG 15: THE LIFE ON EARTH and SDG 13: CLIMATE ACTION. 

We have come up with an automated information portal, in which climatic data, specifically the daytime temperature, is correlated with land use, ground ozone and nitrogen dioxide concentrations, and both normalized difference and enhanced vegetation indexes. This portal is accessible publicly but is targeted towards local government agencies and environmental associations. For now, this addresses the UK only but we plan on scaling the initiative worldwide.

## Environmental Factors

We document how healthy bee environments have changed through the months of January to May due to the lockdown policy that was implemented in the United Kingdom and Ireland on March 23rd 2020.

The environmental factors which we decided would constitute a healthy bee environment, subject to the quantification of these factors meeting a pre-determined threshold, consist of the following:

1. Normalized Difference Vegetation Index (NDVI): Using near-infrared and red light satellite measurements, the NDVI is a metric between   -1 and +1 which quantifies the amount of vegetation present on the land. An NDVI value of -1 indicates that an area is most likely a     body of water meanwhile an NDVI value of +1 indicates the presence of dense forest with high probability.

2. Enhanced Vegetation Index (EVI): The EVI is very similar to the NDVI but now takes values between 0 and +1, where +1 indicates a high   probability of dense vegetation. The EVI has been optimised to: 

    * Be more sensitive to changes in areas having high biomass (a serious shortcoming of NDVI).
    * Reduce the influence of atmospheric conditions on vegetation index values.
    * Correct for canopy background signals.
    
3. Land Surface Temperature (LST): This is the radiative skin temperature of the land surface.

4. Concentration of Ozone Gas (O3): A measure of the amount of ozone gas present in the troposphere.

5. Concentration of Nitrogen Dioxide Gas (NO2): A measure of the amount of nitrogen dioxide gas present in the troposphere.

## Data Retrieval & Analysis

All 5 datasets above were retrieved from [NASA's Earthdata Search](https://search.earthdata.nasa.gov/search). 
For Project Aristaeus, we utilised measurements taken from NASA's Aura and Terra missions. The data collected from the Terra mission utilised the MODIS instrument which provided us with measurements of NDVI, EVI and land surface temperature (LST). Meanwhile, the Aura mission, utilising the OMI instrument, provided us with measurements of concentrations for ozone and nitrogen dioxide gas in the troposphere.

For each dataset and for every month (from January to May inclusive) a figure was created which represents the average values of the month.

Data analysis was conducted using Python 3, Jupyter Notebooks and MATLAB.
This was necessary because the satellite-based data (such as hdf and he5 files) required careful processing for further analysis and plotting. 

All datasets are then combined to form a single map for each month outlining the optimal geographical locations for bees to prosper. This is achieved by presenting a novel approach: the Healthy Bee Environment Criteria.

## Healthy Bee Environment Criteria

As can be viewed below, a map of the UK (and Ireland) has been divided into small regional units. Each unit on the map is associated with a value for how suitable the region is for bee habitats. If all of a region’s features fit the criteria above for healthy bee habitats, then this region is coloured yellow. If a region is unsuitable for bee habitats, then the region is coloured blue.
As an example, the map below represents the Healthy Bee Environment Criteria outlined below for the month of January.

<p align="center">
  <img src="https://github.com/DemetrisChr/project-aristaeus/blob/master/January%20result.png">
</p>

1. NDVI (0.5 - 1.0): This variable is used as a coarse-grain metric of the amount of food available to various colonies of bees in the local area. Bee populations thrive in dense forestry hence making this variable highly influential. If NDVI values in a region lie between 0.5 and 1.0, that region will subsequently gain +1 to their score. 

2. EVI (0.5 - 1.0): This variable is used as a coarse-grain metric of the amount of food available to various colonies of bees in the local area. Bee populations thrive in dense forestry hence making this variable highly influential. If EVI values in a region lie between 0.5 and 1.0, that region will subsequently gain +1 to their score. 

3. Temperature (15-30 degrees celsius): Bee populations tend to sleep in colder months rendering bee abundance lower over the Winter. The lowest temperature recorded in a month is said to be negatively correlated with bee abundance. If the average temperature for the month lies between 15 and 30 degrees celsius, that region will subsequently gain +0.75 to their score.

4. Concentration of Ozone: Studies have shown (see [Related Literature](#related-literature)) that high concentrations of ozone (O3) gas can interfere with the volatile organics compounds emitted by flora. This can hinder bees not only in finding food but also in spreading pollen throughout the environment, this effectively reduces the number of flowers that will bloom in the future. The data collected for O3 gas ranged between 230 and 500 Dobson units. In order to reward areas moderately with lower O3 concentrations in the UK and Ireland, if a region’s O3 concentrations were lower than 345 Dobson units, that region will subsequently gain +0.40 to their score. Due to the research on how this environmental factor affects bee populations being relatively new, we decided to moderate the reward given.

5. Concentration of Nitrogen Dioxide: Studies have shown (see [Related Literature](#related-literature)) that high concentrations of Nitrogen Dioxide (NO2) gas can interfere with the volatile organics compounds emitted by flora. This can hinder bees not only in finding food but also in spreading pollen throughout the environment, this effectively reduces the number of flowers that will bloom in the future. The data collected for NO2 ranged between ~ 1.05e15 - 9.78e15 molecules per cm^2. In order to reward areas moderately with lower NO2 concentrations in the UK and Ireland, if a region’s NO2 concentrations were lower than 3.5e15 molecules per cm^2, that region will subsequently gain +0.40 to their score. Due to the research on how this environmental factor affects bee populations being relatively new, we decided to moderate the reward given.

Results are neatly presented on our [website](https://aristeaus.herokuapp.com/) which was developed using a flask server and bootstrap for the front-end.

## Authors

- [Tommaso Bruggi](https://www.linkedin.com/in/tommasobruggi/)
- [Callum Abbott](https://www.linkedin.com/in/c-abbott/)
- [Clara Edmonds](https://www.youtube.com/channel/UCK7Z8YWukZ2QGBlCDN7LEog)
- [Nikolas Pilavakis](https://www.linkedin.com/in/nikolas-pilavakis-a967a11a1/)
- [Rebeca Ursu](https://www.linkedin.com/in/rebeca-elena-ursu/)
- [Demetris Christodoulou](https://www.linkedin.com/in/dimitris-c/)

Connect with us and feel free to contact us!

## Related Literature

1. Stefan Dötterl, Marina Vater, Thomas Rupp, and Andreas Held, [Ozone Differentially Affects Perception of Plant Volatiles in Western Honey Bees](https://link.springer.com/article/10.1007/s10886-016-0717-8), Springer, 25th of June 2016
2. Misha Leong, George K. Roderick, [Remote sensing captures varying temporal patterns of vegetation between human-altered and natural landscapes](https://pubmed.ncbi.nlm.nih.gov/26290795/), NCBI, 4th of August 2015
2. [Coronavirus may prove boost for UK's bees and rare wildflowers](https://www.theguardian.com/environment/2020/apr/09/coronavirus-may-prove-boost-for-uks-bees-and-rare-wildflowers), The Guardian, 9th of April 2020
3. [20 facts you need to know about bees](https://friendsoftheearth.uk/bees/20-facts-you-need-know-about-bees), Friends of Earth, 7th of April 2019
4. [It Takes 2 Million Flowers to Make 1 lb. of Honey](https://aghires.com/honey-bees/), AgHires, 31st of August 2018
5. Margaret J. Couvillon, Ginny Fitzpatrick, Anna Dornhaus, [Ambient Air Temperature Does Not Predict whether Small or Large Workers Forage in Bumble Bees (Bombus impatiens)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4440703/), NCBI, 21st of May 2015
6. Jai M. Holt, [The effects of environmental factors on honey bee morbidity](https://www.ideals.illinois.edu/handle/2142/50359), Illinois, 20th of May 2014

## License 

This work is provided under the terms of Creative Commons Attribution 4.0 International ([CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/)) license.
