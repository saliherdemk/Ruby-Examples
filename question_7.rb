puts "
----------------------------
What would you like to do ?:
0 - Shutdown the program.
1 - Create a new array of C with combine A and B arrays.
2 - Create a new array of D with combine the largest number of both arrays.
3 - Shuffle the array of C and append 55 , then print middle index of this array.
4 - Adds the numbers 100, 200, 300 to the beginning of the string D and print the new string.
----------------------------"

a = [50, 45, 69, 83, 90] 
b = [66, 38, 27, 54, 118]

puts "Array of A : #{a}" 
puts "Array of B : #{b}"

puts '----------------------------' 

print 'Transaction : '

transaction = gets.chomp.to_i

if transaction.zero? 

  puts '' 

  puts 'Goodbye...'

elsif transaction == 1 

  c = a | b

  puts '' 

  puts "Array of C : #{c}"

  puts '' 

  puts "  **************************
  What would you like to do ? :
  0 - Shutdown the program.
  3 - Shuffle the array of C and append 55 , then print middle index of this array.
  **************************"

  print 'Transaction : '

  transaction1 = gets.chomp.to_i

  if transaction1.zero? 

    puts '' 

    puts 'Goodbye...'

  elsif transaction1 == 3 

    f = c.shuffle 

    puts '' 

    puts "Shuffled array of C : #{f}" 

    puts '' 

    f.push 55 

    puts "Added 55 : #{f}" 

    puts '' 

    puts "Middle index : #{f[5]}" 

  else

    puts '' 

    puts 'Invalid transaction'

  end

elsif transaction == 2 

  d = [] 

  d << a.max  

  d << b.max  

  puts '' 

  puts "Array of D : #{d}" 

  puts '' 

  puts "  **************************
  What would you like to do ? :
  0 - Shutdown the program.
  4 - Adds the numbers 100, 200, 300 to the beginning of the string D and print the new string.
  **************************"

  print 'Transaction : '

  transaction2 = gets.chomp.to_i 

  if transaction2.zero? 

    puts '' 

    puts 'Goodbye...'

  elsif transaction2 == 4 

    d.prepend 100, 200, 300 

    puts '' 

    print "Array of D : #{d}" 

    puts '' 

  else 

    puts '' 

    puts 'Invalid transaction.'

  end

elsif transaction == 3

  puts '' 

  print 'Array of C does not exists. Please create an array of C.'

  puts '' 

elsif transaction == 4 

  puts '' 

  print 'Array of D does not exists. Please create an array of D. '

  puts '' 

else 

  puts '' 

  print 'Invalid transaction.'

  puts '' 

end