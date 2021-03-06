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
  return "Hello, #{name}"
end

def starts_with_consonant? s

  if s.to_s.empty?
    return false
  end
  
importantLetter = s.split(//).first.downcase

loopStringVowel = "aeiou"
loopStringCons = "bcdfghjklmnpqrstvwxyz"

  if loopStringVowel.include? importantLetter
    return false
  elsif loopStringCons.include? importantLetter
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  
if s.to_s.empty?
  return false
end
  
array = s.split("")

array.each{|v| if (v!="1"&&v!="0")
  return false
end}
  
decimalVal = s.to_i(2)
if decimalVal % 4 == 0
  return true
end

return false
end

# Part 3

class BookInStock

  def initialize (isbn, price)
    if isbn.to_s.empty?
        raise ArgumentError
    end 
    if !(price > 0)
        raise ArgumentError
    end 
    @isbn, @price = isbn, price
  end
  
  #weird ruby getter and setter thing
  #equiv to attr_reader and attr_writer
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    return "$%0.2f" % [@price]
  end

end
