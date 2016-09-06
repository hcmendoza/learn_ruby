def translate(word)
	a = word.split.map {|z| z.split('')}
	vowels = %w(a e i o u)

	a.collect! do |n|
		if vowels.include?(n[0])
			n.push('ay').join
		elsif (n[0..1] == ['q', 'u'])
			n.push(n.slice!(0..1)).push('ay').join
		elsif (n[1..2] == ['q', 'u'])
			n.push(n.slice!(0..2)).push('ay').join
		elsif (! vowels.include?(n[0]) and ! vowels.include?(n[1]) and vowels.include?(n[2]))
			n.push(n.slice!(0..1)).push('ay').join
		elsif (! vowels.include?(n[0]) and ! vowels.include?(n[1]) and ! vowels.include?(n[2]))
			n.push(n.slice!(0..2)).push('ay').join
		else 
			n.push(n.slice!(0)).push('ay').join
		end
	end

	a.join(" ")
end
