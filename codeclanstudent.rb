class CodeClanStudent
  def initialize (student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def get_student_name
    return @student_name
  end

  def set_student_name
    @student_name = "Bela"
    return @student_name
  end

  def get_cohort
    return @cohort
  end

  def set_cohort
    @cohort = "E40"
    return @cohort
  end

  def talk (phrase)
    return phrase
  end

  def say_favourite_language(language)
    return "I love #{language}!"
  end
end
