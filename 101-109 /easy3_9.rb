# Approach

# - so we need to remove non-alpha numeric characters - string#delete?
# - we need to downcase the whole thing to make case insensitive

# Code

def palindrome?(txt)
  txt == txt.reverse
end

def real_palindrome?(real_txt)
  clean_text = real_txt.downcase.scan(/[a-z0-9]/).join('')
  palindrome?(clean_text)
end

# Tests

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false