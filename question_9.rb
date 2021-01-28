i = 1
j = 1   
k = 1

puts '' 
puts 'Numbers that can be  divided in this way:'
puts ''

while i < 10 
  while j < 10
    while k < 10
      if (i != j) && (i != k) && (j != k)

        first_number = (i * 10 + j).to_f 

        second_number = (j * 10 + k).to_f

        if first_number < second_number 

          if (first_number / second_number) == (i.to_f / k)

            puts "#{first_number.to_i} / #{second_number.to_i} = #{i} / #{k}" 
            puts ''
          end
        end
      end
      k += 1 
    end
    j += 1

    k = 1 
  end

  i += 1

  k = 1
  j = 1

end