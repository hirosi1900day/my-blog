require "application_system_test_case"

class WeightHistroysTest < ApplicationSystemTestCase
  setup do
    @weight_histroy = weight_histroys(:one)
  end

  test "visiting the index" do
    visit weight_histroys_url
    assert_selector "h1", text: "Weight histroys"
  end

  test "should create weight histroy" do
    visit weight_histroys_url
    click_on "New weight histroy"

    fill_in "Memo", with: @weight_histroy.memo
    fill_in "User", with: @weight_histroy.user_id
    fill_in "Weight", with: @weight_histroy.weight
    click_on "Create Weight histroy"

    assert_text "Weight histroy was successfully created"
    click_on "Back"
  end

  test "should update Weight histroy" do
    visit weight_histroy_url(@weight_histroy)
    click_on "Edit this weight histroy", match: :first

    fill_in "Memo", with: @weight_histroy.memo
    fill_in "User", with: @weight_histroy.user_id
    fill_in "Weight", with: @weight_histroy.weight
    click_on "Update Weight histroy"

    assert_text "Weight histroy was successfully updated"
    click_on "Back"
  end

  test "should destroy Weight histroy" do
    visit weight_histroy_url(@weight_histroy)
    click_on "Destroy this weight histroy", match: :first

    assert_text "Weight histroy was successfully destroyed"
  end
end
