# Read input from STDIN. Print output to STDOUT

# Approach: 
# Read lines from STDIN. 
# First line has N + 1 values (N unknown so iterate through first line to compute N)
# Values are coefficients a0 a1 a2 etc. 

# Other lines contain N values which are variables
# Compute y(x1,..., n)
# If <= 0 : NOT FRAUD
# If > 0 : FRAUD

# Read in the coefficients so that we know what to multiply the variables by
# Put those in a list coeff

# For each line as we read in the values (or split), compute coeff[i] * value[i] and add to running count

def getCoeffs
    raw_coeffs = $stdin.readline
    split_coeffs = raw_coeffs.split(',')
    
    coeffs = []
    
    split_coeffs.each do |sc|    
        coeffs.push sc.to_f
    end
    
    coeffs
end

def fraudDetector
    coeffs = getCoeffs
    
    # We need to offset the term multiplication by 1
    # Don't forget, we need to always add coeffs[0] !
    
    $stdin.each_line do |line|
        sum = 0
        split_line = line.split(',')
        
        split_line.each_index do |i|
            term = coeffs[i] * split_line[i].to_f
            sum += term
        end
        
        sum += coeffs[0]
        
        if (sum <= 0)
            puts "not fraud"
        else
            puts "suspect fraud"
        end
        
    end
    
end

# Trying to think of other test cases before moving on

fraudDetector
