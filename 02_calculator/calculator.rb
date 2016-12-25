#write your code here
def add(x,y)
   sum = x + y
   sum
end

def subtract(x,y)
    difference = x - y
    difference
end

def sum(array)
    summed = 0
    array.each {|x| summed += x}
    summed
end

def multiply(*factors)
    product = 1
    factors.each {|x| product *= x} 
    product
end