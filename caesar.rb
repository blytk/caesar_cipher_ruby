def caesar_cipher(text, shift_factor = 5)
  # Convert the text to an array of ints
  array_of_chars = text.chars  
  array_of_ints = array_of_chars.map { |char| char.ord }

  # Add to each of the int, the factor (check if it's a letter of the alphabet)
  # Modulo to wrap from a to z (26 letters in English). If not a letter, stays as it is.
  array_of_ciphered_ints = array_of_ints.map do |int|
    if (int > 64 && int < 91)
      65 + ((int - 65 + shift_factor) % 26 )
    elsif (int > 96 && int < 123)
      97 + ((int - 97 + shift_factor) % 26 )
    else
      int
    end
  end

  # Convert each int in the array back to string
  array_of_ciphered_chars = array_of_ciphered_ints.map { |int| int.chr }  
  # Convert the array with chars into a single string
  return array_of_ciphered_chars.join("")
end

p caesar_cipher("What a string!", 5)