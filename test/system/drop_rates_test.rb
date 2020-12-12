require "application_system_test_case"

class DropRatesTest < ApplicationSystemTestCase
  setup do
    @drop_rate = drop_rates(:one)
  end

  test "visiting the index" do
    visit drop_rates_url
    assert_selector "h1", text: "Drop Rates"
  end

  test "creating a Drop rate" do
    visit drop_rates_url
    click_on "New Drop Rate"

    fill_in "Artifacts", with: @drop_rate.artifacts
    fill_in "Des artifacts", with: @drop_rate.des_artifacts
    fill_in "Percent des", with: @drop_rate.percent_des
    fill_in "Run", with: @drop_rate.run
    click_on "Create Drop rate"

    assert_text "Drop rate was successfully created"
    click_on "Back"
  end

  test "updating a Drop rate" do
    visit drop_rates_url
    click_on "Edit", match: :first

    fill_in "Artifacts", with: @drop_rate.artifacts
    fill_in "Des artifacts", with: @drop_rate.des_artifacts
    fill_in "Percent des", with: @drop_rate.percent_des
    fill_in "Run", with: @drop_rate.run
    click_on "Update Drop rate"

    assert_text "Drop rate was successfully updated"
    click_on "Back"
  end

  test "destroying a Drop rate" do
    visit drop_rates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drop rate was successfully destroyed"
  end
end
