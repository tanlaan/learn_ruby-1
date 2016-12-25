#write your code here
def echo(say)
    say
end

def shout(yell)
    yell.upcase
end

def repeat(say_again, times = 2)
    say = say_again + (' ' + say_again) * (times - 1)
    say
end

def start_of_word(word, characters)
    start = word[0..(characters - 1)]
    start
end

def first_word(sentence)
    word = sentence.split(' ')[0]
    word
end

def titleize(title)
    words = title.split(' ')
    first_word = true
    words.each do |x|
        if first_word
            x[0] = x[0].upcase
            first_word = false

        else
            case x
            when "a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "nor", "over"
        
            else    
                x[0] = x[0].upcase
            end
        end
    end
    title = words.join(' ')
end
