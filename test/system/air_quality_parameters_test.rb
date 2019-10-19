require "application_system_test_case"

class AirQualityParametersTest < ApplicationSystemTestCase
  setup do
    @air_quality_parameter = air_quality_parameters(:one)
  end

  test "visiting the index" do
    visit air_quality_parameters_url
    assert_selector "h1", text: "Air Quality Parameters"
  end

  test "creating a Air quality parameter" do
    visit air_quality_parameters_url
    click_on "New Air Quality Parameter"

    fill_in "Air quality parameter unit", with: @air_quality_parameter.air_quality_parameter_unit_id
    fill_in "Description", with: @air_quality_parameter.description
    fill_in "Name", with: @air_quality_parameter.name
    click_on "Create Air quality parameter"

    assert_text "Air quality parameter was successfully created"
    click_on "Back"
  end

  test "updating a Air quality parameter" do
    visit air_quality_parameters_url
    click_on "Edit", match: :first

    fill_in "Air quality parameter unit", with: @air_quality_parameter.air_quality_parameter_unit_id
    fill_in "Description", with: @air_quality_parameter.description
    fill_in "Name", with: @air_quality_parameter.name
    click_on "Update Air quality parameter"

    assert_text "Air quality parameter was successfully updated"
    click_on "Back"
  end

  test "destroying a Air quality parameter" do
    visit air_quality_parameters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Air quality parameter was successfully destroyed"
  end
end
