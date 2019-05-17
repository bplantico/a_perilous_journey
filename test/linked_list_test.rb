require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def setup
    @list =  LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_head_initializes_nil
    assert_nil @list.head
  end

  def test_append_creates_Node_object_with_string_as_node_surname

    node = @list.append("West")

    assert_instance_of Node, @list.head
    assert_equal "West", @list.head.surname
    assert_nil @list.head.next_node
  end

  def test_it_returns_count_of_nodes
    node = @list.append("West")

    assert_equal 1, @list.count
  end

  # def test_to_string_inserts_surname_into_string
  #   assert_equal "The West Family", @list.to_string
  # end

end

# > list.to_string
# => "The West family"
