require 'test_helper'

class AirQualityParameterUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @air_quality_parameter_unit = air_quality_parameter_units(:one)
  end

  test "should get index" do
    get air_quality_parameter_units_url
    assert_response :success
  end

  test "should get new" do
    get new_air_quality_parameter_unit_url
    assert_response :success
  end

  test "should create air_quality_parameter_unit" do
    assert_difference('AirQualityParameterUnit.count') do
      post air_quality_parameter_units_url, params: { air_quality_parameter_unit: { name: SecureRandom.hex, symbol: SecureRandom.hex } }
    end

    assert_redirected_to air_quality_parameter_unit_url(AirQualityParameterUnit.last)
  end

  test "should show air_quality_parameter_unit" do
    get air_quality_parameter_unit_url(@air_quality_parameter_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_air_quality_parameter_unit_url(@air_quality_parameter_unit)
    assert_response :success
  end

  test "should update air_quality_parameter_unit" do
    patch air_quality_parameter_unit_url(@air_quality_parameter_unit), params: { air_quality_parameter_unit: { name: @air_quality_parameter_unit.name, symbol: @air_quality_parameter_unit.symbol } }
    assert_redirected_to air_quality_parameter_unit_url(@air_quality_parameter_unit)
  end

  test "should destroy air_quality_parameter_unit" do
    assert_difference('AirQualityParameterUnit.count', -1) do
      delete air_quality_parameter_unit_url(@air_quality_parameter_unit)
    end

    assert_redirected_to air_quality_parameter_units_url
  end
end
