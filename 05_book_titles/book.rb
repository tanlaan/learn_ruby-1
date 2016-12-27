class Book
# write your code here
    attr_accessor = :title
    def title
       @title 
    end
    
    def title=(title)
         #break apart title
         temp = []
         conjunctions = ['for', 'and', 'or', 'nor', 'but', 'yet', 'so']
         prepositions = ['above', 'about', 'across', 'against', 'along', 'among', 'around', 'at', 'before', 'behind', 'below', 'beneath','beside', 'between', 'beyond', 'by', 'down', 'during', 'except', 'for', 'from', 'in', 'inside', 'into', 'like', 'near', 'of', 'off', 'on', 'since', 'to', 'toward', 'through', 'under', 'until', 'up', 'upon', 'with', 'within']
         articles = ['the', 'a', 'an']
         words = title.split(' ')
         first = words.shift()
         first[0] = first[0].upcase
         temp.push(first)
         #make each word uppercase
         words.each do |word|
            if conjunctions.include? word
                temp.push(word)
            elsif prepositions.include? word
                temp.push(word)
                
            elsif articles.include? word
                temp.push(word)
            else
                word[0] = word[0].upcase
                temp.push(word)
            end
         end
         #convert from array to string
         title = temp.join(' ')
         @title = title
    end
end
