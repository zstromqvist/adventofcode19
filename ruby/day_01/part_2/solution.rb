#!/usr/bin/env ruby

result = 0

def mass_recursion(number)
    total = (number / 3) - 2

    if total > 0 && mass_recursion(total) > 0
        total += mass_recursion(total)
    end

    total
end

File.foreach("input.txt") { 
    |line| 

    input = line.to_i
    result += mass_recursion(input)
}

puts result