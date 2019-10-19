json.extract! air_quality_measurement, :id, :data_set_id, :measurement_datetime, :air_quality_parameter_id, :value, :location, :city, :country, :coordinates, :radius, :created_at, :updated_at
json.url air_quality_measurement_url(air_quality_measurement, format: :json)
