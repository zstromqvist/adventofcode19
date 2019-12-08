result = 0

File.foreach("input1.txt") { 
    |line| 

    input = line.to_i
    while input > 0 do
        input = (input / 3) - 2
        
        if input < 0
            input = 0
        end
        result += input
    end
}

puts result