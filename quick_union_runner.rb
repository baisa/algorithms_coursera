require_relative 'quick_union_class'

object = QuickUnion.new(10)
object.root(3)
object.union(1, 2)
puts object.connected(1, 2)