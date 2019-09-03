#!/usr/bin/env ruby

def command_handler(command)
  comm_arr = command.split(' ')
  case (comm_arr.first) 
  when 'I' then
    if comm_arr.length == 3
      columns = comm_arr[1].to_i
      rows = comm_arr[2].to_i
      if (1..250).include?(columns) && (1..250).include?(rows)
        "Start canvas"
      else
        "Invalid parameters to the I command, please try again."
      end
    else
      "Wrong number of parameters to the I command, please try again."
    end
  when 'X' then "Bye!"
  else "Command not recognized, please try again."
  end
end

puts "Welcome to the character-based canvas editor!"
loop do
  print "Enter a command (? for help): "
  command = gets.chomp
  return_message = command_handler(command)
  break if return_message == "Bye!"
  puts return_message
end
puts "Bye!"