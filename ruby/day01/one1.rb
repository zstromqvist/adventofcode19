result = 0

File.foreach("input1.txt") { 
    |line| result = result + (line.to_i / 3) - 2
}

puts result