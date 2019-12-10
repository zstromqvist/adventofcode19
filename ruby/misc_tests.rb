#!/usr/bin/env ruby

input = 1969

def mass_recursion(number)
    total = (number / 3) - 2

    if total > 0 && mass_recursion(total) > 0
        total += mass_recursion(total)
    end

    total
end

pp mass_recursion(input)