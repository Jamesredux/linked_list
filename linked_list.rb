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
		return 0 if @head.nil?
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

		def find(data)
			return "Value not in list" if contains(data) == false
			pointer = @head
			size = list_size
			size.times do |index|
				return index if pointer.value == data
				pointer = pointer.next 
			end
		end

		def print_list
		list_array = []
		current = @head
		while current != nil
			list_array<<current.value
			current = current.next
		end
		
		puts list_array.inspect
	end	

	def to_s
		return "nil" if list_size == 0
		string = ""
		size = list_size 
		pointer = @head
		size.times do |index|
			string<<"(#{pointer.value}) -> "
			pointer = pointer.next	
		end
		
		string <<"nil"
		return string	
		
	end

	def insert_at(data, index)
		if index == 0
			prepend(data) 
		elsif index > list_size
			append(data)		
		else
			pointer = @head
			(index - 1).times {pointer = pointer.next}
			new_next = pointer.next
			pointer.next = Node.new(data, new_next)

		end 
	end

	def delete_at(index)
		pointer = @head
		if index >= list_size
			puts "No entry at that index point"
			return nil 
		elsif index == 0
				pointer.value = pointer.next.value
				pointer.next = pointer.next.next	
		else
			(index - 1).times {pointer = pointer.next}
			pointer.next = pointer.next.next
		end	
			
	end

end
puts "Test of Linked List ++++++++++++++"
test = LinkedList.new
test.append("banana")
test.prepend("apple")
test.prepend("pear")
test.prepend("orange")
test.append("fig")
test.append("watermelon")
test.append("blueberry")
test.append("onion")
test.append("potato")
test.prepend("carrot")
test.print_list
puts test.list_size
puts "head #{test.head}"
puts "tail #{test.tail}"
puts "#{test.at(3)} is at point 3"
test.pop 
puts test.contains("watermelon")
puts test.find("fig")
puts test.to_s
test.insert_at("strawberry", 6)
test.insert_at("grapes", 0)

test.print_list
test.delete_at(0)
test.print_list
test.delete_at(5)
test.print_list