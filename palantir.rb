# Returns true if list contains duplicates, false otherwise; given list of integers
def findDuplicates(elems) 
  occurences = {}
  
  elems.each do |elem|
    if (occurrences[elem].nil?)
      occurences[elem] = 1
    else
      return true
    end
  end
  
  return false

end

# Return true if elems contains any two integers which are the same and
#    at most k places away from each other in the list.
# In other words, return true if there exist i, j such that
#    elems[i] == elems[j] and |i - j| <= k.
# Return false otherwise.
def findDuplicatesInK(elems, k)
  # Loop through the elements once
  # Keep hash of last k elemenets seen
  # Check to see that current element is in hash
  # If not, continue and remove the oldest element in the hash
  # If it is, return true
  if k == 0
    return false
  end
  
  k_hash = {}
  
  # Initialized with first k elements
  k.times do |x|
    k_hash[elems[x]] = x
  end
  
  k_elements_seen = 0
  
  elems.each_with_index do |elem, index|
    if k_hash[elem].nil?
      oldest_index = index - k > 0 ? index -k : 0
      k_hash[elems[oldest_index]] = nil
      k_hash[elem] = index
    else
      if k_hash[elem] != index
        return true
      end
    end
  end
  
  return false 

end



