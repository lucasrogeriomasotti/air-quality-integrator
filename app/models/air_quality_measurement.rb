class AirQualityMeasurement < ApplicationRecord
  belongs_to :data_set
  belongs_to :air_quality_parameter
end
