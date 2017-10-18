require 'simplecov'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!
SimpleCov.start

require_relative 'to_do_list.rb'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    shifted_element = @list.shift
    assert_equal(@todo1, shifted_element)
    assert_equal(2, @list.size)
  end

  def test_pop
    popped_element = @list.pop
    assert_equal(@todo3, popped_element)
    assert_equal(2, @list.size)
  end

  def test_done
    assert_equal(false, @list.done?)
  end

  def test_type_error
    assert_raises(TypeError) {@list.add('String')}
  end

  def test_shovel
    new_todo = Todo.new("Unimportant task")
    @list << new_todo
    assert_includes(@list.todos, new_todo)
  end

  def test_add_alias
    new_todo = Todo.new("Walk the cat.")
    @list.add(new_todo)
    @todos << new_todo
    assert_equal(@list.to_a, @todos)
  end

  def test_item_at
    assert_equal(@todo1, @list.item_at(0))
    assert_raises(IndexError) { @list.item_at(100) }
  end

  def mark_item_at
    @list.mark_done_at(0)
    assert_equal(true, @list.item_at(0).done?)
  end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_undone_at(100) }
    @todo1.done!
    @todo2.done!
    @todo3.done!

    @list.mark_undone_at(1)

    assert_equal(true, @todo1.done?)
    assert_equal(false, @todo2.done?)
    assert_equal(true, @todo3.done?)
  end

  def test_mark_all_done
    @list.mark_all_done
    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)
  end

  def test_remove_at
    assert_raises(IndexError) { @list.remove_at(100) }
    @list.remove_at(0)
    assert_equal(2, @list.size)
  end

  def test_each
    new_test_array = []
    @list.each { |element| new_test_array << element }
    assert_equal(@list.to_a, new_test_array)
  end

  def test_each_2
    assert_equal(@list, @list.each { |element| element })
  end

  def test_select
    @todo1.done!
    @todo2.undone!
    @todo3.undone!

    assert_equal([@todo1], @list.select { |todo| todo.done? }.to_a)
  end

end