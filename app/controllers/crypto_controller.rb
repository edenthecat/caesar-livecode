class CryptoController < ApplicationController
  def encrypt
    text = params[:text]
    shift = params[:shift]

    text.upcase!
    alphabet = ('A'...'Z').to_a

    # Split text into characters
    # Loop through the characters
    cipher = text.split('').map do |letter|
      # - Get the current index of the alphabet for the char
      index = alphabet.index(letter)

      if index
        # - Shift the index by the shift value
        new_index = (index + shift)
        # - Return the new letter
        alphabet[new_index]
      else
        # - If the current character isn't in the alphabet, we'll just return the char
        letter
      end
    end

    # Join the new characters as a string
    @encrypted_message = cipher.join
  end

  def decrypt
  end
end
