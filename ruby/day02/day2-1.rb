
array = File.read("input1.txt").split(",").map(&:to_i)

iter = 0
super_pos = 0

# transformations before run
array[1] = 12
array[2] = 2

while super_pos != 99 do
    
    tmp_array = array[iter..iter+3]
    super_pos = tmp_array[0]
    one = tmp_array[1]
    two = tmp_array[2]
    pos = tmp_array[3]

    if super_pos == 1
        array[pos] = array[one] + array[two]
    elsif super_pos == 2
        array[pos] = array[one] * array[two]
    elsif super_pos == 99
        break
    else
        puts "Wrong!"
        break
    end

    iter += 4
end

pp array[0]