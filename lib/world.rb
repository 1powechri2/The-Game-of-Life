 # here's my idea...
 # instantiate the world with one instance variable.
 # this variable is an array that holds the arrays that
 # will be rows. The columns will be the index of each nested
 # array.
 # example
 # world = [[1, 0, 1], [0, 0, 0], [1, 1, 0]]
 # 1 is alive
 # 0 is dead.
 # world index 0 = [1, 0, 1]
 # world index 1 = [0, 0, 0]
 # world index 2 = [1, 1, 0]
 # this creates our 2 dimensional matrix where we can
 # compare neighbors for the next generation.
 # I found a ruby library that we can use to do this easily
 # called Martrix. Here is an example in pry:
 # pry(main)> Matrix.build(4,4){|row, col| rand(2)}
 # =>Matrix[[1, 0, 1, 1], [1, 1, 0, 1], [1, 0, 1, 1], [1, 1, 1, 0]]
