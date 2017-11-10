#Nombre: Diego Yupanqui Huaman 20160544C
#Respuesta1: El codigo muestra la comparacion del tiempo de ejecucion de dos funciones

#Definimos la primera funcion
funA<-function(n){
  suma=0
  for (i in 1:n){
    for(s in 1:n){
      suma=suma+(s^2)/(10+4*i^3)
    }
  }
  print(suma)
}
system.time(funA(1000)) #Medimos su tiempo de ejecucion

#Definimos una funcion multiplicacion
mult<-function(A,B){
  return(A*B)
}
#Definimos la funcion funC
funC<-function(n){
  Vector<-seq(from=1, to=n)
  Vector1<-Vector*Vector
  Vector2<-10+(4*Vector*Vector*Vector)
  Vector3<-1/Vector2
  return(sum(outer(Vector2, Vector3, mult)))
  
}
system.time(funC(1000)) #Medimos su tiempo de ejecucion
