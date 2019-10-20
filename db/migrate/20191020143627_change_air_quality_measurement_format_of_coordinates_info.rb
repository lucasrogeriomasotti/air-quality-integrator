class ChangeAirQualityMeasurementFormatOfCoordinatesInfo < ActiveRecord::Migration[6.0]
  def change
  	remove_column :air_quality_measurements, :coordinates
  	add_column :air_quality_measurements, :latitude, :decimal
  	add_column :air_quality_measurements, :longitude, :decimal
  end
end
