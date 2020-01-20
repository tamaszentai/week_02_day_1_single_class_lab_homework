require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../codeclanstudent')
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeclanStudent < MiniTest::Test
  def setup
    @student = CodeClanStudent.new("Tamas", "E37")
    @student1 = CodeClanStudent.new("Daniel", "E35")

  end


end
