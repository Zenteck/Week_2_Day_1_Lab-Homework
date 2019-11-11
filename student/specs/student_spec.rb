require('minitest/autorun')
require_relative('../student.rb')

class TestStudent < Minitest::Test

def test_create_student
student = Student.new("Gordon", "G17")
end

def test_student_name
  new_student = Student.new("Gordon", "G17")
assert_equal("Gordon", new_student.student_name)
end

def test_cohort
  new_student = Student.new("Gordon", "G17")
  assert_equal("G17", new_student.cohort)
end

def test_set_student_name
  new_student = Student.new("Gordon", "G17")
  new_student.set_student_name("Donna")
  assert_equal("Donna", new_student.student_name)
end

def test_set_cohort
  new_student = Student.new("Gordon", "G17")
  new_student.set_cohort("G18")
  assert_equal("G18", new_student.cohort)
end

def test_student_talk
  new_student = Student.new("Gordon", "G17")
  new_student.student_talk
  assert_equal("I wish I was here.", new_student.student_talk)
end

def test_student_talk_language
  new_student = Student.new("Gordon", "G17")
  chat = new_student.student_talk_language("Python")
  assert_equal("Gordon says, I love Python.", chat)
end
#This is wrong and I know it, why am I passing in the argument again on the assert line?

end
