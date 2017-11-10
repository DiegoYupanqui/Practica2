#Nombre: Diego Yupanqui Huaman 20160544C
#Respuesta2: El codigo muestra un programa que detecta la primera fila de valores positivos que no contiene NA

#ITEM_A:

positivo<-function(n){ #Creamos una funcion para detectar los positivos y valores diferentes a NA
  a<-(n>0)
  b<-is.na(n)
  if(a==1 && b==0) return(1)
  else return(0)
}
det_fila<-function(X){  #Creamos otra funcion para detectar la primera fila con valores positivos
  vec_resultado<-apply(X, 1, positivo)
  return(min(which(vec_resultado==1)))
}
#Damos como ejemplo la matriz M:
M<-matrix(-5:10, nrow = 4, byrow = T)

det_fila(M)

#ITEM_B:

#Decimos que una funcion es vectorizada cuando su argumento de entrada puede ser un vector, y la funcion se aplica 
#a cada elemento del vector.
#Las funciones aritmeticas son ejemplos de funciones vectorizadas:
a<-(1:10)
b<-(10:19)
c<-a*b #La funcion * se aplica elemento a elemento entre los vectores a y b
#La funcion positivo creada en el ITEM_A tambien es vectorizada:
positivo(a)
positivo(b)

#Por otro lado, decimos que una funcion obedece la regla de reciclaje cuando se re-utilizan elementos de los argumentos para
#completar la funcion, siempre y cuando la longitud del argumento mayor sea un multiplo del la longitud del argumento menor.
a<-(1:10)
b<-(1:5)
c<-a+b 
c<-a-b

b<-(1:7)#Incluso si la longitud mayor no es multiplo de la menor, se produce el reciclaje pero con un mensaje de alerta
c<-a+b
c
