require 'pry'

class School

  attr_accessor :name, :roster, :student_name, :grade

  def initialize(name, roster = {})
      @name = name
      @roster = roster
    end

  school = School.new("Bayside High School")

  school.roster

  def add_student(student_name, grade)
# roster is initially an empty hash which needs to contain keys of grades
    @roster[grade] ||= []
    # if there's no existing grade, make an empty hash
    # either way you want to move on to add the student to a hash
    @roster[grade] << student_name
  end

# creating a hash of key value pairs
#  key = grade
#  value = array of students

  def grade(grade)     # method and argument called grade
    @roster.key?(grade)
      roster[grade]
  end

# TIP - How to check if a specific key is present in a hash or not?
# https://stackoverflow.com/questions/4528506/how-to-check-if-a-specific-key-is-present-in-a-hash-or-not

  def sort
    roster.each do |grade, names|
      names.sort!
    end
  end

end



# Now, we can call #new like this:
#
# lassie = Dog.new("Collie")
#
# lassie.breed #=> "Collie"
