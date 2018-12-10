class Timer
  #write your code here

  attr_reader :seconds, :time_string
  attr_writer :seconds

  def initialize
  	@seconds = 0
  	@time_string = "00:00:00"
  end

  def time_string
  	hours = seconds / 3600
  	@seconds = @seconds % 3600
  	minutes = seconds / 60
  	@seconds = @seconds % 60
  	
  	@time_string = hours < 10 ? "0" + hours.to_s : hours.to_s
  	@time_string += minutes < 10 ? ":0" + minutes.to_s : ":" + minutes.to_s
  	@time_string += @seconds < 10 ? ":0" + @seconds.to_s : ":" + @seconds.to_s
  end
end
