

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
 


def quickfind(array, int1, int2)
  if array[int1] == array[int2]
    puts "#{array[int1]} and #{array[int2]} are connected"
  else
    puts "#{array[int1]} and #{array[int2]} are not connected"
  end
end

def union(array, int1, int2)
  x = array[int1]
  y = array[int2]
  new = []
  array.map do |elem|
    if elem == x 
      elem = y
    end
    new << elem 
  end
  print new
end
union([0,1,2,3,4,5,6,7,8,9], 1, 2)
quickfind([0,2,2,3,4,5,6,7,8,9], 1, 2)
