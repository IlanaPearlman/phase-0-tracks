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