class AirQualityParameter < ApplicationRecord
  belongs_to :air_quality_parameter_unit
  def to_s
  	name
  end
end
