a = [24, 36, 78, 89, 111]
b = [46, 54, 88, 90, 642]
c = [99, 56, 77, 88, 555]

d = a | b | c

e = d.sort.reverse 

puts "Array of A : #{a}"
puts "Array of B : #{b}"
puts "Array of C : #{c}"

puts '' 

puts  "Joined Array  : #{d}"
puts  "Sorting from largest to smallest: #{e}"