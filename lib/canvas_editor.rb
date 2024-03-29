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
    when 'L' then
      colour_pixel(comm_arr)
    when 'C' then
      clear_canvas
    when '?' then
      show_help
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
        "Your new #{columns} x #{rows} canvas has been created."
      else
        "Invalid parameters to the I command, please try again."
      end
    else
      "Wrong number of parameters to the I command, please try again."
    end
  end
  
  def show_canvas
    if @canvas
      @canvas.canvas_array.each { |row|
        puts row.join(' ')
      }
    else
      "Canvas not created yet, nothing to show."
    end
  end

  def colour_pixel(comm_arr)
    if @canvas
      if (comm_arr.length == 4) && (comm_arr[3] =~ /[A-Z]/)
        col = comm_arr[1].to_i
        row = comm_arr[2].to_i
        pixcol = comm_arr[3]
        if (1..@canvas.columns).include?(col) && (1..@canvas.rows).include?(row)
          @canvas.canvas_array[col - 1][row - 1] = pixcol
          "Pixel at row = #{col} , column = #{row} now has colour #{pixcol}."
        else
          "Invalid coordinates for the L command, please try again."
        end
      else
        "Wrong parameters to the L command, please try again."
      end
    else
      "Canvas not created yet, nothing to clear."
    end
  end

  def clear_canvas
    if @canvas
      @canvas = Canvas.new(@canvas.columns, @canvas.rows)
      "Canvas has been cleared."
    else
      "Canvas not created yet, cannot clear anything."
    end
  end   

  def show_help
    puts "Canvas Help:"
    puts "Type : I M N to create a canvas of M columns and N rows. M and N must be integer values between 1 and 250"
    puts "Note that the canvas coordinates start with (1,1) in the top left corner"
    puts "Type : S to show the canvas"
    puts "Type : L X Y C to colour a pixel at coordinate (X,Y)"
    puts "Type : C to clear the canvas"
    puts "Type : ? to see Help - what you are seeing now"
    puts "Type : X to exit the program"
    puts "No other commands are supported at the moment"
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
