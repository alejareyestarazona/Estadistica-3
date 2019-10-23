#SEMANA  1 . " Práctica 1 - Introducción al lenguaje de programación en R "
#AUTOR : Maria Alejandra Reyes Tarazona

#Crear un objeto

x = 2
y <-3
4-> z

#Ejercicio 1 Reasignacion: Reasigne 5 a la letra *z*, usando el operador *<-*, ahora, pregunte Â¿quÃ© es *z*?

z  <-  5
z
z<- 10 + 2
z
z <- 3 + rnorm(1)
z

#Ejercicio 2:  Revisemos quÃ© es rnorm(1). Empecemos buscando la funciÃ³n en help o ?rnorm

help(rnorm)
?rnorm

# Crear un vector en secuencia de 1 a 10

x<-1:10
x

#Hacer operaciones

x + 1

#Ejercicio 3: Multiplique *x* por 2 y sumele 1 y dividalo por 1.5, ese resultado elevelo al cuadrado

((( x * 2 ) + 1 ) / 1.5 ) ^ 2

###Clases de Objetos

animales<-c('perro','gato','fara')
animales
frases <- 'El gato se comiÃ³ el fara'
frases
nuemeros <- rep(x = 1:3,3)/1.5
nuemeros
enteros <- seq(from = 1,to = 10,by = 2)
enteros
complejos <- c(2i,5i, 3i)
complejos
logicos <- c(T,F,TRUE,FALSE)
logicos

#Ejercicio 4:Tome cualquier objeto anterior y preguntele la clase

class(logicos)
class(frases)

# Crear un vector con problemas de clases

prueba<-c(1, "perro", FALSE, "gato", 1.5)
prueba

#Ejercicio 5: ¿Que clase tiene el vector?

class(prueba)

# Creemos un factor con niveles

grupo_altura <- factor(c("mediano", "pequeÃ±o", "grande", "muy grande"),levels=c("pequeño", "mediano", "grande", "muy grande"))

grupo_altura

#Ejercicio 6: Hasta el momento hemnos generado varios vectores/objetos/variables, podemos listarlas usando la funciÃ³n ls() o ls.str(), la cual nos permite, no solo ver las variables, sino el tipo de cada una.

ls()
ls.str()

### Matrices, DataFrames, Listas

vector1<- seq(1:12)
vector1
matrix1<- matrix(data = 1:12,nrow = 3,ncol = 4)
matrix1

#Extraer de un vector o matriz con "[]".

# El objeto numero 6

vector1[6]

vector1

# el objeto de la fila 2, columna 3

matrix1<-matrix(data = 1:12,nrow = 3,ncol = 4)
matrix1[2,3]
matrix1

#Arreglos: array

arreglo<-array(data = 1:12,dim = c(3,4,3))
arreglo[2,4,3]
arreglo
vector1<-rep(1:4,3)
vector2<- seq(2,24,2)
array(data = c(vector1,vector2),dim = c(3,4,2))

#Ejercicio 7: Cree un una secuencia que repita los numeros de 1 a 4, 3 veces y asignela a un objeto llamado vector1. Ahora, cree una secuencia de numeros pares del 2 al 24 y asignela a un objeto llamado vector2. Genere un arreglo con ambos vectores y busque la columna 2, fila 1 de la segunda matriz y para la primera

vector1<-rep(1:4,3)
vector2<-seq(from=2,to=24,by=2)
arreglo1<-array(data = c(vector1,vector2),dim = c(3, 4, 2))
arreglo1

## Data.Frames

# Cargando un dataframe interno

data(iris)
iris
class(iris)

# Longitud del Sepalo
iris$Sepal.Length

# Longitud del Sepalo del individuo 36
iris$Sepal.Length[36]
iris[36,1]

#Ejercicio 8: Tome la primera columna  y la segunda, concatenelas con c(). ¿Que encuentra?Ahora, tome amabas columnas y use la funcion cbind(), asignelo a un objeto llamado minuevatabla.Haga lo mismo, con las filas del 1:5 y del 10:30, use primero c() y luego rbind(). ¿Que encuentra?

c(iris [, 1 : 2 ])
minuevatabla  <- cbind ( iris [, 1 : 2 ])
minuevatabla
c( iris [ 1 : 5 ,], iris [ 10 : 30 ,])
rbind ( iris [ 1 : 5 ,], iris [ 10 : 30 ,])

#Busque el archivo suministrado por el profesor, carguelo a R y revise que contiene. Extraiga las 5 primeras columnas con las 10 primeras filas, escriba esa nueva matriz como csv en su computador.

setwd("C:/Users/Alexandra/Downloads")
setwd("~/R")
setwd("C:/Users/Alexandra/Downloads/R")

datosmatriz <-Matrix_Multivariate_Mega [ 1 : 10 , 1 : 5 ]
View( datosmatriz )
write.csv ( x  =  datosmatriz , file =  ' Minimatriz.csv ' )
