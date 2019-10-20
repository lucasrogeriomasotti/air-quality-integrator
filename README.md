# Air Quality IntegratorI"•node_modules/express/lib/application.js?type=application/javascript&pipeline=self&id=b36fdf57eb436d9a903531c0fbcfde7dad3aca05b1a50c2daafdadc13cebd3d1:ET

This project was built for the [Surface-to-Air (Quality) Mission Nasa Space Apps Challenge 2019](https://2019.spaceappschallenge.org/challenges/living-our-world/surface-air-quality-mission/details).

Its goal is to aggregate air quality data from different sources and provide the most reliable data.

## The challenge
Integrate NASA data, ground-based air quality data, and citizen science data to create an air quality surface that displays the most accurate data for a location and time. Create algorithms that select or weight the best data from several sources for a specific time and location, and display that information.

## Data schema


### Parameters
* PM 2.5 (µg/m³): Particulate matter less than 2.5 micrometers in diameter
* PM 10 (µg/m³): Particulate matter less than 10 micrometers in diameter
* Ozone (ppm)
* Sulfur Dioxide SO2 (ppm)

## TODO
* Display the results on a map
* Improve statistical analyis of the data
* Import data as CSV
* Dynamic data sources (from APIs)
	* API - Air Quality Programmatic APIs (aqicn.org)
	* Reference Ground Monitor Data (OpenAQ)
* Evaluate data quality across differente sources
	* Weighted average based on user provided confidence level
	* Number of available measurements for the requested location
	* Compare data sets and check the difference between them, to find anomalies
	* Measure of data set reliability, based on the inverse of deviation (variability measure) as weight for the weighted average
* Store guideline values from different organizations and correlate them with the measures on the system

## Inspirations
* [Open AQ Platform API](https://openaq.org)