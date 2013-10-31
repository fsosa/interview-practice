#! /usr/bin/env ruby

#	Write a program that prints the numbers from 1 to 100.
# But for multiples of 3 print "Fizz" instead of the number and print "Buzz" for multiples of 5.
# For numbers which are multiples of both 3 and 5 print "FizzBuzz"

def fizzbuzz 
	(1..100).each do |n|
		output = ""
		if (n % 3 == 0)
			output << "Fizz"
		end

		if (n % 5 == 0)
			output << "Buzz"
		end

		if output.empty?
			output << n.to_s
		end

		puts output
	end
end

def fizzbuzz2
	(1..100).each do |n|
		fizz = n % 3 == 0 ? "Fizz" : nil 
		buzz = n % 5 == 0 ? "Buzz" : nil
		puts fizz || buzz ? "#{fizz}#{buzz}" : n.to_s
	end
end

def fizzbuzz3
	(1..100).each do |n|
		fb = "#{'Fizz' if n % 3 == 0}#{'Buzz' if n % 5 == 0}"
		puts fb.empty? ? n : fb
	end
end

fizzbuzz3
