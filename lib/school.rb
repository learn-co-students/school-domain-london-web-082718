require 'pry'

class School
  
  attr_reader :roster
  
  def initialize(school_name)
    @school_name = school_name 
    @roster = {}
  end
  
  
  def add_student(student_name, student_grade)
    @student_name = student_name
    @student_grade = student_grade
    if @roster[@student_grade]
      @roster[@student_grade] << student_name
    else 
    @roster[@student_grade] = [ ]
    @roster[@student_grade] << student_name
  end
  end
  
  def grade(grade)
    @grade = grade
    holding_hash = { }
    holding_hash = @roster.select do |grades, students|
    grades == @grade
    end
    holding_hash.values.flatten
  end
  
  def sort
    @roster.each do |grades, students|
      @roster[grades] = students.sort
     
    end
  end
  
end