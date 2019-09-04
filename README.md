# Canvas

This is a Ruby program that gives you a character-based canvas editor in the command line.

To run it, clone this repo and then change into the main directory. Ensure that the file canvas_editor is executable by typing:
```
$ chmod +x .\lib\canvas_editor.rb
```
Then type:
```
./lib/canvas_editor.rb
```
or if you prefer to use irb
```
$ irb
> load 'lib/canvas_editor.rb'
```
You will then see the message
```
Welcome to the character-based canvas editor!
Enter a command (? for help):
```
 
Note that the canvas starts with coordinate (1,1) in the top left corner. In the example below of a 5 x 6 canvas:

The pixel at row = 2 , column = 4 is colour W

The pixel at row = 5 , column = 3 is colour T
```
O O O O O
O O O W O
O O O O O
O O O O O
O O T O O
O O O O O
```
Please not that there is currently a bug which is printing all the canvas pixel values one per line below the canvas.

