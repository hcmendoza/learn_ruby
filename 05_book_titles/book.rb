class Book

	@book = Book.new

	def title=(str)
		new_title = str.split
		articles = %w(and the a an in of)

		new_title.each do |x| 
			unless articles.include?(x)
				x.capitalize!
			end
		end

		new_title[0].capitalize!
		@title = new_title.join(" ")
	end

	def title
		@title
	end

end


# OR
=begin

class Book
  def title=(str)
    words = str.split
    new_title = ""
    words.each_with_index do |word, index|
      if word.length > 3 or index == 0 or word == "i"
        new_title << word.capitalize
      else
        new_title << word
      end
      new_title << " "
    end
    @title = new_title.chop
  end

  def title
    @title
  end
end

=end
