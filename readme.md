## Battleships Challenge

We have to create the battleships game, I've isolated the small steps to achieve this ( well maybe not):

#### A player is created:

* has a name
* has a board
* Can shoot to a board
* Can see his own grid
* Can see if he still has ships floating

#### A board is created:

* Boards are 10x10 grids
* Each board is an array
* Boards have columns and rows.
* Each row is an array
* To call a value you have to pick a row and then the column
* ships are created.
* A ship can take up more than one element
* A ship can be present in more than one row/column
* Registers shots, shows if you hit the water or a boat
* Can see the opponents view, hidding the living ships new

## Battleships

We're creating a board with random boats,
every method should be at around maybe 2-3
lines. Rules for the board:

* Ships can't overlap
* Must be created inside the board
* Not touch each other

And you have to create:

* 4 ships of 1
* 3 ships of 2
* 2 ships of 3
* 1 ship of  4


So the way around this is that you have an array of arrays:

```ruby

              # 0  1  2
mega_board = [ [a, b, c], # 0
               [c, d, e], # 1
               [f, g, h], # 2
               [h, i, j], # 3
               [k, l, m] ] # 4
```

Now

