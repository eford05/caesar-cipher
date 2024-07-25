# Create a function that uses the Caesar Cipher technique to encrypt a string

def caesar_cipher(str, shift)
  result = ""
  num_spaces = 0
  remainder = (shift.abs % 25)

  # Shift left making sure that if the number exceeds 25 it will shift by the correct number of spaces
  shift.abs > 25 ? num_spaces = remainder : num_spaces = shift.abs
  
  # Iterate over the characters in the string
  str.each_char {|char|

  # Convert the characters to character code by the number of spaces
  cipher_char = char.ord - num_spaces

  # Space character condition, just append it 
  if (char.ord == 32)
    result << char

  # Condition for Ascii Ranges
  ## Range (65 >==< 90) Uppercase Letters
  elsif (char.ord >= 65 && char.ord <= 90)
    # Append characters
    (cipher_char < 65) ? result << (91 - (90 - cipher_char - 25)).chr : result << cipher_char.chr
  
  ## Range (97 >==< 122) Lowercase Letters
  elsif (char.ord >= 97 && char.ord <= 122)
    # Append characters
    (cipher_char < 97) ? result << (123 - (122 - cipher_char - 25)).chr : result << cipher_char.chr
  end
}

return result
end

# Test Shifting

puts caesar_cipher("The Odin Project", 51)