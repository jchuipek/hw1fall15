# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{|i| sum += i }
  return sum 
end

def max_2_sum arr
  if arr.empty?
    sum = 0
  elsif arr.count == 1
    sum = arr[0]
  else
    newArray = arr.sort{|x,y| y<=>x}
    sum = newArray[0] + newArray[1]
  end
  return sum
end

def sum_to_n? arr, n
  matches = false
  arr.each{|x| arr.each{|y| matches = true if  x != y && x + y == n}}
  return matches
end

# Part 2

def hello(name)
  string = "Hello, " + name.to_s
  return string
end

def starts_with_consonant? s
  if s =~ /\b\A[^aeiou]/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s =~ /^(0?[01]*00|0)$/
    return true
  end
  return false
end

# Part 3

class BookInStock
   def initialize(isbn1, price1)
     if isbn1.empty?
        raise ArgumentError.new("Invalid Arguments")
     elsif price1 <= 0
        raise ArgumentError.new("Invalid Arguments")
     else
       @isbn = isbn1
       @price = price1
     end
   end
   
   def price_as_string
     floatPrice = sprintf("%0.02f",@price)
     newPrice = "$"+ floatPrice.to_s
     return newPrice
   end
   
   def isbn
     @isbn
   end
   
   def price
     @price
   end
   
   def isbn=(value)
     @isbn = value
   end
   
   def price=(value)
     @price = value
   end
end
