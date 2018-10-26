array_of_characters = *'a'..'z'
array_of_words = ["one", "two", "three"]
poem = ['turning', 'and', 'turning', 'in', 'the', 'widening', 'gyre']
array_of_messy_words = [' hello', nil, '  and ', '', 'goodbye ', nil]

def sentence_to_array(string)
  string.split(' ')
end

def clean_up_elements(array)
  array.compact.map {|string| string.strip}.select {|string| string != ''}
end

def array_to_sentence(array)
  array.join(' ')
end

def capitalize_all_elements(array)
  array.map {|string| string.capitalize }
end

def substitute_strings(array, pattern, replacement)
  array.map {|string| string.gsub(pattern, replacement)}
end

def title_format(array)
  capitalize_exceptions = ['a', 'an', 'the', 'for', 'and', 'nor', 'but', 'or', 'yet', 'so', 'at', 'around', 'by', 'after', 'along', 'for', 'from', 'of', 'on', 'in', 'to', 'with', 'without']

  array.map {|string|
    string_array = sentence_to_array(string)
    capitalized_array = capitalize_all_elements(string_array)
    capitalized_array.map.with_index {|str, i|
      if capitalize_exceptions.include?(str.downcase) && i != 0
        str.downcase
      else
        str
      end
    }.join(' ')
  }
end
