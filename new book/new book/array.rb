array1 = %w[Nikita Danil Artour]
array2 = ["Nikita", "Danil", "Artour"]
array2.each {|name| puts name}
array1.each do |name| 
    if name == 'Nikita'
        array1.push 'Viktor'
    end
    puts name

end
