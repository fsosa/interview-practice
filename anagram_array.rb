#! /usr/bin/env ruby

# Given a list of words, write a function which
# takes in the list, and groups the words together
# according to which ones are anagrams of eachother
# e.g.
# input = ["art", "rat", "bats", "banana", "stab", "tar"]
# output = [["art", "rat", "tar], ["bats", "stab"], ["banana"]


# Approach: 
# Iterate through list, sort chars of word, insert into hashmap
# Iterate through hashmap to print out words in order
def sort_by_anagram (list)
	sorted_words = {}

	list.each do |word|
		sorted_word = word.chars.sort.join
		if (sorted_words[sorted_word].nil?)
			sorted_words[sorted_word] = [word]
		else
			sorted_words[sorted_word] << word
		end		
	end

	sorted_array = []
	sorted_words.keys.each do |key|
		sorted_array.push sorted_words[key]
	end

	sorted_array

end

input = ["art", "rat", "bats", "banana", "stab", "tar"]
output = [["art", "rat", "tar"], ["bats", "stab"], ["banana"]]

final = sort_by_anagram input
puts final[0]
puts output.equal? sort_by_anagram input
