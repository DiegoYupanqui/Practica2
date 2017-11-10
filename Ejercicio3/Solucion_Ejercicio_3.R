#Nombre: Diego Yupanqui Huaman 20160544C
#Respuesta3: El codigo muestra una funcion que detecta el n-esimo valor verdadero de un vector logico

nth<-function(X,n){
  suma=0
  for(i in 1:length(X)){
    suma<-suma+X[i]
    if(suma == n){
      return(i)
      break
    }
  }
  if(suma<n) return(NA)
}
x<-c(1,2,4,2,1,3)
nth(x>2,2)
nth(x>4,2)
