int n=3;
int f=0;
int j=0;
if (n==1){
  println("El primer término es:");
}
else{
  println("los primeros " +n+ " terminos de la serie factorial son:");
}
for(f=0;f<n;f++){
  if(j==0){
    println(1);
    j++;
  }
  else{
    j=j*(f);
    println(j);
  }
}
if (n!=1){
  println("y el " +n+ "º termino es:");
  println(j);
}