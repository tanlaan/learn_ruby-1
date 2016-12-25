#write your code here
def translate(sentence)
    vowels = ['a','e','i','o','u']
    piglatin = []
    
    words = sentence.split(' ')
    words.each do |word|
        characters = word.split('')
        first_letter = characters[0]
        case first_letter
        when 'a','e','i','o','u'
        else
            if vowels.include? characters[1]
                a = characters.slice!(0)
                characters.push(a)
            elsif 
            else
                a = characters.slice!(0..1)
                characters.push(a)
            end
        end
        characters.push("ay")
        characters = characters.join('')
        piglatin.push(characters)
    end

    piglatin = piglatin.join(' ')
    piglatin
end 