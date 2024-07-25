# caesar-cipher

Simple program to encrypt a string using the Caesar cipher technique.

## How the Caesar Cipher Works

The Caesar cipher works by taking a string argument and a number argument, then transforming the string by shifting to the number that is passed to the method. For example if the string entered is "AbC" and the number is 2 if the method shifts to the left then the method should return the string "YzA".

## My Plan for the Method

- Shift characters left by the absolute value passed as the number argument
- Convert each character in the string into the character code
- Add to the character code by the number passed in as an argument
- Convert each character code back into characters
- Append all characters to an empty string
- Return the string
