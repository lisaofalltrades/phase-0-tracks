

=begin Release 0: Implement a Simple Search
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


=begin Release 1: Calculate Fibonacci Numbers
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

=begin Release 2: Sort an Array
1. Choose a simple sorting algorithm to learn about. Bubble sort or insertion sort are good ones for beginners, but you're welcome to be more adventurous.
1A Bubble Sort
2. Form a conceptual understanding of how the algorithm works. What helps you grasp it? Do visualizations help? How can you find the right materials for yourself?
2A I found this resource: https://www.sitepoint.com/sorting-algorithms-ruby/
   To understand the algorithm, I read it out loud and ask myself if it makes sense.
   I also play around with the variables to see how the algorithm plays out.
3. Notice your emotional state as you tackle this algorithm: do you feel frustrated, underqualified, stupid, or overwhelmed? Or is it more like excitement and curiosity? How do you think these feelings affect your ability to learn?
3A I feel overwhemled and lost.
4. Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.
-identify how many variables are in a list
-identify each variable and the one next to it
-compare and indentify which one is lower
-move the lower one to the left
-if they are the same, keep it as is
-move up 1 index
-once the end is reached
-repeat until the whole list is sorted in order
-end
-display newly sorted list
5. Implement the sorting method in Ruby.

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

a=[9,4,7,4,3,5,7,8,8,89]
p bubble_sort(a)

=end
