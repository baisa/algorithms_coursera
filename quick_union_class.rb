class QuickUnion

  def initialize(length)
    @array = Array.new(length) { |i| i }
  end

  def root(x)
    while x != @array[x]
      x = @array[x]
    end
    x
  end 

  def connected(x, y)
    @array.root(x) == @array.root(y)
  end
 
  def union(x, y)
    i = @array.root(x)
    j = @array.root(y)
    @array[i] = j
  end

end
