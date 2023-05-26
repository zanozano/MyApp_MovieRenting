require "application_system_test_case"

class ArriendosTest < ApplicationSystemTestCase
  setup do
    @arriendo = arriendos(:one)
  end

  test "visiting the index" do
    visit arriendos_url
    assert_selector "h1", text: "Arriendos"
  end

  test "should create arriendo" do
    visit arriendos_url
    click_on "New arriendo"

    click_on "Create Arriendo"

    assert_text "Arriendo was successfully created"
    click_on "Back"
  end

  test "should update Arriendo" do
    visit arriendo_url(@arriendo)
    click_on "Edit this arriendo", match: :first

    click_on "Update Arriendo"

    assert_text "Arriendo was successfully updated"
    click_on "Back"
  end

  test "should destroy Arriendo" do
    visit arriendo_url(@arriendo)
    click_on "Destroy this arriendo", match: :first

    assert_text "Arriendo was successfully destroyed"
  end
end
