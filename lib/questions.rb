# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  array.select{|elem| elem.split(//)[0]=="a"}
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  vowels = ["a", "e", "i", "o", "u"]
  array.select{|elem| vowels.include?(elem.split(//)[0])}
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  array.compact
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.reject { |x| x == nil || x == false}
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.map {|elem| elem.reverse!}
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
  array = array.combination(2).to_a

end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  last_element_index = array.length - 1
  array[3, last_element_index]
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  array.map! {|elem| elem.reverse!}
  array.sort!
  array.map! {|elem| elem.reverse!}
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  if string.length%2 != 0
      middle_index = string.length/2 +1
  else
    middle_index = (string.length / 2)
  end
  string[0, middle_index]
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
 number > 0 ? number = -number : number
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  new_array = []
  new_array.push(array.select{|elem| elem.even?})
  new_array.push(array.reject{|elem| elem.even?})
  new_array
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  (array.select{|elem| elem == elem.reverse}).count
end

# return the shortest word in an array
def shortest_word_in_array(array)
  array.min{|a,b| a.size <=> b.size }
end

# return the shortest word in an array
def longest_word_in_array(array)
  array.max{|a,b| a.size <=> b.size }
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.reduce(:+)
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  array = array + array
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  (array.reduce(:+)/ array.length.to_f).ceil
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  index = array.find_index {|elem| elem > 5}
  array[0, index]
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  new_array = []
  array.each_slice(2) {|elem| new_array.push(elem)}
  new_array.to_h
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  new_array = []
  array.each{|elem| new_array.push(elem.split(//))}
  new_array.flatten.sort
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  hash.to_a.flatten.reduce(:+)
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string.gsub(/[A-Z]/, '')
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  float.ceil
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  float.to_int
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  nice_date = date.day.to_s + "/" + date.month.to_s + "/" + date.year.to_s
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  email = email.split(//)
  start_index = email.find_index {|elem| elem == "@"} + 1
  end_index = email.find_index {|elem| elem == "."} - start_index
  email[start_index, end_index].join
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  exceptions = ['A', 'And', 'The']
  arr = string.split(' ').map{|x| x.capitalize!}
  arr[0] + ' ' + ((arr[1, arr.length]).map{|x| exceptions.include?(x)? x.downcase : x}.join(" "))
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string.gsub!(/[a-zA-Z\d]/, "")!=""
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.to_a.last
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  range.to_a.last != range.end
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)

end

# count the number of words in a file
def word_count_a_file(file_path)
  file = File.open(file_path, "r")
  contents = file.read
  contents.split(' ').length
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  str_method()
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  bank_holidays = ["26/12", "25/12", "25/8", "26/5",
                  "5/5", "21/4", "18/4", "1/1"]
  date = date.day.to_s + "/" + date.month.to_s
  bank_holidays.include?(date)
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
  date = Time.new(birthday.year + 1, birthday.month, birthday.day)
  while date.strftime("%A") != "Friday"
    date = Time.new(date.year + 1, birthday.month, birthday.day)
  end
  date.year
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  h = {}
  file = File.open(file_path, "r")

  file.each_line { |line|
    line.gsub!(/[^a-zA-Z]/, " ")
    words = line.split(' ')
    words_lengths = []
    words_lengths = words.map { |word|
      word.length
    }
    words_lengths.each { |length|
      if h.has_key?(length)
        h[length] = h[length] + 1
      else
        h[length] = 1
      end
    }
  }
  h
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def moduloo(n, dividor)
   n - (n/dividor)*dividor
end

def fizzbuzz
  (1..100).map { |n|
    fizz = 3
    buzz = 5
    case [moduloo(n,fizz), moduloo(n, buzz)].map(&:zero?)
      when [true, true]
        "FizzBuzz"
      when [true, false]
        "Fizz"
      when [false, true]
        "Buzz"
      else
        n
      end
  }
end





def fizzbuzz_without_modulo
  fizz = 3
  buzz = 5
  1.upto(100) { |i|

  }
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)

class Fixnum
def bottles
  case self
    when 0 then "no more bottles"
    when 1 then "one bottle"
    else    "#{self} bottles"
  end
end
end

def ninety_nine_bottles_of_beer
  99.downto(0) do |n|
    puts "#{n.bottles.capitalize} of beer on the wall, #{n.bottles} of
  beer."
    if n > 0
      puts "Take one down and pass it around, #{(n-1).bottles} of beer on
  the wall."
      puts
    else
      puts "Go to the store and buy some more, #{99.bottles} of beer on
  the wall."
    end
  end
end
