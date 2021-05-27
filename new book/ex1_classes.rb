class Pet 
    attr_accessor :name, :age, :gender, :color
    def sound
        puts "depends on your pet"
    end
end

class Cat < Pet #inherits from Pet class
    def meow 
        puts "wtf?"
    end
end

class Dog < Pet #same
    def bark #defines bark method 
        puts "Woof!" #ending the definition of our method with putting smth on a screen
    end #end of defining our method
end #end of adding attributes to the class

class Snake < Pet #same
    attr_accessor :length
end

a_cat = Cat.new #creating a new 
a_cat.name = "Dawg"
#a_cat.length = 122 wrong attribute added since class Cat doesnt have length method

a_dog = Dog.new
a_dog.name = "Cattie"
#a_dog.length = 22 same here, only classes with length methods can display length attributes

a_snake = Snake.new
a_snake.name = "Lengie"
a_snake.length = 122

puts a_dog.class #the output is a dog's class
puts a_snake.length #snake's length 
puts a_dog.bark 
