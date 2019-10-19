class AirQualityParameterUnit < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :symbol
  validates_uniqueness_of :name
  validates_uniqueness_of :symbol
end
