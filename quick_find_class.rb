class QuickFind

  def initialize(length)
    @array = Array.new(length) { |i| i }
  end

  def connected(int1, int2)
    @array[int1] == @array[int2]
  end
 
  def union(int1, int2)
    x = @array[int1]
    y = @array[int2]
    @array.each_with_index do |elem,i|
      if elem == x 
        @array[i] = y
      end
    end
  end
end