#Write your code here
def sentence_to_array(string)
  string.split
end

def clean_up_elements(array)
  array.compact.map {|string| string.strip}.select {|string| string != ''}
end

def array_to_sentence(array)
  array.join(' ')
end

def capitalize_all_elements(array)
  array.map {|e| e.capitalize }
end

def substitute_strings(array, pattern, replacement)
  array.map {|e| e.gsub(pattern, replacement)}
end

def title_format(array)
  capitalize_exceptions = ['of', 'a', 'the']

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
