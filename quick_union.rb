#public class QuickUnionUF
#{
 # private int[] id;
  #public QuickUnionUF(int N)
  #{
   # id = new int[N]
    #for (int i = 0; i < N; i++) id[i] = i;
  #}
  #private int root(int i)
  #{
   # while (i != id[i]) i = id[i];
   # return i;
  #}
  #public boolean connected(int p, int q)
  #{
  #  return root(p) == root(q);
  #}
  #public void union(int p, int q)
  #{
   # int i = root(p)
   # int j = root(q)
   # id[i] = j;
  #}   
#}

def setarray(num)
  array = Array.new(num) { |i| i }
end

def root(array, x)
  while x != array[x]
    x = array[x]
  end
  x
end

def connected(array, x, y)
  root(array, x) == root(array, y)
end

def union(array, x, y)
  i = root(array, x)
  j = root(array, y)
  array[i] = j

end

a = setarray(10)
r = root(a, 3)
union(a, 1, 2)
puts connected(a, 1, 2)