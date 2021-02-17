def betterCompression(s)
    dictionary = {}
    sorted_string = ""
    integers = ['1','2','3','4','5','6','7','8','9','0']
    i = 0
    countStart = i+1
    countEnd = i+2

    while i < s.length
        while countEnd <= s.length
            if !integers.include?(s[countEnd])
                # puts "Letter:", s[i]
                dictionary[s[i]] ? dictionary[s[i]] += s[countStart...countEnd].to_i : dictionary[s[i]] = s[countStart...countEnd].to_i
                # puts "Count:", s[countStart...countEnd]
                break
            end
            countEnd += 1
        end
        i = countEnd
        countStart = i+1
        countEnd = i+2
    end


   
    dictionary.sort.each do |pair|
        sorted_string += pair[0] + pair[1].to_s
    end
    return sorted_string
end

s1 = 'a3b6g8f3b4'
s2 = 'a12b56c1'

# p betterCompression(s1)
p betterCompression(s2)