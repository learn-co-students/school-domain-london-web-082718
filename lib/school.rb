class School

  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each_with_object({}) do |(grade_number, students), sorted_roster|
      sorted_roster[grade_number] = students.sort
    end
  end

end
