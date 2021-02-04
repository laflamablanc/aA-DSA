def letterBreakdown(string)
    letters = string.split('')
    dictionary = {}
    letters.each do |letter|
        if (dictionary.include?(letter))
            dictionary[letter] += 1
        else
            dictionary[letter] = 1
        end
    end
    return dictionary
end

def funWithAnagrams(text)
   return letterBreakdown(text[0])

end

str = ['code', 'doce', 'ecod', 'frame']


one = letterBreakdown('code')
two = letterBreakdown('doce')
puts one == two