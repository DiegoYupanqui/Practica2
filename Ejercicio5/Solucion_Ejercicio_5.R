#Nombre: Diego Yupanqui Huaman 20160544C
#Respuesta5: El codigo muestra una matriz creada pseudoaleatoriamente y en ella se desarrolla lo especificado en cada item

set.seed(75)
aMat<-matrix(sample(10, size=60, replace = T), nr=6)
help(apply)

#ITEM_A:
may_4<-function(X){
  M<-rep(0,length(X))
  for(i in 1:length(X)){
    if(X[i]>4) M[i]<-1
  }
  return(sum(M))
}

NUMERO_DE_ENTRADAS_MAYORES_4_EN_CADA_FILA<-apply(aMat, 1, may_4)
NUMERO_DE_ENTRADAS_MAYORES_4_EN_CADA_FILA

#ITEM_B:
dect_7<-function(X){
  M<-rep(0,length(X))
  for(i in 1:length(X)){
    if(X[i]==7) M[i]<-1
  }
  if(sum(M)==2) return(1)
  else return(0)
}

VECTOR_DE_RESULTADOS<-apply(aMat, 1, dect_7)
#Las filas con exactamente dos ocurrencias del numero 7 seran las filas:
for(i in 1:length(VECTOR_DE_RESULTADOS)){
  if(VECTOR_DE_RESULTADOS[i]==1) print(i)
}

#ITEM_C:
dect_75<-function(X){
  MATRIZ_RESULTADO<-matrix(0,ncol = 2, nrow = 10)
  VECTOR_DE_SUMAS<-apply(aMat, 2, sum)
  for(i in 1:10){
    for(j in 1:10){
      if(VECTOR_DE_SUMAS[i]==VECTOR_DE_SUMAS[j])
    }
  }
}
