require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../codeclanstudent')
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeclanStudent < MiniTest::Test
  def setup
    @student = CodeClanStudent.new("Tamas", "E37")

  end

  def test_get_student_name
    assert_equal("Tamas", @student.get_student_name)
  end

  def test_get_cohort
    assert_equal("E37", @student.get_cohort)
  end



end
