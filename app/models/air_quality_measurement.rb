class AirQualityMeasurement < ApplicationRecord
  belongs_to :data_set
  belongs_to :air_quality_parameter

  def to_s
  	"#{measurement_datetime} - #{air_quality_parameter} - #{value} #{air_quality_parameter.air_quality_parameter_unit.symbol} [#{data_set}]"
  end
end
