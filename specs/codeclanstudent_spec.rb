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

  def test_set_student_name
    assert_equal("Bela", @student.set_student_name)
  end



  def test_get_cohort
    assert_equal("E37", @student.get_cohort)
  end

  def test_set_cohort
    assert_equal("E40", @student.set_cohort)
  end

  def test_talk
    result = @student.talk("I can talk!", )
    assert_equal("I can talk!", result)
  end

  def test_say_favourite_language
    result = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", result)
  end

end
