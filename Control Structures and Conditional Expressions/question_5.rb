print 'Fist number : '
first = gets.to_i                                     

print 'Second number : '
second = gets.to_i

print 'Third number : '
third = gets.to_i

print 'Fourth number : '
fourth = gets.to_i

puts '-------------------------------------------------'

number  = first * 1000 + second * 100 + third * 10 + fourth

first_part = first * 10 + second

second_part = third * 10 + fourth

x = first_part + second_part

if x**2 == number
  puts "#{number} , separation to  #{first_part} and #{second_part}, #{x} ^ 2 = #{x**2} . Number is a Koksal Sayi."

else
  puts " #{number} , separation to #{first_part} and #{second_part}, #{x} ^ 2 = #{x**2} . Number is not a Koksal Sayi."
end
