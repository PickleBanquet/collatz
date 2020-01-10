def collatz_value(n)
	n = n.to_i
	if n <= 0
		puts "Undefined value"
	else
		i = 1
		while (n != 1)
			i = i + 1
			if (n % 2 == 0)
				n = n /2
			else
				n = 3 * n + 1
			end
		end
		return i
	end	
end

high_value = 0
high_collatz = 0

for i in (1..1000000)
	current_value = collatz_value(i)
	if (current_value > high_value)
		high_value = current_value
		high_collatz = i
	end
end

puts high_collatz
puts high_value