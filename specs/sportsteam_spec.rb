require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../sportsteam')
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsteam < MiniTest::Test

  def setup
    @sportsteam = Sportsteam.new("Eagles", ["Bela Kovacs", "Istvan Puskas", "Ferenc Toth"], "Balazs Danyi")
    @sportsteam2 = Sportsteam.new("Grizzlys", ["Tamas Zentai", "Tamas Barany", "Daniel Pinter"], "Lajos Rajna")
    @sportsteam3 = Sportsteam.new("Bulls", ["Tamas Servanszki", "Bettina Zentai", "Csanad Fekete"], "Lajos Agoston")
  end

  def test_get_team_name
    assert_equal("Eagles", @sportsteam.team_name)
  end

  def test_get_players
    assert_equal(["Tamas Zentai", "Tamas Barany", "Daniel Pinter"], @sportsteam2.players)
  end

  def test_get_coach
    assert_equal("Lajos Agoston", @sportsteam3.coach)
  end

  def test_set_coach
    @sportsteam.coach = "Robert Gondos"
    assert_equal("Robert Gondos", @sportsteam.coach)
  end

  def test_check_player_name
    result = @sportsteam.check_player_name("Bela Kovacs")
    assert_equal(true, result)
  end

  def test_points_update__win
    result = @sportsteam.points_update("win")
    assert_equal(1, result)
  end

  def test_points_update__lost
    result = @sportsteam.points_update("lost")
    assert_equal(-1, result)
  end

end
