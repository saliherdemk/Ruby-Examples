print "In which language would you like to test your vocabulary ?
1-English
2-Turkish
Transaction : "

transaction = gets.chomp.to_i

def read_file
  File.read('words.txt')
end

words = read_file.split("\n")

hash = {}

english = []

turkish = []

score = 0

wrong_questions = []

answers = []

words.each_with_index do |a, _b| 
  c = a.split(':')

  english.append(c[0])
  turkish.append(c[1])

  hash[c[0]] = c[1]
end

i = 1 

while i < 5
  case transaction
  when 1
    asked = english.shuffle.first

    answer = hash[asked]

    english.delete(asked) 

    array = turkish 

    puts "Soru#{i}. #{asked} kelimesinin Türkçe anlami nedir? "
  when 2
    asked = turkish.shuffle.first

    answer = hash.key(asked)

    turkish.delete(asked)

    array = english

    puts "Question#{i}. What is the meaning of #{asked} in English ?"
  else
    puts 'Invalid transaction'
    exit

  end

  array.delete(answer) 

  array1 = array.shuffle 

  choices = [answer, array1[0], array1[1], array1[2]].shuffle! 

  options = ('A'..'D').to_a

  hash1 = {}

  options.each_with_index do |a, b|
    puts "#{a}) #{choices[b]}"

    hash1[a] = choices[b]
  end

  chosen = gets.chomp.to_s
  chosen = chosen.upcase

  if chosen == hash1.key(answer)
    score += 25 
  else
    wrong_questions.append(i) 
    answers.append(answer)
  end
  i += 1
end

puts "Your score : #{score}."

if wrong_questions.empty?
  puts 'Congratulations! No wrong answer!'

else
  print 'Questions that you have done wrong : '

  wrong_questions.each_with_index do |a, _b|
    if a == wrong_questions.last
      puts  a.to_s
    else
      print "#{a},"
    end
  end

  puts 'Answers of questions that you have done wrong : '

  wrong_questions.each_with_index do |_c, d|
    puts "#{wrong_questions[d]}. sorunun cevabi : #{answers[d]}"
  end
end
