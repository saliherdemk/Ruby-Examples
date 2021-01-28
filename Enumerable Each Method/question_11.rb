print " What would you like to do ?.
1-Encrypt the text
2-Decrypt the text
"

transaction  = gets.chomp.to_i

def read_file
  File.readlines('text.txt')
end

def encrypt_text
  big_alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  small_alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

  big_dic =  {}

  small_dic = {}

  resault = []

  final = nil

  print 'Encrypt with : '
  code_number = gets.chomp.to_i

  if code_number > 26
    code_number = code_number % 26
  end

  puts 'Please do not enter letters or 0. Otherwise, the original text will be returned.' if code_number.zero?

  big_alphabet.each_with_index do |i, j|
    big_dic[i.to_s] = (big_alphabet[j - (26 - code_number)]).to_s   
  end

  small_alphabet.each_with_index do |k, l|
    small_dic[k.to_s] = (small_alphabet[l - (26 - code_number)]).to_s 
  end

  text = read_file 
  text.each do |i|  
    piece = i.split 
    piece.each_with_index do |a, _b|
      character = a.split(//) 
      character.each_with_index do |c, d|
        big_alphabet.each_with_index do |e, _f|
          if c == e
            character[d] = big_dic[e.to_s] 
          end 
        end
        small_alphabet.each_with_index do |g, _h|
          character[d] = small_dic[g.to_s] if c == g 
        end
      end
      resault << character.join  
    end
    final = resault.join(' ')
  end

  def write_file(variable)
    File.write('encrypted_text.txt', variable.to_s)
  end

  print "Do you want to create a file for encrypted text?
    1-Yes
    2-No
    "
  decision = gets.chomp.to_i

  puts "Encrypted Text: "

  case decision
  when 1
    write_file(final) 
  when 2
    nil
  else
    puts 'Invalid transaction'
  end

  final 
end

def read_file1
  File.readlines('encrypted_text.txt')
end

def decrypt_text 
  big_alphabet = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
  small_alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]

  big_dic =  {}

  small_dic = {}

  resault = []

  final = nil

  print 'Enter 0 or letter to print orginal text from file. 
   Encrypted with : '

  code_number = gets.chomp.to_i

  code_number = code_number % 26 if code_number > 26

  if code_number.zero?
    final = (File.read('text.txt')).delete("\n")
  else
    big_alphabet.each_with_index do |i, j|
      big_dic[i.to_s] = (big_alphabet[j - code_number]).to_s
    end

    small_alphabet.each_with_index do |k, l|
      small_dic[k.to_s] = (small_alphabet[l - code_number]).to_s
    end

    text = read_file1
    text.each do |i|
      piece = i.split
      piece.each_with_index do |a, _b|
        character = a.split(//)
        character.each_with_index do |c, d|
          big_alphabet.each_with_index do |e, _f|
            character[d] = big_dic[e.to_s] if c == e
          end
          small_alphabet.each_with_index do |g, _h|
            character[d] = small_dic[g.to_s] if c == g
          end
        end
        resault << character.join
      end

      final = resault.join(' ')
    end

    def write_file(variable)
      File.write('decrypted_text.txt', variable.to_s)
    end

    print "Do you want to create a file for decrypt text?
    1-Yes
    2-No
    "
    decision = gets.chomp.to_i

    puts 'Original Text : '

    case decision
    when 1
      write_file(final) 
    when 2
      nil
    else
      puts 'Invalid transaction'
    end
  end
  final
end

case transaction 
when 1 
  print encrypt_text
when 2 
  if File.exist?('encrypted_text.txt')
    puts decrypt_text
  else
    puts 'encrypted_text.txt does not exist.'
  end
else
  puts 'Invalid transaction'
end
