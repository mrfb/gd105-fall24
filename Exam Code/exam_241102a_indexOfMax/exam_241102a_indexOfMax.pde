int[] nums = {0, 5, 10, 2};

void setup(){
  println(foo(nums));
}

int foo(int[] a){
  int b = 0;
  for(int i = 0; i < a.length; i++){
    if(a[i] > a[b]){
      b = i;
    }
  }
  return b;
}
