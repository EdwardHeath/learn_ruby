#write your code here

def echo str
	str
end

def shout str
	str.upcase
end

def repeat str, count = 2
	repeated = (str + " ") * count	
	return repeated.strip
end

def start_of_word word, start = 0
	word[0,start]
end

def first_word str
	str.slice(/^\w+ /).strip
end

def titleize str
	words = str.split(' ')

	words.each do |word|
		if word != "and" && word != "the" && word != "over"
			word.capitalize!
		end
	end

	words[0].capitalize!

	str = words.join(' ').strip
end