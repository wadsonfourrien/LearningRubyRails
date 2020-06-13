# substrings method that takes a word or sentence and a dictionary as first and second parameter then return a hash with words found in the dictionary as substrings. 

def substrings(str, dict)
  substr_match = Hash.new
  str_arr = str.downcase.split(' ')
  dict.each do |word|
    #word = word.downcase
    str_arr.each do |substr|
      if substr.include?(word)
        if substr_match.has_key?(word)
          substr_match[word] += 1
        else
          substr_match[word] = 1
        end
      end
    end
  end
  return substr_match
end
