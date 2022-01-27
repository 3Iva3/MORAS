class Vint
{	
	field int capacity;
	field Array V;
	
	constructor Vint new(int n)
	{
	  let capacity = 1;
          if(~(n < 0)){
            while(n > 0){
            let capacity = capacity * 2;
            let n = n - 1;
            }
	  }
	  let V = Array.new(capacity);
	  return this;
	}
	
	method int len(){
	  return capacity;
	}
	
	method void set(int k, int v)
	{
	  let V[k] = v;
	  return;
	}
	
	method int get(int k)
	{
	  return V[k];
	}
	
	method void resize(int m)
	{
	  var int i, temp;
	  var Array Pom;
	  let temp = capacity; 
	  let capacity = 1;
	   
	  if (~(m<0)){
	    while (m > 0)
		{
		  let capacity = capacity * 2;
		  let m = m - 1;
		}
	    let Pom = Array.new(capacity);
	    let i = 0;
	    while(i < temp)
	    {
	      let Pom[i] = V[i];
		  let i = i + 1;
	    }
	    let V = Pom;  
	  }
	  return;
	}
	
	function bool is_eq(Vint A, Vint B)
	{
	  var int i ; 
	  if(~(A.len()= B.len()))
	  {
	    return false;
	  }
	   
	  while(i < A.len())
	  {
	    if (~(A[i] = B[i]))
		{
		  return false;
		}
	   }
	   return true;  
	}	
}
