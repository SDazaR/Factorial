size(500,500);
//n-ésimo termino a calcular
int n=13;
background(0,0,255);
//variables para el for
int f=0;
int j=0;
int p=0;
int q=n;
int e=n;
//variables para la configuración geométrica
float v=0;
float u=0;
float ang=0;
if (n==1){
  println("El primer término es:");
}
else if(n<1){
  println("Porfavor colocar un número referente a un término de la serie");
}
else{
  println("los primeros " +n+ " terminos de la serie factorial son:");
}
//Los primeros n términos
for(f=0;f<n;f++){
    if(p==0){
    p++;
    }
    else{
    p=p*(f);
    }
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
      //configuración geométrica
      if(n==1){
        ang=0;
      }
      else{
        ang=map(f,0,n-1,0,2*PI*(n-1)/n);
      }
      //arcos con color según el n-ésimo término de la serie
      noStroke();
      fill(sin(j)*255,cos(j)*255,tan(j)*255);
      arc(width/2,height/2,width,height,ang-(PI/2),ang-(PI/2)+(2*PI/n));
  }
for(f=n-1;f>0;f--){
    if(q==e){
      q=p;
    }
    else{
      q=q/(e-1);
      e--;
    }
      v=map(2*sqrt(q/PI),2*sqrt(p/PI),0,width,0);
      u=map(2*sqrt(q/PI),2*sqrt(p/PI),0,height,0);
      noFill();
      strokeWeight(3);
      stroke(0);
      ellipse(width/2, height/2,v,u);
}
//n-ésimo término
if (n>1){
  println("y el " +n+ "º termino es:");
  println(j);
}