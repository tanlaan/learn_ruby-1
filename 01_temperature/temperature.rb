#write your code here
def ftoc(temp_f)
    #Conversion from fahrenheit to celsius is done by subtracting 32, multiplying by 5, and dividing by 9
    temp_c = (((temp_f - 32.0) * 5.0) / 9.0)
    
    temp_c
end

def ctof(temp_c)
    #Conversion from celsius to fahrenheit is the exact opposite of ftoc
    temp_f = (((temp_c * 9.0) / 5.0) + 32.0)
    temp_f
end
