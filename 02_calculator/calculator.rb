def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(input)
	input.inject(0) { |sum, n| sum + n }
end

def multiply(input)
	input.inject(1) { |product, n| product * n }
end

def power(x, y)
	x ** y
end

def factorial(n)
	if n == 0
		return 1
	else (1..n).inject(:*)
	end
end