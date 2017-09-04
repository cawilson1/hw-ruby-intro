# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{ |var| sum += var}
sum
  
end



def max_2_sum arr
  return 0  if arr.length == 0
  else if arr.length==1
    return arr[0]
  end
  arr.sort!
  var = arr[arr.length - 1] + arr[arr.length - 2]
  return var

end



def sum_to_n? arr, n
  if (arr.length == 0 || arr.length == 1)
    return false
  end
  
  arr.each{ |v1|
    arr.each{|v2|
     sum = v1 + v2
     if sum == n
       return true unless v1 == v2
     end
    }
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
