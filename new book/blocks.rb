array = %w[Dasha Masha Pasha]
hash = {name: 'Dasha', age: 21, height: 175}

array.each {|name| puts name}
2.times {puts 'Hello Ruby'}
puts '------' 

hash.each_key {|i| puts i}
hash.each_with_index {|value, index| puts value}

array.each_with_index {|value, index|  puts}
File.open("block.txt", "w", "r") {|y| y.puts "hello ruby" |z| z.}
