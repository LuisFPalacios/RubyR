# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #return arr.sum
  
  sum =0
 arr.each {|x| sum+= x}
return sum
end

def max_2_sum arr
  # YOUR CODE HERE
    if arr.empty?
     return 0

    elsif arr.length == 1
       return arr[0]
    end
  sum = 0
  
  arr.sort!
   sum += arr[arr.length - 1] + arr[arr.length - 2]
 
   return sum

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0...arr.length-1
  
    for j in i+1...arr.length
     if arr[i] + arr[j] == n 
       return true
     end
    end
  end
  return false
end
# Part 2

def hello(name)
  # YOUR CODE HERE1
  
  return"Hello, " + name
  
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if s =~/^[aieou]/i
    return false
    
  elsif s=~/^\W/
  return false
  elsif s==""
    return false
    
  else 
  return true
  
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  if s =~ /\D/
    return false
  end
  if s =~ /00$/ || s == "0"
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :price
    attr_accessor :isbn
    
  def initialize isbn,price
    
    
    raise ArgumentError'isbn is empty or the price is less than or equal to zero' if price <= 0 || isbn == ""
    @price = price
    @isbn = isbn
    
  end
    
    def price_as_string 
     return"$#{'%.2f' % price}"
      
    end
      
end
