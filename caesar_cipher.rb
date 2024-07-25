# Create a function that uses the Caesar Cipher technique to encrypt a string

def caesar_cipher(str, shift)
  num_spaces = 0

  # Shift left making sure that if the number exceeds 25 it will shift by the correct number of spaces
  shift.abs > 25 ? num_spaces = shift.abs % 25 : num_spaces = shift.abs
  
  puts num_spaces
end

# Test result
caesar_cipher("", 55)