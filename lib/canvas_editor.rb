#!/usr/bin/env ruby
require_relative 'canvas'

class Command_Handler
  
  def parse_command(command)
    comm_arr = command.split(' ')
    case (comm_arr.first) 
    when 'I' then
      impl_canvas(comm_arr)
    when 'S' then
      show_canvas 
    when 'X' then "Bye!"
    else "Command not recognized, please try again."
    end
  end

  def impl_canvas(comm_arr)
    if comm_arr.length == 3
      columns = comm_arr[1].to_i
      rows = comm_arr[2].to_i
      if (1..250).include?(columns) && (1..250).include?(rows)
        @canvas = Canvas.new(columns, rows)
        "Your #{columns} x #{rows} canvas has been created."
      else
        "Invalid parameters to the I command, please try again."
      end
    else
      "Wrong number of parameters to the I command, please try again."
    end
  end
  
  def show_canvas
    if @canvas
      @canvas.canvas_array.each { |elem|
        puts elem.join(' ')
      }
    else
      "Canvas not created yet, nothing to show."
    end
  end

end


puts "Welcome to the character-based canvas editor!"
command_handler = Command_Handler.new
loop do
  print "Enter a command (? for help): "
  command = gets.chomp
  return_message = command_handler.parse_command(command)
  break if return_message == "Bye!"
  puts return_message
end
puts "Bye!"
