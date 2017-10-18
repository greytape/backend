class Student
  attr_writer :grade
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than(other_student)
    grade > other_student.grade 
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new('Joe', 67)
bob = Student.new('bob', 47)

puts joe.better_grade_than(bob)