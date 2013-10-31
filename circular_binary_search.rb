#! /usr/bin/env ruby

# Given a circular sorted array, find an element k
# The array could be sorted, except for a pivot point e.g. {5, 6, 8, 1, 2, 3}

# NOTE: YOU FORGOT TO CHECK IF IT WAS IN THE RANGE YOU FUCK
def cbs arr, start, ending, k
	# Approach: Do a modified binary search on the list
	# Find the midpoint and split the array in half
	# One half of the array will always be sorted
	# If it is sorted and k is in the range, binary search that half
	# Otherwise, repeat the same process on the other half

	if arr.length == 0
		puts "empty list"
		return
	end

	mid = (start + ending) / 2
	
	puts "start: #{start}, value: #{arr[start]}" 
	puts "ending: #{ending}, value: #{arr[ending]}" 
	puts "mid: #{mid}, value: #{arr[mid]}" 

	if arr[mid] == k
		puts k
		return k
	end

	# Values in first half are sorted
	if arr[start] < arr[mid]
		if arr[start] < k && arr[mid] > k
			return cbs arr, start, mid, k
		else
			puts "first sorted, checking second"
			return cbs arr, mid, ending, k
		end
	end

	# Values in second half are sorted
	if arr[mid] < arr[ending]
		if arr[mid] < k && arr[ending] > k
			return cbs arr, mid, ending, k
		else
			return cbs arr, 0, mid, k
		end
	end	

	puts "nothing found"
end

list = [1,2, 3, 4, 5]
list2 = [5, 6, 7, 1, 2, 3]
list3 = []
list4 = [5, 6, 7, 8, 10, 11, 1, 2, 3]

#cbs list, 0, list.length-1, 3
#cbs list2, 0, list2.length-1, 7
#cbs list3, 0, list3.length-1, 1
cbs list4, 0, list4.length-1, 11
