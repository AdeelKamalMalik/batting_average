require "test_helper"

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post teams_url, params: { team: { attendance: @team.attendance, bpf: @team.bpf, div_id: @team.div_id, div_win: @team.div_win, franch_id: @team.franch_id, ghome: @team.ghome, lg_id: @team.lg_id, lg_win: @team.lg_win, name: @team.name, park: @team.park, ppf: @team.ppf, rank: @team.rank, team_i_dlahman45: @team.team_i_dlahman45, team_i_dretro: @team.team_i_dretro, team_id: @team.team_id, team_idrb: @team.team_idrb, wc_win: @team.wc_win, ws_wing: @team.ws_wing, year_id: @team.year_id } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test "should show team" do
    get team_url(@team)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@team)
    assert_response :success
  end

  test "should update team" do
    patch team_url(@team), params: { team: { attendance: @team.attendance, bpf: @team.bpf, div_id: @team.div_id, div_win: @team.div_win, franch_id: @team.franch_id, ghome: @team.ghome, lg_id: @team.lg_id, lg_win: @team.lg_win, name: @team.name, park: @team.park, ppf: @team.ppf, rank: @team.rank, team_i_dlahman45: @team.team_i_dlahman45, team_i_dretro: @team.team_i_dretro, team_id: @team.team_id, team_idrb: @team.team_idrb, wc_win: @team.wc_win, ws_wing: @team.ws_wing, year_id: @team.year_id } }
    assert_redirected_to team_url(@team)
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end

    assert_redirected_to teams_url
  end
end
