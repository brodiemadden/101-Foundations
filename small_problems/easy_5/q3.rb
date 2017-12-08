# write two methods that each take a time of day in 24 hour format
# return number of minutes before and after midnight respectively

# select hours and minutes out of string format and convert to minutes

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

=begin (my brute force ugly first try)
def after_midnight(time)
  hours_in_mins = (time[0, 2].to_i) * MINUTES_PER_HOUR
  minutes = time[3, 2].to_i
  minutes_after_midnight = hours_in_mins + minutes
  minutes_after_midnight = minutes_after_midnight % MINUTES_PER_DAY
end

def before_midnight(time)
  hours_in_mins = (time[0, 2].to_i) * MINUTES_PER_HOUR
  minutes = time[3, 2].to_i
  minutes_before_midnight = MINUTES_PER_DAY - (hours_in_mins + minutes)
  minutes_before_midnight = minutes_before_midnight % MINUTES_PER_DAY
end
=end

#given refactored solution
def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
