puts "Information for first line : "

a1 = gets.to_i
b1 = gets.to_i   
c1 = gets.to_i  

puts "Information about first line : " + "a1 = " + a1.to_s + " " + "b1 = " + b1.to_s + " " + "c1 = " + c1.to_s

print "Information for second line : " 

c2 = gets.to_i  

puts "Information about second line : " + "a2 = " + a1.to_s + " " + "b2 = " + b1.to_s + " " + "c2 = " + c2.to_s 

dividend = (c1 - c2).abs   
divisor = Math.sqrt(a1 ** 2 + b1 ** 2) 
quotient = dividend / divisor

puts "Distance between two parallel lines  = "  + quotient.to_s 