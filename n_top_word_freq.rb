#! /usr/bin/env ruby

def top_words (doc, n)
	# Approach: Split the document into words by spaces
	# Create a hash of word -> frequency

	word_to_freq = {}
	words = doc.split(' ')	
	
	words.each do |word|
		if word_to_freq[word].nil?
			word_to_freq[word] = 1
		else
			word_to_freq[word] += 1
		end
	end
	
end

text = "here is a list of common words and here are some more common words and blarg and whatever"
puts top_words(text, 5)
