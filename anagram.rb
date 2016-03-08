# Check each anagram in the word list
def find_anagrams(base_word, word_list)
  base = base_word.downcase.split('').sort
  list = []

  word_list.each do |word|
    if base == word.downcase.split('').sort
      list << word
    end
  end
  list
end

def ask_user_for_two_words
  puts 'Enter a starter word'
  base = gets.chomp

  puts 'Enter a word to compare'
  compare = gets.chomp

  result = find_anagrams(base, [compare])

  if result != []
    puts "Verdict: #{compare} is an anagram for #{base}"
  else
    puts "Verdict: #{compare} is not an anagram for #{base}"
  end
end

def ask_user_for_word_list
  puts 'Enter a starter word'
  base = gets.chomp

  compare = 'none yet'
  word_list = []

  while compare != ''
    puts 'Enter a word to compare. Press enter when list is done.'
    compare = gets.chomp
    word_list << compare
  end

  result = find_anagrams(base, word_list)

  if result != []
    puts "Verdict: #{result.spit(' and ')} is an anagram for #{base}"
  else
    puts "Verdict: #{result.split(' and ')} is not an anagram for #{base}"
  end


end
