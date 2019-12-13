#!/usr/bin/env ruby

def add_two(array)
    array << 2
    pp array.object_id
end

a = [0,1]

b = a.dup
c = a.clone

add_two(a)
add_two(b)
add_two(c)
pp a, b, c
pp a.object_id
pp b.object_id
pp c.object_id