class Timer
  #write your code here
  attr_accessor :seconds, :minutes, :hours

  
 def initialize
    @seconds = 0    
    @minutes = 0
    @hours = 0
 end
 
 def time_string
     seconds = @seconds % 60
     minutes = @seconds / 60
     hours = minutes / 60
     minutes = minutes % 60
     @seconds = seconds
     @minutes = minutes
     @hours = hours
     time = "%02d:%02d:%02d" % [@hours, @minutes, @seconds]
     
 end
 
end
