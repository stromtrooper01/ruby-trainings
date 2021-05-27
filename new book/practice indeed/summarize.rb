text = "Ruby is a great programming language. It is object
    oriented
    and has many groovy features. Some people don't
    like it, but that's
    not our problem! It's easy to learn. It's great.
    To learn more about Ruby,
    visit the official Ruby website today."
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/) #substracts all whitespaces and splits whole text into sentences which end on characters in .split(...)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }#sorts every sentence by its length 
one_third = sentences_sorted.length / 3 #takes length of the array and divides it by 3 to get a third of the array
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)#slices array  which is one_third to one_third + 1 long and sets sliced array to a variable ideal sentences
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }#selects sentences out of array which include words is or are and set those sentences to variable ideal sentences
puts "sentences sorted by length: \n#{sentences_sorted.join". "}"
puts ideal_sentences.join('. ')#puts 

