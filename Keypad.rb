def create_hash(word)
    hash = {}
    word.split('').each do |letter|
        hash[letter] ? hash[letter] +=1 : hash[letter] = 1
    end
    return hash
end

def make_word?(key_letter, hash, word)
    #Given a hash of keys, and a key letter which word must contain, can you make word?
    if !word.include?(key_letter)
        puts "No Key Letter" 
        return false
    end
    
    word.split('').each do |letter|
        if !hash.include?(letter)
            puts "Missing Letter"
            return false
        end
    end
    return true
end


def numKeypadSolutions(wordlist, keypads)
    
    words_array = []
    keypads.each do |keys|
        key_letter = keys[0]
        remaining = keys[1..-1]
        hash = create_hash(remaining)
        num_words = 0
        wordlist.each do |word|
            if make_word?(key_letter, hash, word)
                puts word
                num_words += 1
            end
        end
        words_array << num_words
    end
    return words_array
end

wordlist = ['APPLE', 'PLEAS', 'PLEASE']
keypads = ['AELWXYZ', 'AELPXYZ', 'AELPSXY', 'SAELPRT', 'XAEBKSY']

# p numKeypadSolutions(wordlist, keypads)
hash = create_hash(keypads[1][1..-1])
key_letter = keypads[1][0]
p key_letter, hash, wordlist[0]

hash_of_hashes = {}

hash1 = create_hash('basketball')

hash_of_hashes['basketball'] ?  hash_of_hashes['basketball'] : hash_of_hashes['basketball'] = create_hash('basketball')

p hash_of_hashes

# p make_word?(key_letter, hash, wordlist[0])