function palindrome(string){
    dictionary = {}
    for (i=0; i<string.length; i++){
        if (string[i] in dictionary){
            delete dictionary[string[i]]
        } else {
            dictionary[string[i]] = 1
        }
    }
    let length = Object.keys(dictionary).length
    if (length>1) return false 
    else return true
}

console.log(palindrome('raceracy'))
