

=begin Release 0
def search_array( arr, number )
    index = 0

    arr.each do |position|
        if position == number
            puts index 
            break
        end
        index += 1
    end

    if index == arr.length
        p arr[index]
    end
end

arr = [42, 89, 23, 1]
p search_array(arr, 89)
=end


=begin Release 1
def fib(number)
    index = 0
    arr = [ 0, 1 ]
    until index >= number - 2
        arr << arr[ index ] + arr[ index + 1 ]
        index += 1
    end    
    return arr
end

p fib(6)
p fib(100).last == 218922995834555169026
=end