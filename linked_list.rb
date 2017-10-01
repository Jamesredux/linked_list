class Node 
	attr_accessor :value, :next

	def initialize(value, next_node=nil)
		@value = value
		@next = next_node
		
	end
	
	
end




class LinkedList 
	def initialize
		@head = nil
	end
	
	def append(value)
		if @head.nil?
			@head = Node.new(value)
		else
			current = @head
			while current.next != nil
				current = current.next
			end	
			current.next = Node.new(value)
		end	
	end

	def prepend(val)
		@head = Node.new(val, @head)	
	end

	

	def list_size
		current = @head
		list_size = 1
		while current.next != nil
			current = current.next
			list_size += 1
			
		end
		return list_size

	end	

	def head
		return @head.value
		
	end
	
	def print_list
		list_array = []
		current = @head
		while current != nil
			list_array<<current.value
			current = current.next
		end
		#list_array<<current.value #add last value as loop stops too early
		puts list_array.inspect
	end	

	def tail
		current = @head
		while current.next != nil
			current = current.next
		end
		return current.value
	end

	def at(index)
		pointer = @head
		count = 0
		max_size = self.list_size - 1	
		if index == max_size 
			return self.tail			
		elsif index == count 
			return self.head
		else	
			while count < index && pointer.next != nil
				pointer = pointer.next
				count +=  1
			end	
				if pointer.next.nil?
					print "No value at that index point"
				else
					return pointer.value	
				end	
			end
		end

		def pop
			pointer = @head
				while pointer.next
					prev = pointer
					pointer = pointer.next
				end
					prev.next = nil
					popped = pointer.value
					pointer = nil
					return popped
		end

		def contains(check_val)
			pointer = @head
			size = self.list_size
			size.times do 
				return true if pointer.value == check_val
					pointer = pointer.next
			end
				return false
		end

end

test = LinkedList.new
test.append(999)

test.prepend(44)
test.prepend(40)
test.prepend("opp")
#test.print_list
test.append(3)
test.append(53)
test.append(37)
test.append(63)
test.append(307)
test.prepend(9)

test.print_list
#test.list_size
#test.head
#test.tail
puts test.at(0)
puts test.at(2)
puts test.at(9)
puts test.at(100)
puts test.pop
test.print_list
puts test.pop
test.print_list
puts test.contains("opp")
puts test.contains(7)
puts test.contains(3)
puts test.contains(37)