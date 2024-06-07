# Create an empty array to store the encrypted message


# Create a method that takes a string and a number as arguments
def ceaser_cipher(encrypt, number)
if is_a_char?(encrypt)
    alphabet = [*('a'..'z')]
    number = number % 26
    # split the string into an array of characters
   encrypt = encrypt.split("")
   
   new_array = []
   encrypt.each do |letter|
    #  check if the letter is a letter


     letter = letter.downcase
    #  char to ascii
    # find index of this letter in the alphabet
    alphabet.index(letter)

    #  shift by number
        letter_number = (alphabet.index(letter) + number)%26
    #  ascii to char
       
        new_array.push(alphabet[letter_number])
      
   end
#    return the encrypted message
    new_array.join
else
    return "Please enter a valid string"
end
end


def is_a_char?(string)
    string.is_a? String
    result = false
    string.each_char do |char|
        # check if the character is a letter
        
        if char.downcase.match?(/[a-z]/)
            result =  true
        else
            result = false
         break
            
        end
    end
    result
end


p ceaser_cipher("abc1234",150) # => "mjqqt"
