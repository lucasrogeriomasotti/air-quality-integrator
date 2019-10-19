require "application_system_test_case"

class AirQualityParameterUnitsTest < ApplicationSystemTestCase
  setup do
    @air_quality_parameter_unit = air_quality_parameter_units(:one)
  end

  test "visiting the index" do
    visit air_quality_parameter_units_url
    assert_selector "h1", text: "Air Quality Parameter Units"
  end

  test "creating a Air quality parameter unit" do
    visit air_quality_parameter_units_url
    click_on "New Air Quality Parameter Unit"

    fill_in "Name", with: @air_quality_parameter_unit.name
    fill_in "Symbol", with: @air_quality_parameter_unit.symbol
    click_on "Create Air quality parameter unit"

    assert_text "Air quality parameter unit was successfully created"
    click_on "Back"
  end

  test "updating a Air quality parameter unit" do
    visit air_quality_parameter_units_url
    click_on "Edit", match: :first

    fill_in "Name", with: @air_quality_parameter_unit.name
    fill_in "Symbol", with: @air_quality_parameter_unit.symbol
    click_on "Update Air quality parameter unit"

    assert_text "Air quality parameter unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Air quality parameter unit" do
    visit air_quality_parameter_units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Air quality parameter unit was successfully destroyed"
  end
end
