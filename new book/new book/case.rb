response = { error: 'Bad Gateway', code: 502 }#an object called response which contains error and code in it
case response #passing response object to case statement
in { data: data, code: code } #pattern of case which runs the statement in it
puts "Success #{data}, Code: #{code}"
in { error: error, code: code }
puts "Error: #{error}, Code: #{code}"
end
=begin 
when ruby checks every pattern for matches with object and finds the 
right pattern of case, it does what was said in the statement 
If no patterns match, Ruby throws a NoMatchingPattern error
=end

fruit = gets #a variable fruit which the computer gets from users inputv
case fruit #activating this case block makes ruby process the code and check for matches to give us the right output
when "orange" #this is the right option
color = "orange" #since this is the right "when" we set define variable color as a string "orange"
when "an apple"
color = "green"
when "a banana"
color = "yellow"
else
color = "unknown"
end
case color
when color 
    puts "its #{fruit}"
end