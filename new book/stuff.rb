class Slave 
    def beaten
        puts "i am a nigger"
    end
end

a_nigger = Slave.new

puts "hi master, what is your slave's color?"
color = gets

if color = "black"
    a_nigger.beaten
end


