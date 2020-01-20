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

  
end
