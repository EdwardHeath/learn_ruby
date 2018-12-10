class Book
# write your code here
	attr_reader :title

	def initialize
		@title = ""
	end

	def title=(title)
		title = title.split(' ')
		new_title = []
		avoid = ['and', 'in', 'the', 'of', 'a', 'an']

		title.each do |word|
			if !avoid.include?(word)
				new_title.push(word.capitalize())
			else
				new_title.push(word)
			end
		end

		new_title[0] = new_title[0].capitalize()
		
		@title = new_title.join(' ')
	end
	
end
