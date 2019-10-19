require 'test_helper'

class AirQualityParametersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @air_quality_parameter = air_quality_parameters(:one)
    @air_quality_parameter_without_associated_records = air_quality_parameters(:two)
  end

  test "should get index" do
    get air_quality_parameters_url
    assert_response :success
  end

  test "should get new" do
    get new_air_quality_parameter_url
    assert_response :success
  end

  test "should create air_quality_parameter" do
    assert_difference('AirQualityParameter.count') do
      post air_quality_parameters_url, params: { air_quality_parameter: { air_quality_parameter_unit_id: @air_quality_parameter.air_quality_parameter_unit_id, description: @air_quality_parameter.description, name: @air_quality_parameter.name } }
    end

    assert_redirected_to air_quality_parameter_url(AirQualityParameter.last)
  end

  test "should show air_quality_parameter" do
    get air_quality_parameter_url(@air_quality_parameter)
    assert_response :success
  end

  test "should get edit" do
    get edit_air_quality_parameter_url(@air_quality_parameter)
    assert_response :success
  end

  test "should update air_quality_parameter" do
    patch air_quality_parameter_url(@air_quality_parameter), params: { air_quality_parameter: { air_quality_parameter_unit_id: @air_quality_parameter.air_quality_parameter_unit_id, description: @air_quality_parameter.description, name: @air_quality_parameter.name } }
    assert_redirected_to air_quality_parameter_url(@air_quality_parameter)
  end

  test "should destroy air_quality_parameter" do
    assert_difference('AirQualityParameter.count', -1) do
      delete air_quality_parameter_url(@air_quality_parameter_without_associated_records)
    end

    assert_redirected_to air_quality_parameters_url
  end
end
