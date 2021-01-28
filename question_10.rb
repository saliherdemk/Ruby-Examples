puts "
    | Car Brands  | Code |
    ——————————————————————————————
    | Renault        |     1     |
    | Mazda          |     2     |
    | Honda          |     3     |
    | Ford           |     4     |
    ——————————————————————————————
"

array = Array.new(4, 0) 
array1 = Array.new(4, 0)

puts 'Enter 111 as a brand to exit the program..' 

while TRUE

  print 'Brand , Gasoline :' 

  code, gasoline = gets.chomp.split 

  code = code.to_i 
  gasoline = gasoline.to_f

  if code == 1

    array[0] += 1
    array1[0] += gasoline

  elsif code == 2

    array[1] += 1
    array1[1] += gasoline

  elsif code == 3

    array[2] += 1
    array1[2] += gasoline

  elsif code == 4

    array[3] += 1
    array1[3] += gasoline

  elsif code == 111 

    puts 'Goodbye...'
    puts 'Summery Information '

    puts '------------------------' 

    if array.max == array[0]

      brand = 'Renault'
      puts "Most entered brand is  #{brand} (#{array.max} times)"

    end

    if array.max == array[1]

      brand = 'Mazda'
      puts "Most entered brand is #{brand} (#{array.max} times)"

    end

    if array.max == array[2]

      brand = 'Honda'
      puts "Most entered brand is #{brand} (#{array.max} times)"

    end

    if array.max == array[3]

      brand = 'Ford'
      puts "Most entered brand is #{brand} (#{array.max} times)"

    end

    if array1.max == array1[0]

      brand1 = 'Renault'
      puts "Most gasolen solded to #{brand1} (#{array1.max} Dolar)"

    end

    if array1.max == array1[1]

      brand1 = 'Mazda'
      puts "Most gasolen solded to #{brand1} (#{array1.max} Dolar)"

    end

    if array1.max == array1[2]

      brand1 = 'Honda'
      puts "Most gasolen solded to #{brand1} (#{array1.max} Dolar)"

    end

    if array1.max == array1[3]

      brand1 = 'Ford'
      puts "Most gasolen solded to #{brand1} (#{array1.max} Dolar)"

    end

    puts '------------------------'

    break 

  elsif code.negative? || code > 4 

    puts 'Invalid Code'

  end
end