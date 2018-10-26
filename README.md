# Practice with Arrays of Strings

## Introduction

In this lab, we'll solidify our understanding of how array characters work and
how to perform various operations on them.

## Learning Goals

- Perform operations on arrays

## Perform Operations on Arrays

Your task is to write the implementations for a set of methods. Each method
takes in an array of strings and manipulate those strings in a specific way.
These methods should work with any array of strings.

`sentence_to_array(string)` - Takes in a string. Returns an array of individual
words from the string, separated using whitespace.

```ruby
sentence_to_array('Earth has not anything to show more fair')
# => ['Earth', 'has', 'not', 'anything', 'to', 'show', 'more', 'fair']
```

`clean_up_elements(array)` - Takes in an array. Returns a new array of strings in
which all leading and trailing whitespaces have been removed and some special
characters replaced with whitespaces. Removes any `nil` or empty string values
in the array

```ruby
clean_up_elements([' hello', nil, '  and ', '', 'goodbye ', nil])
# => ['hello', 'and', 'goodbye']
```

`array_to_sentence(array)` - Takes in an array. Returns an _string_ of joined
array values. The first word should be capitalized.

```ruby
array_to_sentence('and', 'all', 'that', 'mighty', 'heart', 'is', 'lying', 'still')
# => 'And all that mighty heart is lying still'
```

`capitalize_all_elements(array)` - Takes in an array. Returns a new array in which
the first character of every string capitalized

```ruby
capitalize_all_elements(['see', 'spot', 'run'])
# => ['See', 'Spot', 'Run']
```

`substitute_strings(array, pattern, replacement)` - Takes in an array, a
pattern, and replacement. Returns a new array in which all strings that match
the pattern have been substituted by the replacement. Substitutions should be
case sensitive.

```ruby
substitute_strings(['go', 'dog', 'Go'], 'go', 'yo')
# => ['yo', 'dog', 'Go']
```

`title_format(array)` - Takes in an array. Returns a new array in which all
strings have been formatted as titles. The first letter of the first word is
always capitalized. The first letter of every other word in a string is also
capitalized, with the exception of articles, conjunctions and prepositions.
Arrays of exceptions are provided in `lib/array_practice.rb`

```ruby
title_format(['for whom the bell tolls', 'the rime of the ancient mariner', 'composed upon westminster bridge',])
# => ['For Whom the Bell Tolls', 'The Rime of the Ancient Mariner', 'Composed Upon Westminster Bridge']
```

Write implementations for each method in `lib/array_practice.rb`. Run `learn` to
see your progress.

## Conclusion

In web development, we often need to our programs to take in and interpret user
input. Users, however, are human, and prone to typos and unique formatting.

Arrays can be a handy tool when handling text and strings. They give us the
ability to manipulate and change strings in bulk. With them, we can take
human language and convert it something a computer can use. Or alternatively,
take something a computer generated and make it more human friendly.

## Resources

- [Arrays]
- [Strings]

[arrays]: https://ruby-doc.org/core-1.9.3/Array.html
[range]: https://ruby-doc.org/core-2.2.0/Range.html
[strings]: https://ruby-doc.org/core-2.2.0/String.html
