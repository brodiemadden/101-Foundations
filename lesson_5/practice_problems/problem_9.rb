arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_arr = arr.map! do |sub_arr|  #map will return a new array of sorted elements
               sub_arr.sort do |a, b|  #that is, arr will not be changed
                 b <=> a               #if we wanted to change arr, we could call map! or sort!
               end                     #without saving it to the sorted_arr variable
              end

p sorted_arr
