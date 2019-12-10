
array = File.read("input.txt").split(",").map(&:to_i)

def grav_assist(input_array, noun, verb)

    iter = 0
    inst_pointer = 0

    # transformations before run
    input_array[1] = noun.to_i
    input_array[2] = verb.to_i

    while inst_pointer != 99 do

    
        tmp_array = input_array[iter..iter+3]
        inst_pointer = tmp_array[0]
        one = tmp_array[1]
        two = tmp_array[2]
        pos = tmp_array[3]
    
        if inst_pointer == 1
            input_array[pos] = input_array[one] + input_array[two]
        elsif inst_pointer == 2
            input_array[pos] = input_array[one] * input_array[two]
        elsif inst_pointer == 99
            break
        else
            puts "Wrong!"
            break
        end
    
        iter += 4
    end

    input_array[0]
end

$continue = true

for i in 1..99 do
    break if !$continue
    for j in 1..99 do
        break if !$continue 
        program = array.dup
        result = grav_assist(program, i, j)
        if result == 19690720
            $continue = false
            pp i, j
            pp 100 * i + j
            pp program[0..3]
            break
        end
    end
end