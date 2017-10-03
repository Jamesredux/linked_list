Linked Lists from Odin Project

In Computer Science one of the most basic and fundamental data structures is the linked list, which functions similarly to an array. The principal benefit of a linked list over a conventional array is that the list elements can easily be inserted or removed without reallocation of any other elements.

In some programming languages the size of an array is a concern and one of the ways to overcome that problem and allow dynamically allocated data is using linked lists.

Luckily in Ruby arrays aren't limited to a certain size, so you don't have to think about overcoming that limitation.

So if array size is not a limitation in Ruby, are linked lists really necessary? The short answer to that is no; however, it's the simplest of the dynamic data structures and it will give you a solid foundation, so you can understand more complex data structures like graphs and binary trees with more ease.

Structure of a Linked List
A linked list is a linear collection of data elements called nodes that "point" to the next node by means of a pointer.

Each node holds a single element of data and a link or pointer to the next node in the list.

A head node is the first node in the list, a tail node is the last node in the list. Below is a basic representation of a linked list:

[ NODE(head) ] -> [ NODE ] -> [ NODE(tail) ] -> nil


Your Task
You will need two classes:

LinkedList class, which will represent the full list.
Node class, containing a #value method and a link to the #next_node, set both as nil by default.
Build the following methods in your linked list class:

#append adds a new node to the end of the list
#prepend adds a new node to the start of the list
#size returns the total number of nodes in the list
#head returns the first node in the list
#tail returns the last node in the list
#at(index) returns the node at the given index
#pop removes the last element from the list
#contains? returns true if the passed in value is in the list and otherwise returns false.
#find(data) returns the index of the node containing data, or nil if not found.
#to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
Extra Credit
#insert_at(index) that inserts the node at the given index
#remove_at(index) that removes the node at the given index. (You will need to update the links of your nodes in the list when you remove a node.)
