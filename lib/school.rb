# # School
#   ::new
#     has an empty roster when initialized (FAILED - 1)
#   #add_student
#     is able to add a student (FAILED - 2)
#     is able to add multiple students to a class (grade) (FAILED - 3)
#     is able to add students to different grades (FAILED - 4)
#   #grade
#     is able to retreive students from a grade (FAILED - 5)
#   #sort
#     is able to sort the students (FAILED - 6)

require 'pry'
class School

    attr_reader :roster

    def initialize(name)
      @name = name
      @roster = Hash.new {|h,k| h[k] = []}
    end

    def add_student(student, grade)
      @roster[grade] << student
    end

    def grade(grade)
      @roster[grade]
    end

    def sort
      @roster.each {|x,y| y.sort! }
    end



end

# hash["new_key"] = []
# hash["new_key"] << new_value_for_value_array
#
# hash
#  => {"new_key"=>["new_value_for_value_array"]}
# Ta-da! When we first create the key and point it to a value of an empty array, we are able to then successfully add items to that array.
#
# Hint: Now that we've thought about how to build up our hash, let's talk about how to add successive students to each grade. Let's say that we're adding the student "AC Slater" to grade 9. If the roster already has a key of grade 9, we'll be able to push AC Slater into the array that the grade 9 key points to. Otherwise, we'll need to first create the key of grade 9 and point it to an empty array. However, if we're in the scenario in which the grade 9 key already exists, we will erase its current contents by creating a key of 9 and setting it equal to an empty array! You'll need to understand this in order to get the tests passing.
