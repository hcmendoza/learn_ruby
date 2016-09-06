class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end
	
	def seconds=(secs)
		new_time = secs.to_i
		@hours = "00"
		@mins = (new_time/60).to_s
		@seconds = (new_time%60).to_s
	end

	def time_string
		if @mins.to_i > 60
			@hours = (@mins.to_i/60).to_s
			@mins = (@mins.to_i%60).to_s
		end
		
		if @hours.length < 2
			@hours = '0' + @hours
		end
		if @mins.length < 2
			@mins = '0' + @mins
		end
		if @seconds.length < 2
			@seconds= '0' + @seconds
		end

		return @hours + ':' + @mins + ':' + @seconds
	end

end


=begin

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remainder = @seconds%3600
    sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
  end
  
end
	
=end
