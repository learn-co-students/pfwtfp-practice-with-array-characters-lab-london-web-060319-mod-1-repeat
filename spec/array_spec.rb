require 'spec_helper'
require_relative '../lib/array_practice.rb'

array_of_characters = [*'a'..'z']
array_of_words = ["one", "two", "three"]
poem = ['turning', 'and', 'turning', 'in', 'the', 'widening', 'gyre']
array_of_messy_words = [' hello', nil, '  and ', '', 'goodbye ', nil]
titles = ['composed upon westminster bridge', 'a tale of two cities', 'the canterbury tales']

describe 'array_practice' do
  describe 'sentence_to_array' do
    it 'converts sentence strings into arrays' do
      expect(sentence_to_array("All bright and glittering in the smokeless air")).to eq(["All", "bright", "and", "glittering", "in", "the", "smokeless", "air"])
      expect(sentence_to_array("a")).to eq(["a"])
    end
  end

  describe 'clean_up_elements' do
    it 'removes any nil or empty string array elements as well as leading and trailing whitespaces' do
      expect(clean_up_elements(array_of_messy_words)).to eq(["hello", "and", "goodbye"])
    end
  end

  describe 'array_to_sentence' do
    it 'converts arrays into sentences strings' do
      expect(array_to_sentence(["The", "beauty", "of", "the", "morning;", "silent,", "bare"])).to eq("The beauty of the morning; silent, bare")
      expect(array_to_sentence(["a"])).to eq("a")
    end
  end

  describe 'capitalize_all_elements' do
    it 'returns an array with each element capitalized' do
      expect(capitalize_all_elements(array_of_characters)).to eq([*'A'..'Z'])
      expect(capitalize_all_elements(array_of_words)).to eq(["One", "Two", "Three"])
    end
  end

  describe 'substitute_strings' do
    it 'returns the first number whose square is > 350 in array_of_integers' do
      expect(substitute_strings(['go', 'dog', 'go'], 'go', 'yo')).to eq(['yo', 'dog', 'yo'])
      expect(substitute_strings(["They're there"], 'there', 'here')).to eq(["They're here"])
    end
  end


  describe 'title_format' do
    it 'returns all the numbers, cubed in array_of_integers' do
      expect(title_format(titles)).to eq(["Composed Upon Westminster Bridge", "A Tale of Two Cities", "The Canterbury Tales"])
      expect(title_format(["a", "a a", "the the the"])).to eq(["A", "A a", "The the the"])
    end
  end
end
