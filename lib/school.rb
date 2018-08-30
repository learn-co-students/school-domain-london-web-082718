require 'pry'

# code here!
class School

  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
    @roster[grade] = []
    @roster[grade] << name
  end
  end

  def grade(grade)
    students = []
    @roster.map do |key, value|
      if key == grade
        students << value
      else
        puts "no students found"
      end
    end
    students.flatten
  end

  def sort
    @roster.each do |grades, students|
      @roster[grades] = students.sort
    end
  end


end
