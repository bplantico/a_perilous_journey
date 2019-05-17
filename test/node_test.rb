require 'minitest/autorun'
require 'minitest/emoji'
require './lib/node'

class NodeTest < Minitest::Test
  def setup
    @node = Node.new("Burke")
  end

  def test_it_exists
    assert_instance_of Node, @node
  end

  def test_it_has_a_surname
    assert_equal "Burke", @node.surname
  end

  def test_next_node_iniitializes_nil
    assert_nil @node.next_node
  end

end
