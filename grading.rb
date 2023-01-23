# frozen_string_literal: true

def gradingStudents(grades)
  rounded_grades = []
  grades.each do |grade|
    if grade < 38
      rounded_grades.push grade
      next
    else
      next_five_multiple = grade
      next_five_multiple += 1 while next_five_multiple % 5 != 0
      if next_five_multiple - grade < 3
        rounded_grades.push next_five_multiple
      else
        rounded_grades.push grade
      end
    end
  end
  rounded_grades
end

gradingStudents([38])
