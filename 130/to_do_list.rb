=begin
 
Problem

- create class to contain ToDos.
- class should be able to 
  - add ToDos (and throw an error if other objects are added)
  - return size of list
  - return first and last objects on list
  - return 'item at' a given index on the list
  - 'mark done' an item at a given index on the list
  - 'mark undone' an item at a given index on the list
  - 'remove at' remove and return an item at a given index on the list
  - 'shift' remove and return the first item on list
  - 'pop' remove and return the last item on the list
  - 'to_s' return a string representation of the list


Logic

- define a load of methods.
- store todo collaborator objects in an array

Methods 

=end

# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title, :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(new_item)
    raise TypeError unless new_item.instance_of?(Todo)
    @todos << new_item
  end

  def <<(new_item)
    @todos << new_item
  end

  def size
    @todos.size
  end

  def first
    @todos[0]
  end

  def last 
    @todos[-1]
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def item_at(index)
    check_index(index)
    @todos[index]
  end

  def mark_done_at(index)
    check_index(index)
    @todos[index].done!
  end

  def mark_undone_at(index)
    check_index(index)
    @todos[index].undone!
  end

  def remove_at(index)
    check_index(index)
    @todos.delete_at(index)
  end

  def to_s
    puts "---- #{title} ----"
    @todos.each do |todo|
      puts todo  
    end
    ""
  end

  def check_index(index)
    raise IndexError if @todos[index] == nil
  end

  def each
    counter = 0
    while counter < @todos.size
      yield(@todos[counter]) 
      counter += 1
    end
    self
  end

  def select
    new_todo_list = TodoList.new('New ToDo List')
    each do |todo|
      new_todo_list << todo if yield(todo)
    end
    new_todo_list
  end

  def find_by_title(string)
    each do |todo|
      return todo if todo.title.include?(string)
    end
    nil
  end

  def all_done
    select do |todo|
      todo.done?
    end
  end

  def not_all_done
    select do |todo|
      !todo.done?
    end
  end

  def mark_done(string)
    each do |todo|
      if todo.title.include?(string)
        todo.done!
        break
      end
    end
  end

  def mark_all_undone
    each do |todo|
      todo.undone!
    end
  end

  def mark_all_done
    each do |todo|
      todo.done!
    end
  end

  def to_a
    @todos
  end

  def done?
    @todos.all? {|todo| todo.done?}
  end

end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

list << todo1
list << todo2
list << todo3

puts list.mark_all_done
puts list.mark_all_undone


