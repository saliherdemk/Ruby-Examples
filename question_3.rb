print 'Midterm Exam : '
midterm_exam = gets.to_f

print 'Quiz : '
quiz = gets.to_f

print 'Continuity :'
continuity = gets.to_f

print 'Final : '
final = gets.to_f

grade_percentage = (midterm_exam * 30 / 100) + (quiz * 10 / 100) + (continuity * 10 / 100) + (final * 50 / 100)

puts '-----------------------------------------'

if (grade_percentage >= 90) && (grade_percentage <= 100)
  puts "Your Grade Percentage is #{grade_percentage} and your letter grade is A."

elsif (grade_percentage >= 80) && (grade_percentage <= 89)
  puts "Your Grade Percentage is #{grade_percentage} and your letter grade is B."

elsif (grade_percentage >= 70) && (grade_percentage <= 79)
  puts "Your Grade Percentage is #{grade_percentage} and your letter grade is C."

elsif (grade_percentage >= 60) && (grade_percentage <= 69)
  puts "Your Grade Percentage is #{grade_percentage} and your letter grade is D."

else
  puts "Your Grade Percentage is #{grade_percentage} and your letter grade is F."
end
