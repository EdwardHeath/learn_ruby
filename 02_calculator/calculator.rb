#write your code here

def add a, b
	a + b
end

def subtract a, b
	a - b
end

def sum arr
	total = 0
	arr.each do |i|
		total += i
	end
	return total
end

def multiply *args
	product = 1
	args.each do |i|
		product *= i
	end
	return product
end

def power a, b
	a ** b
end

def factorial a
	if a == 0
		return 1
	else
		return factorial(a-1) * a
	end		
end
