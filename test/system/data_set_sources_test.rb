require "application_system_test_case"

class DataSetSourcesTest < ApplicationSystemTestCase
  setup do
    @data_set_source = data_set_sources(:one)
  end

  test "visiting the index" do
    visit data_set_sources_url
    assert_selector "h1", text: "Data Set Sources"
  end

  test "creating a Data set source" do
    visit data_set_sources_url
    click_on "New Data Set Source"

    fill_in "Confidence level", with: @data_set_source.confidence_level
    fill_in "Name", with: @data_set_source.name
    click_on "Create Data set source"

    assert_text "Data set source was successfully created"
    click_on "Back"
  end

  test "updating a Data set source" do
    visit data_set_sources_url
    click_on "Edit", match: :first

    fill_in "Confidence level", with: @data_set_source.confidence_level
    fill_in "Name", with: @data_set_source.name
    click_on "Update Data set source"

    assert_text "Data set source was successfully updated"
    click_on "Back"
  end

  test "destroying a Data set source" do
    visit data_set_sources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data set source was successfully destroyed"
  end
end
