#write your code here
def translate(sentence)
    vowels = ['a','e','i','o','u']
    piglatin = []
    
    words = sentence.split(' ')
    words.each do |word|
        characters = word.split('')
        if vowels.include? characters[0]
            #do nothing, starts with vowel
        else 
            if vowels.include? characters[1]
                if characters.slice(0..1).join('') == 'qu'
                    #exception for qu, take the first two letters to the end
                    a = characters.slice!(0..1)
                    characters.push(a)
                else
                   #take the first letter to the end
                    a = characters.slice!(0)
                    characters.push(a)
                end
            else
                if vowels.include? characters[2]
                    if characters.slice(1..2).join('') == 'qu'
                        #exception for qu as a "single" consenant 
                        a = characters.slice!(0..2)
                        characters.push(a)
                    else
                        #take the first two letters to the end
                        a = characters.slice!(0..1)
                        characters.push(a)
                    end
                else
                   #take the first three letters to the end
                   a = characters.slice!(0..2)
                   characters.push(a)
                end
            end 
        end
        characters.push("ay")
        word = characters.join('')
        piglatin.push(word)
    end

    piglatin = piglatin.join(' ')
    piglatin
end 