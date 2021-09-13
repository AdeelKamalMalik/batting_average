require "test_helper"

class BattingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @batting = battings(:one)
  end

  test "should get index" do
    get battings_url
    assert_response :success
  end

  test "should get new" do
    get new_batting_url
    assert_response :success
  end

  test "should create batting" do
    assert_difference('Batting.count') do
      post battings_url, params: { batting: { 2b: @batting.2b, 3b: @batting.3b, ab: @batting.ab, bb: @batting.bb, cs: @batting.cs, g: @batting.g, gidp: @batting.gidp, h: @batting.h, hbp: @batting.hbp, hr: @batting.hr, ibb: @batting.ibb, lg_id: @batting.lg_id, player_id: @batting.player_id, r: @batting.r, rbi: @batting.rbi, sb: @batting.sb, sf: @batting.sf, sh: @batting.sh, so: @batting.so, stint: @batting.stint, team_id: @batting.team_id, year_id: @batting.year_id } }
    end

    assert_redirected_to batting_url(Batting.last)
  end

  test "should show batting" do
    get batting_url(@batting)
    assert_response :success
  end

  test "should get edit" do
    get edit_batting_url(@batting)
    assert_response :success
  end

  test "should update batting" do
    patch batting_url(@batting), params: { batting: { 2b: @batting.2b, 3b: @batting.3b, ab: @batting.ab, bb: @batting.bb, cs: @batting.cs, g: @batting.g, gidp: @batting.gidp, h: @batting.h, hbp: @batting.hbp, hr: @batting.hr, ibb: @batting.ibb, lg_id: @batting.lg_id, player_id: @batting.player_id, r: @batting.r, rbi: @batting.rbi, sb: @batting.sb, sf: @batting.sf, sh: @batting.sh, so: @batting.so, stint: @batting.stint, team_id: @batting.team_id, year_id: @batting.year_id } }
    assert_redirected_to batting_url(@batting)
  end

  test "should destroy batting" do
    assert_difference('Batting.count', -1) do
      delete batting_url(@batting)
    end

    assert_redirected_to battings_url
  end
end
