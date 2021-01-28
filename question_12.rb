print "
What would you like to do ?.
--------------------------------
1-Show created dictionary.
2-Show vectorized sentences.
3-Enter sentence.
--------------------------------
"
print 'transaction : '
transaction   = gets.chomp.to_i

def read_file
  File.readlines('Sentences.txt')
end

sentences = read_file  

hash = {}

value = 0

sentences.each_with_index do |i, _j| 
  i = i.split 
  i.each_with_index do |k, _l| 
    k = k.downcase

    if (hash.key? k.to_s) == TRUE  
      next
    else 
      value += 1   
      hash[k] = value
    end
  end
end

hash['OOV'] = hash.length + 1

def vectorize(hash)

  sentences = read_file
  sentences.each_with_index do |i, _j|
    array = []
    i = i.split
    i.each_with_index do |k, l|
      k = k.downcase

      if (hash.key? k.to_s) == TRUE  
        array[l] = hash[k]
      else
        array[l] = hash["OOV"]
      end

    end
    print i.join(' '), ' ', '->', ' ', array
    puts ' '
  end
end

def get_sentence(hash)
  print 'Sentence : '
  sentence = gets.chomp.to_s
  array = []
  i = sentence.split
  i.each_with_index do |a, b|
    a = a.downcase

    if (hash.key? a.to_s) == TRUE  
      array[b] = hash[a]
    else
      array[b] = hash["OOV"]
    end
  end
  print sentence, ' ', '->', ' ', array
end

case transaction
when 1
  print 'Dictionary : '
  puts hash
when 2
  vectorize(hash)
when 3
  get_sentence(hash)
else
  puts 'Invalid transaction.'
end
