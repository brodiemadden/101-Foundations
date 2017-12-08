# method takes a float that represents an angle between 0 and 360 degrees
# returns a string that represents that angle in degrees, minutes(') and second(")

DEGREE = "\xC2\xB0"

def dms(float)
  degrees, minutes = float.divmod(1)
  minutes = minutes * 60
  seconds = (minutes % 1) * 60
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
