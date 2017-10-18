# Approach

# - use ternary operator and string#length to determine which string longer
# - store strings as shrt_txt, lng_txt

# Code

def short_long_short(txt1, txt2)
  txt1.length < txt2.length ? (shrt_txt, lng_txt = txt1, txt2) : (shrt_txt, lng_txt = txt2, txt1) 
  shrt_txt + lng_txt + shrt_txt
end

# Tests

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"