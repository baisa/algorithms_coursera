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
    root(x) == root(y)
  end
 
  def union(x, y)
    i = root(x)
    j = root(y)
    @array[i] = j
  end

end
