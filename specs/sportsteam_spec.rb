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
    result = @sportsteam.get_team_name
    assert_equal("Eagles", result)
  end

  def test_get_players
    result = @sportsteam2.get_players
    assert_equal(["Tamas Zentai", "Tamas Barany", "Daniel Pinter"], result)
  end

  def test_get_coach
    result = @sportsteam3.get_coach
    assert_equal("Lajos Agoston", result)
  end



end
