
# bubble sort

def bubble_sort(arr)
  return arr if arr.size <= 1
  swap = true
  while swap
    swap = false
    (arr.length - 1).times do |n|
      #puts "This is number #{n}. #{sorted}"
      if arr[n] > arr[n+1]
        arr[n], arr[n+1] = arr[n+1], arr[n]
        swap = true
      end
    end
  end
  return arr
end
