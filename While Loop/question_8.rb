i = 1 

resault = 1

x = 1 

while i < 11 

  puts "#{i}. term : #{resault}"

  resault = (1 + 1 / x) 

  x = resault.to_r

  i += 1 

end
