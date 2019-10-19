require "application_system_test_case"

class AirQualityMeasurementsTest < ApplicationSystemTestCase
  setup do
    @air_quality_measurement = air_quality_measurements(:one)
  end

  test "visiting the index" do
    visit air_quality_measurements_url
    assert_selector "h1", text: "Air Quality Measurements"
  end

  test "creating a Air quality measurement" do
    visit air_quality_measurements_url
    click_on "New Air Quality Measurement"

    fill_in "Air quality parameter", with: @air_quality_measurement.air_quality_parameter_id
    fill_in "City", with: @air_quality_measurement.city
    fill_in "Coordinates", with: @air_quality_measurement.coordinates
    fill_in "Country", with: @air_quality_measurement.country
    fill_in "Data set", with: @air_quality_measurement.data_set_id
    fill_in "Location", with: @air_quality_measurement.location
    fill_in "Measurement datetime", with: @air_quality_measurement.measurement_datetime
    fill_in "Radius", with: @air_quality_measurement.radius
    fill_in "Value", with: @air_quality_measurement.value
    click_on "Create Air quality measurement"

    assert_text "Air quality measurement was successfully created"
    click_on "Back"
  end

  test "updating a Air quality measurement" do
    visit air_quality_measurements_url
    click_on "Edit", match: :first

    fill_in "Air quality parameter", with: @air_quality_measurement.air_quality_parameter_id
    fill_in "City", with: @air_quality_measurement.city
    fill_in "Coordinates", with: @air_quality_measurement.coordinates
    fill_in "Country", with: @air_quality_measurement.country
    fill_in "Data set", with: @air_quality_measurement.data_set_id
    fill_in "Location", with: @air_quality_measurement.location
    fill_in "Measurement datetime", with: @air_quality_measurement.measurement_datetime
    fill_in "Radius", with: @air_quality_measurement.radius
    fill_in "Value", with: @air_quality_measurement.value
    click_on "Update Air quality measurement"

    assert_text "Air quality measurement was successfully updated"
    click_on "Back"
  end

  test "destroying a Air quality measurement" do
    visit air_quality_measurements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Air quality measurement was successfully destroyed"
  end
end
