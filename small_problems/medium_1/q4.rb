# bank of switches numbered from 1 to n, each connected to exactly one light initially off
# first pass you toggle every one of them on
# second pass toggle 2, 4, 6 and so on (every second switch)
# third pass toggle 3, 6, 9 and so on (every third switch)
# you do n number of passes, turning off every Ith light for the current pass number

# method takes one argument, the total number of switches
# returns array that identifies which lights are on after n repetitions


def light_switches(n)
  light_hash = {}
  1.upto(n) { |i| light_hash[i] = true }
  2.upto(n) do |current_pass|
    light_hash.map do |light, state|
      light_hash[light] = !state if light % current_pass == 0
    end
  end
  lights_left_on = light_hash.select do |_, state|
    state
  end
  result = []
  lights_left_on.to_a.flatten.each_with_index do |element, index|
    result << element if index.even?
  end
  result
end

p light_switches(5)
p light_switches(10)
p light_switches(1000)
