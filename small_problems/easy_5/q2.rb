=begin my-attempt...
def time_of_day(minutes)
  if minutes > 0
    hours, minutes = minutes.divmod(60)
    _, twenty_four_hour = hours.divmod(24)
    "#{twenty_four_hour}:#{minutes}"
  elsif minutes < 0
    minutes = minutes.abs
    hours, minutes = minutes.divmod(60)
    _, twenty_four_hour = hours.divmod(24)
    actual_hours = (23 - twenty_four_hour)
    actual_minutes = (60 - minutes)
    "#{actual_hours}:#{actual_minutes}"
  else
    hours, minutes = minutes.divmod(60)
    _, twenty_four_hour = hours.divmod(24)
    "#{twenty_four_hour}:#{minutes}"
  end
end
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0)
p time_of_day(-3)
p time_of_day(35)
p time_of_day(-1437)
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231)
