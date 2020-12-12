require "test_helper"

class DropRatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drop_rate = drop_rates(:one)
  end

  test "should get index" do
    get drop_rates_url
    assert_response :success
  end

  test "should get new" do
    get new_drop_rate_url
    assert_response :success
  end

  test "should create drop_rate" do
    assert_difference('DropRate.count') do
      post drop_rates_url, params: { drop_rate: { artifacts: @drop_rate.artifacts, des_artifacts: @drop_rate.des_artifacts, percent_des: @drop_rate.percent_des, run: @drop_rate.run } }
    end

    assert_redirected_to drop_rate_url(DropRate.last)
  end

  test "should show drop_rate" do
    get drop_rate_url(@drop_rate)
    assert_response :success
  end

  test "should get edit" do
    get edit_drop_rate_url(@drop_rate)
    assert_response :success
  end

  test "should update drop_rate" do
    patch drop_rate_url(@drop_rate), params: { drop_rate: { artifacts: @drop_rate.artifacts, des_artifacts: @drop_rate.des_artifacts, percent_des: @drop_rate.percent_des, run: @drop_rate.run } }
    assert_redirected_to drop_rate_url(@drop_rate)
  end

  test "should destroy drop_rate" do
    assert_difference('DropRate.count', -1) do
      delete drop_rate_url(@drop_rate)
    end

    assert_redirected_to drop_rates_url
  end
end
