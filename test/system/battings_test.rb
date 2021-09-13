require "application_system_test_case"

class BattingsTest < ApplicationSystemTestCase
  setup do
    @batting = battings(:one)
  end

  test "visiting the index" do
    visit battings_url
    assert_selector "h1", text: "Battings"
  end

  test "creating a Batting" do
    visit battings_url
    click_on "New Batting"

    fill_in "2b", with: @batting.2b
    fill_in "3b", with: @batting.3b
    fill_in "Ab", with: @batting.ab
    fill_in "Bb", with: @batting.bb
    fill_in "Cs", with: @batting.cs
    fill_in "G", with: @batting.g
    fill_in "Gidp", with: @batting.gidp
    fill_in "H", with: @batting.h
    fill_in "Hbp", with: @batting.hbp
    fill_in "Hr", with: @batting.hr
    fill_in "Ibb", with: @batting.ibb
    fill_in "Lg", with: @batting.lg_id
    fill_in "Player", with: @batting.player_id
    fill_in "R", with: @batting.r
    fill_in "Rbi", with: @batting.rbi
    fill_in "Sb", with: @batting.sb
    fill_in "Sf", with: @batting.sf
    fill_in "Sh", with: @batting.sh
    fill_in "So", with: @batting.so
    fill_in "Stint", with: @batting.stint
    fill_in "Team", with: @batting.team_id
    fill_in "Year", with: @batting.year_id
    click_on "Create Batting"

    assert_text "Batting was successfully created"
    click_on "Back"
  end

  test "updating a Batting" do
    visit battings_url
    click_on "Edit", match: :first

    fill_in "2b", with: @batting.2b
    fill_in "3b", with: @batting.3b
    fill_in "Ab", with: @batting.ab
    fill_in "Bb", with: @batting.bb
    fill_in "Cs", with: @batting.cs
    fill_in "G", with: @batting.g
    fill_in "Gidp", with: @batting.gidp
    fill_in "H", with: @batting.h
    fill_in "Hbp", with: @batting.hbp
    fill_in "Hr", with: @batting.hr
    fill_in "Ibb", with: @batting.ibb
    fill_in "Lg", with: @batting.lg_id
    fill_in "Player", with: @batting.player_id
    fill_in "R", with: @batting.r
    fill_in "Rbi", with: @batting.rbi
    fill_in "Sb", with: @batting.sb
    fill_in "Sf", with: @batting.sf
    fill_in "Sh", with: @batting.sh
    fill_in "So", with: @batting.so
    fill_in "Stint", with: @batting.stint
    fill_in "Team", with: @batting.team_id
    fill_in "Year", with: @batting.year_id
    click_on "Update Batting"

    assert_text "Batting was successfully updated"
    click_on "Back"
  end

  test "destroying a Batting" do
    visit battings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Batting was successfully destroyed"
  end
end
