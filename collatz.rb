#! /usr/bin/env ruby

# Given positive number, 
# If odd, 3n+1
# If even, n/2
# Eventually gets to 1

@chain_numbers = {}

def collatz (current_number)
	counter = 0
	original = current_number

	while (current_number != 1)

		if (!@chain_numbers[current_number].nil?)
			counter += @chain_numbers[current_number]
			@chain_numbers[original] = counter
			return counter
		end

		if (current_number  % 2 == 1)
			current_number = 3 * current_number  + 1			
		else 
			current_number = current_number/2
		end
		
		counter += 1
	end

	@chain_numbers[original] = counter

	return counter
end

longest_chain = 0
(1..1000000).each do |n|
	chain_length = collatz n
	if chain_length > longest_chain
		longest_chain = chain_length
	end
end

puts longest_chain
