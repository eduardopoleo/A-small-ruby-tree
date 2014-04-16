require_relative 'SearchFunctions'

# in this file I am going to create a tree using the method defined 
# in BinaryTree Class

# Here I am initializing the corresponding nodes
n5 = BinaryTree.new(5)
n2 = BinaryTree.new(2)
n1 = BinaryTree.new(1)
n4 = BinaryTree.new(4)
n3 = BinaryTree.new(3)
n8 = BinaryTree.new(8)
n6 = BinaryTree.new(6)
n7 = BinaryTree.new(7)

#defining the corresponding associations between nodes
n5.setLB(n2)
n2.setparent(n5)
n5.setRB(n8)
n8.setparent(n5)

n2.setLB(n1)
n1.setparent(n2)
n2.setRB(n4)
n4.setparent(n2)

n4.setRB(n3)
n3.setparent(n4)

n8.setLB(n6)
n6.setparent(n8)

n6.setRB(n7)
n7.setparent(n6)

# Here I am using one of the search function defined in the SearchFunction.rb file
#Feel free to change the search value or the use DFS option of search.
# If the function return False means that a node with that specific value has not
# yet been defined 
puts BFS(n5,10)

