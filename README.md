# Canvas

This is a Ruby program that gives you a character-based canvas editor in the command line.

To run it, clone this repo and then change into the main directory and type
```
./lib/canvas_editor.rb
```
or if you prefer use irb
```
$ irb
> load 'lib/canvas_editor.rb'
```
You will then see the message
```
Welcome to the character-based canvas editor!
Enter a command (? for help):
```
 
Note that the canvas starts with cooridnate (1,1) in the top left corner. In this example of a 5 x 6 canvas
Pixel at row = 2 , column = 4 now colour W
Pixel at row = 5 , column = 3 now colour T
```
O O O O O
O O O W O
O O O O O
O O O O O
O O T O O
O O O O O
```
There is currently a bug which is printing all the canvas pixel values one per line below the canvas.

