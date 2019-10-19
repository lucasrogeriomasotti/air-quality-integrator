require 'test_helper'

class AirQualityMeasurementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @air_quality_measurement = air_quality_measurements(:one)
  end

  test "should get index" do
    get air_quality_measurements_url
    assert_response :success
  end

  test "should get new" do
    get new_air_quality_measurement_url
    assert_response :success
  end

  test "should create air_quality_measurement" do
    assert_difference('AirQualityMeasurement.count') do
      post air_quality_measurements_url, params: { air_quality_measurement: { air_quality_parameter_id: @air_quality_measurement.air_quality_parameter_id, city: @air_quality_measurement.city, coordinates: @air_quality_measurement.coordinates, country: @air_quality_measurement.country, data_set_id: @air_quality_measurement.data_set_id, location: @air_quality_measurement.location, measurement_datetime: @air_quality_measurement.measurement_datetime, radius: @air_quality_measurement.radius, value: @air_quality_measurement.value } }
    end

    assert_redirected_to air_quality_measurement_url(AirQualityMeasurement.last)
  end

  test "should show air_quality_measurement" do
    get air_quality_measurement_url(@air_quality_measurement)
    assert_response :success
  end

  test "should get edit" do
    get edit_air_quality_measurement_url(@air_quality_measurement)
    assert_response :success
  end

  test "should update air_quality_measurement" do
    patch air_quality_measurement_url(@air_quality_measurement), params: { air_quality_measurement: { air_quality_parameter_id: @air_quality_measurement.air_quality_parameter_id, city: @air_quality_measurement.city, coordinates: @air_quality_measurement.coordinates, country: @air_quality_measurement.country, data_set_id: @air_quality_measurement.data_set_id, location: @air_quality_measurement.location, measurement_datetime: @air_quality_measurement.measurement_datetime, radius: @air_quality_measurement.radius, value: @air_quality_measurement.value } }
    assert_redirected_to air_quality_measurement_url(@air_quality_measurement)
  end

  test "should destroy air_quality_measurement" do
    assert_difference('AirQualityMeasurement.count', -1) do
      delete air_quality_measurement_url(@air_quality_measurement)
    end

    assert_redirected_to air_quality_measurements_url
  end
end
