class School
  attr_reader :roster



  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student_name, grade)
    @add_student = {grade => student_name}
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @grade = @roster[grade]
  end

  def sort
    @roster.each do |student_grade, student_name|
      student_name.sort!
    end
  end

end
