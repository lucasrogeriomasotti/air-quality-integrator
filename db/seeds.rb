# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
micrograms_per_cubic_meter = AirQualityParameterUnit.create!(name: 'Micrograms per cubic meter', symbol: 'µg/m3')
ppm = AirQualityParameterUnit.create!(name: 'Parts per million', symbol: 'ppm')

AirQualityParameter.create(name: 'PM 2.5', description: 'Particulate matter less than 2.5 micrometers in diameter', air_quality_parameter_unit: micrograms_per_cubic_meter)
AirQualityParameter.create(name: 'PM 10', description: 'Particulate matter less than 10 micrometers in diameter', air_quality_parameter_unit: micrograms_per_cubic_meter)
AirQualityParameter.create(name: 'Ozone', air_quality_parameter_unit: ppm)
AirQualityParameter.create(name: 'Sulfur Dioxide SO2 ', air_quality_parameter_unit: ppm)