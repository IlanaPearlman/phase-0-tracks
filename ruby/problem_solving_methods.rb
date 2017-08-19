def search_array(arr, integer)
  #loop through array
  counter = 0
  while counter < arr.length
  #at each value, return index if integer found
    return counter if arr[counter] == integer
    counter += 1
  end
end

arr = [42, 89, 23, 1]
p search_array(arr, 24)


# method takes number, returns array
def fib(num)
  #make empty array to store work and return
  array = []
  #if num >= 1, add 0 to the end of the array
  if num >= 1
    array << 0
  end

  #if num >= 2, add 1 to the end of the array
  if num >= 2
    array << 1
  end

  # for all other numbers, Each number in the array is the sum of the previous two numbers, except for the 0 and the 1, which we started out with.
  while array.length < num
    last = array[-1]
    second_to_last = array[-2]
    array << last + second_to_last
  end

  #return an array
  array
end

p fib(6)

#To verify your work: the last number in the array generated by fib(100) will be 218922995834555169026.

p fib(100)[-1] == 218922995834555169026

# Insertion Sort Pseudocode
#loop through array number of times array is long
#leave first number in place
#at index 1 and for the rest of the numbers
#look to left
# if there are no bigger numbers on left, it stays
#  if there are bigger number to the left, it moves
# insert it between number on left is smaller, number on right is bigger


#Implement the insertion sorting method in Ruby.
def insertion_sort(array)
  p array
#loop through array number of times array is long
  index = 1
  while index < array.length
#leave first number (index 0) in place
#at index 1 and for the rest of the numbers
#look to left
# if there are no bigger numbers on left, it stays
#  if there are bigger number to the left, it moves
    if array[0..index - 1].any? {|val| val > array[index]}
# insert it at the beginning,or between number on left is smaller, number on right is bigger

      sub_array = array[0..index - 1]
      sub_index = 0
      biggest_smaller = 0

      while sub_index < sub_array.length
        if sub_array[sub_index] < array[index]
          biggest_smaller = sub_index
        end
      sub_index += 1
      end

      current_value = array[index]
      array.delete_at(index)

      if array[0] >= current_value
        array.unshift(current_value)
      else
        array.insert(biggest_smaller + 1, current_value)
      end
      p array

    end
    index += 1
  end
  array
end

p insertion_sort([10,1,9,100,2,8,3,50,7,-4,4,6,78,5])