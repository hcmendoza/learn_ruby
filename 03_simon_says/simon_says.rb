def echo(says)
	says
end

def shout(says)
	says.upcase
end

def repeat(says, times = 2)
	says + (" #{says}")*(times-1)
	# OR ([says]*times).join(" ")
end

def start_of_word(word, letters = 1)
	n = 0
	select_letters = ''
	while n < letters
		select_letters << word[n]
		n += 1
	end
	return select_letters
	# OR word[0..letters]
end

def first_word(words)
	first = words.split
	return first[0]
	#words.split(" ").first
end

def titleize(words)
	title = words.split
	title.each do |n|
		n.capitalize! if (n != 'over' and (n.length > 3 || n== title[0]))
		end
	title.join(" ")
	# OR   words = s.split.map do |word|
	#    if %w(the and over).include?(word)
	#      word
	#    else
	#      word.capitalize
	#    end
	#  end
	#  words.first.capitalize!
	#  words.join(" ")
end
