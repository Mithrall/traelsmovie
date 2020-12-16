require "application_system_test_case"

class MoviesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit movies_url
 
    assert_selector "h1", text: "Movies"
  end


  test "creating an movie" do
    visit movies_path

    click_on "New Movie"

    fill_in "Title", with: "Star Wars"

    click_on "Create Movie"

    assert_text "Luke Skywalker"
    assert_text "1977"

  end
end
