require_relative 'BinaryTreeClass'

def checkFunction(searchValue,node)
	if node.getValue  == searchValue
		return true
	else
		return false
	end
end

def TracePath(node)
	if not node.getparent
		# it is important to implicitly convert the node into an array by adding []
		return [node.display] 
	else	#otherwise the '+' concatenate method would no work
		return [node.display] + TracePath(node.getparent)
	end
end

# Depth first search (rootNode, searchValue)
def DFS(rootNode,searchValue)
	stack = []
	path = []
	path[0] =rootNode
	# Initializes the stack with rootNode
	stack[0]=rootNode
	# while there is something in the stack keep running
	while stack.length != 0
		# if checkFunction(searchValue,stack[0]) == true
		if checkFunction(searchValue,stack[0]) == true
			# return true and path
			return TracePath(stack[0])
		# else
		else
			#remove stack[0] from the stack and inmidiately stores it in temp
			temp = stack.shift
			#if there is right brach in the formely stack[0] now stored in temp
			if  temp.getRB
				#insert the rigth branch at the beginning of the stack
				stack.unshift(temp.getRB)
			end
			#if there is left branch in the formely stack[0] now stored in temp
			if temp.getLB
				#insert the left brach at the beginning of the stack.
				stack.unshift(temp.getLB)
				
			end
			#insert the temp in the path array to keep track of the path used for the search
			puts temp.display
		end
	end
	# return false becuase at this point the function did not find the value
	return false
end

# Breadth First Search
def BFS(rootNode,searchValue)
	queue= []
	path = []
	path[0] =rootNode
	# Initializes the queue with rootNode
	queue[0]=rootNode
	# while there is something in the queuekeep running
	while queue.length != 0
		# if checkFunction(searchValue,queue[0]) == true
		if checkFunction(searchValue,queue[0]) == true
			# return true and path
			return TracePath(queue[0])
		# else
		else
			#remove queue[0] from the queue and inmidiately stores it in temp
			temp = queue.shift
			#if there is right brach in the formely queue[0] now stored in temp
			if  temp.getRB
				#insert the rigth branch at the beginning of the queue
				queue.push(temp.getRB)
			end
			#if there is left branch in the formely queue[0] now stored in temp
			if temp.getLB
				#insert the left brach at the beginning of the queue.
				queue.push(temp.getLB)
				
			end
			#insert the temp in the path array to keep track of the path used for the search
			
		end
	end
	# return false becuase at this point the function did not find the value
	return false
end


