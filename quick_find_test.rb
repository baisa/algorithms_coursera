require 'minitest/autorun'
require_relative 'quick_find'

class TestQuickFind < Minitest::Test

  def test_quick
    a = setarray(10)
    assert_equal(false, connected(a, 1, 2))
    union(a,1,2)
    assert_equal(true, connected(a, 1, 2))
  end
end

