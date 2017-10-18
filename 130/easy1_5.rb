=begin

Problem

- decrypt a number of names that have been encoded in ROT13.
- All names (surname and first name - apart from one), begin with capitals

Logic

- use String#ord and Fixnum#chr to translate between characters and ASCII table and back again.
- String#split the text input based on line breaks, then store each name in an array
- initially make all characters lower case with String#downcase
- Iterate through each element of the array and transform (with separate method?)
  - separate method
  - split each name into individual letters (String#chars)
  - Can't use String#ord, Fixnum#chr. Doesn't allow us to loop back round through end of alphabet. Instead can assign each letter it's own number, add/subtract 13 then use Fixnum#% to loop back round.
  - ignore spaces
  - transfrom number back to character (Fixnum#chr)
- return all names to cap case with String#capitalize
- Then join all names back together with line breaks (Array#join)

=end

# Code

require 'pry'

LETTERS = ('a'..'z').to_a

def decrypt_text(encrypted_text)
  array_of_names = encrypted_text.split("\n")
  array_of_names.map!(&:downcase)
  array_of_names.map! {|full_name| rot13_decrypt(full_name)}
  array_of_names.map! {|full_name| full_name.join.split(' ').map(&:capitalize).join(' ')}.join("\n")
end

def rot13_decrypt(input_string)
  input_string.chars.map do |letter| 
    unless letter.match(/[a-zA-Z]/)
      letter
    else
      LETTERS[(LETTERS.find_index(letter) - 13) % 26]
    end
  end
end

# Tests

puts decrypt_text("Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu")