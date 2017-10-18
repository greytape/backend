class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other)
    puts "Well Done!" if self.grade > other.grade
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new('joe', 85)
phil = Student.new('phil', 75)

joe.better_grade_than?(phil)