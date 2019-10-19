# Air Quality Integrator

## Challenge
Integrate NASA data, ground-based air quality data, and citizen science data to create an air quality surface that displays the most accurate data for a location and time. Create algorithms that select or weight the best data from several sources for a specific time and location, and display that information.


## Data
### Parameters
* PM 2.5 (µg/m³): Particulate matter less than 2.5 micrometers in diameter
* PM 10 (µg/m³): Particulate matter less than 10 micrometers in diameter
* Ozone (ppm)
* Sulfur Dioxide SO2 (ppm)

## TODO
* Import data
	* Air Quality System (AQS) - Los Angeles
	* Meteorological Data (MERRA2)
	* Reference Ground Monitor Data (OpenAQ)
* Evaluate data quality across differente sources
	* Weighted average based on user provided confidence level
	* Number of available measurements for the requested location
	* Compare data sets and check the difference between them, to find anomalies
	* Measure of data set reliability, based on the inverse of deviation (variability measure) as weight for the weighted average
* Store guideline values from different organizations and correlate them with the measures on the system

## Inspirations
* [Open AQ Platform API](https://openaq.org)