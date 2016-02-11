require 'minitest/autorun'
require_relative 'quick_union_class'

class TestQuickUnion < Minitest::Test
  def setup
    @object = QuickUnion.new(10)
  end

  def test_quick
    assert_equal(false, @object.connected(1, 2))
    @object.union(1,2)
    assert_equal(true, @object.connected(1, 2))
  end
end