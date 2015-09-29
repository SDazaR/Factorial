size(1000,1000);
//n-ésimo termino a calcular
int n=7;
background(0);
//variables para el for
int f=0;
int j=0;
int p=0;
int q=n;
int e=n;
float v=0;
float u=0;
//variables para la configuración geométrica
float r0=sqrt((width*width/4)+(height*height/4));
float fi=atan(height/width);
float ang=0;
float the=0;
float r= 0;
float b=0;
float c=0;
float x=0;
float y=0;

if (n==1){
  println("El primer término es:");
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
      fill(sin(q)*255,cos(q)*255,tan(q)*255);
      strokeWeight(3);
      noStroke();
      ellipse(width/2, height/2,v,u);
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
      ang=map(f,0,n-1,0,2*PI*(n-1)/n);
      the=atan((1-cos(ang))/(1+sin(ang)));
      b=(-2*r0*cos(the-fi));
      c=((r0*r0)-(sq(width/2)));
      if(the%(PI/2)!=0){
        if(ang>(3*PI/2)&&ang<(2*PI)){
        r=((-b-sqrt(b*b-4*c))/2);
        }
        else{
        r=((-b+sqrt(b*b-4*c))/2);
      }}
      else{
        r=width/2;
      }
      x=(r*cos(the));
      y=(r*sin(the));
      //líneas con color según el n-ésimo término de la serie
      stroke(sin(j)*255,cos(j)*255,tan(j)*255);
      strokeWeight(3);
      line(width/2,height/2,x,y);
  }

//n-ésimo término
if (n!=1){
  println("y el " +n+ "º termino es:");
  println(j);
}