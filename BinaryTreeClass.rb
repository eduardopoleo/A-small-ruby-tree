# this class  will allow me to construct all the nodes of my tree.
# Each node will have 4 atributes: 
# value: its own value which is set when first defining the node
# RB: right branch. Which is another node
# LB: left branch. Which is another node
# parent: which is another node
# Each node will also have 7 methods:
# 3 set methods for RB, LB and parent correspondingly
# 4 get methods for displaying the values of RB,LB,pararent and value. 

class BinaryTree

  def initialize(value)  
    # Instance variables  
    @value = value  
    @RB = nil
    @LB = nil
    @parent = nil 
  end  

  def setRB(node)
  	@RB = node
  end

  def setLB(node)
  	@LB = node
  end
	
  def setparent(node)
  	@parent = node
  end

  def getRB 
  	@RB
  end

  def getLB
  	@LB
  end

  def getparent
  	@parent
  end

  def getValue
    @value
  end

  def display
  	'n'+@value.to_s
  end

end 




