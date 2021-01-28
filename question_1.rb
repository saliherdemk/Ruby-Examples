print "How many cents do you have ? (between 1 to 99)"
cents = gets.to_i   

puts "#{cents} is equal to : " 
puts " "

fifty_cents = 0  
ten_cents = 0 
five_cents = 0
one_cents = 0

fifty_cents += cents / 50 
cents = cents - fifty_cents * 50 

ten_cents += cents / 10
cents = cents - ten_cents * 10

five_cents = cents / 5
cents = cents - five_cents * 5

one_cents = cents / 1
cents = cents - one_cents * 1

puts fifty_cents.to_s  + " " + "times 50 cent"
puts ten_cents.to_s  + " " + "times 10 cent "
puts five_cents.to_s  + " " + "times 5 cent"
puts one_cents.to_s  + " " + "times 1 cent"