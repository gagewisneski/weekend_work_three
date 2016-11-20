# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 
# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class Tv
  attr_accessor :power, :volume, :channel

  def initialize(power, volume, channel)
    @power = power
    @volume = volume
    @channel = channel
  end
end

class Remote
  def initialize(tv)
    @tv = tv
  end

  def toggle
    if @tv.power == "on"
      return @tv.power = "off"
    else
      return @tv.power = "on"
    end
  end

  def increment_volume
    @tv.volume += 1
  end

  def decrement_volume
    @tv.volume -= 1
  end

  def set_channel(number)
    @tv.channel = number
  end
end


television = Tv.new("off", 20, 3)
remote = Remote.new(television)

puts "The television is turned #{television.power}"
remote.toggle
puts "The television is turned #{television.power}"
puts "==============="

puts "The current volume is #{television.volume}"
8.times do 
  remote.increment_volume
end
puts "The new volume is #{television.volume}"
puts "==============="

puts  "The current volume is #{television.volume}"
15.times do 
  remote.decrement_volume
end
puts "The new volume is #{television.volume}"
puts "==============="

puts "The current channel is #{television.channel}"
remote.set_channel(5)
puts "The new channel is #{television.channel}"
