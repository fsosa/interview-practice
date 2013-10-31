#! /usr/bin/env ruby

def anagram_palindrome (string)
	# A string is an anagram of a palindrome if it has at most one letter that occurs an odd number of times
	num_odd = 0
	string.chars.each do |char|
		occurences = string.count char
		if occurences % 2 == 1
			if num_odd == 1
				return false
			end
			
			num_odd += 1
		end
	end

	return true

end


puts anagram_palindrome("sas")
puts anagram_palindrome("sa")
puts anagram_palindrome("aa")
puts anagram_palindrome("")
