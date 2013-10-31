#! /usr/bin/env ruby
# Find all the permutations of a string

def permute (prefix, string)
	if string.empty?
		puts prefix 
	end

	string.chars.each_with_index do |char, index|
		permute(prefix + char, string[0, index] + string [index+1, string.length])	
	end
end

permute "", "dog"
