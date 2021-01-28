print 'Age :'
age = gets.to_i

print 'Weight (kg):'
weight = gets.to_f          

print 'Height (m):'
height = gets.to_f

bmi = weight / (height**2)

puts '-----------------------------------------'

if (age >= 13) && (age <= 17) && (bmi >= 18.50) && (bmi <= 24.99)
  puts "Your BMI is  #{bmi} and you are eligible for military school."

else
  puts "Your BMI is  #{bmi} and you are not eligible for military school."
end
