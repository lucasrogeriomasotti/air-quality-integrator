require 'test_helper'

class DataSetSourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_set_source = data_set_sources(:one)
    @data_set_source_without_associated_records = data_set_sources(:two)
  end

  test "should get index" do
    get data_set_sources_url
    assert_response :success
  end

  test "should get new" do
    get new_data_set_source_url
    assert_response :success
  end

  test "should create data_set_source" do
    assert_difference('DataSetSource.count') do
      post data_set_sources_url, params: { data_set_source: { confidence_level: @data_set_source.confidence_level, name: SecureRandom.hex } }
    end

    assert_redirected_to data_set_source_url(DataSetSource.last)
  end

  test "should show data_set_source" do
    get data_set_source_url(@data_set_source)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_set_source_url(@data_set_source)
    assert_response :success
  end

  test "should update data_set_source" do
    patch data_set_source_url(@data_set_source), params: { data_set_source: { confidence_level: @data_set_source.confidence_level, name: @data_set_source.name } }
    assert_redirected_to data_set_source_url(@data_set_source)
  end

  test "should destroy data_set_source" do
    assert_difference('DataSetSource.count', -1) do
      delete data_set_source_url(@data_set_source_without_associated_records)
    end

    assert_redirected_to data_set_sources_url
  end
end
