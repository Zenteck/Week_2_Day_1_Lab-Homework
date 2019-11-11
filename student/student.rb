class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_student_name(new_student_name)
    @student_name = new_student_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talk
    return "I wish I was here."
  end

  def student_talk_language(language)
    return "#{@student_name} says, I love #{language}."
  end

end

# def test_talk_language
#   new_student = Student.new("Gordon", "G17")
#   new_student.student_talk_fav("Python")
#   assert_equal("Gordon says, 'I love Python.'", new_student.student_talk_fav)
# end
