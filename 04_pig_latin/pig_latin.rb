#write your code here

def translate words
	vowels = ['a', 'e', 'i', 'o', 'u']
	words = words.split(' ')
	translated = []

	words.each do |word|
		moved = ""

		for i in 0..(word.length - 1)
			if word[i] == "q" && word[i+1] == "u"
				translated.push(word[i+2..-1] + moved + "quay")
				break
			elsif !vowels.include?(word[i])
				moved += word[i]
			else
				translated.push(word[i..-1] + moved + "ay")
				break
			end
		end
	end
	return translated.join(' ')
end