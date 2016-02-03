

 #private int[] id;
# public QuickFindUF(int N)
 #{
 #id = new int[N];
 #for (int i = 0; i < N; i++)
 #id[i] = i;
 #}
 #public boolean connected(int p, int q)
 #{ return id[p] == id[q]; }
 #public void union(int p, int q)
 
 #int pid = id[p];
 #int qid = id[q];
 #for (int i = 0; i < id.length; i++)
 #if (id[i] == pid) id[i] = qid;


def setarray(num)
  # Array.new(5) { |i| i }
  array = Array.new(num)
  i = 0
  a = array.map do |elem|
    elem = i
    i = i + 1
    elem
  end
  p a
  a
end

def connected(array, int1, int2)
  array[int1] == array[int2]
end

def union(array, int1, int2)
  x = array[int1]
  y = array[int2]
  array.each_with_index do |elem,i|
    if elem == x 
      array[i] = y
    end
  end
end
#setarray(6)
#union([0,1,2,3,4,5,6,7,8,9], 1, 2)
#puts connected([0,1,2,3,4,5,6,7,8,9], 1, 2)
#puts connected([0,1,1,3,4,5,6,7,8,9], 1, 2)

a = setarray(10)
puts connected(a, 1, 2)
union(a, 1, 2)
print a
puts connected(a, 1, 2)
