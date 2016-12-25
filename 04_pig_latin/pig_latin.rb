#write your code here
def translate(word)
    characters = word.split('')
    first_letter = characters[0]
    case first_letter
    when 'a','e','i','o','u'
        characters.push("ay")
    else
        a = characters.slice!(0)
        characters.push(a)
        characters.push("ay")
        
        
    end
    word = characters.join('')
    word
    
end 