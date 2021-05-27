lines = File.readlines(ARGV[0]) # assigns whole text to a variable called lines
line_count = lines.size # assigns amount of lines to a variable called line_count
text = lines.join # makes all line join and make a full text, then assigns this text to a variable called text
words = text.scan(/\w+/) # makes a list of words (an array) which is called words and assigns every word to an array called words
word_count = text.split.length # splits text into single words and counts length of this text by words
total_characters = text.length # counts characters in a text and assigns it to total_characters
total_characters_nospaces = text.gsub(/\s+/, '').length # substracts spaces from text and count character excluding spaces
sentence_count = text.split(/\.|\?|!/).length # counts sentences which end on ".", "?" or "!"
paragraph_count = text.split(/\n\n/).length # counts paragraphs which is basically two new line characters \n\n
average_senteces_paragraph = (sentence_count.to_f / paragraph_count) # simple math
average_words_sentence = (word_count.to_f / sentence_count) # simple math
stopwords = %w[the a by on for of are with just but and to the my I has some in] # creates an array called stopwords and assigns word written inbetween { and }
keywords = words.select do |word|
  !stopwords.include?(word)
end
keywords_percentage = ((keywords.length.to_f / words.length.to_f) * 100) # simple math again
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/) # substracts all whitespaces and splits whole text into sentences which end on characters in .split(...)
sentences_sorted = sentences.sort_by { |sentence| sentence.length } # sorts every sentence by its length
one_third = sentences_sorted.length / 3 # takes length of the array and divides it by 3 to get a third of the array
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1) # slices array  which is one_third to one_third + 1 long and sets sliced array to a variable ideal sentences
ideal_sentences = ideal_sentences.select do |sentence|
  sentence =~ /is|are/
end
#puts "sentences sorted by length: \n#{sentences_sorted.join '. '}"


# basic puts commands
puts "#{total_characters} characters"
puts "#{line_count} lines"
puts "#{total_characters_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{average_senteces_paragraph} average sentences per paragraph"
puts "#{average_words_sentence} average words per sentence"
puts "keywords percentage is #{keywords_percentage}%"
puts ideal_sentences.join('. ')
