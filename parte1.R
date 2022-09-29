# Asignamos valores a variables usando '<-'.
# Si tecleas el nombre de alguna de ellas en
# la consola, imprime el número que le
# asignaste. El '#' al inicio de cada linea
# se usa para dejar
# comentarios.

victoriaPuebla <- 3.2 

empate <- 3.55

victoriaAme <- 2.15  


# Usamos '/' para dividir, '+' sumar, '-' restar, '*' multiplicar.
# Nota que usamos el valor guardado en las variables anteriores para
# definir nuevas variables.

probImpPuebla <- 100 / victoriaPuebla 

probImpEmpate <- 100 / empate

probImpAme <- 100 / victoriaAme


# Sumando las probabilidades deberíamos obtener un
# número menor o igual a cien.

probImpTotal <- probImpPuebla + probImpEmpate + probImpAme

# Imprimimos la variable para conocer el resultado.

probImpTotal

# El excedente de 100 es la ganancia de la casa de apuestas.
# Para calcularlo restamos la probabilidad total de un evento seguro (100)

spread <- probImpTotal - 100

# En el post mencionamos que al revisar los datos, nos dimos cuenta
# que el américa ahora tiene probabilidad del 60% de ganar.
# Veamos que implíca esto:

# datos
#Usamos 'c()' para concatenar datos. Pongamos valores para Ganado (G), Perdido (P) y Empate (E).
partidosAme <- c('G', 'E', 'E', 'G', 'G', 'G', 'G' ,'P', 'G', 'P')

# Otra forma de contar es utilizando 'length()' que nos dira la longitud 
# de un vector (así se le llama a los datos que juntamos con 'c()') y 'which()' 
# que nos dira la posición que tiene un valor específico dentro de un vector empezando desde la posición 1.
# Número de partidos en nuestro vector
partidosJugadosAme <- length(partidosAme)
partidosJugadosAme
# Número de partidos ganados
partidosGanadosAme <- length(which(partidosAme=='G'))
partidosGanadosAme
# Probabilidad real multiplicada por 100
probRealAme <- (partidosGanadosAme / partidosJugadosAme) * 100
probRealAme

# Le preguntamos a R ¿La probabilidad real es mayor a la implícita?
probRealAme > probImpAme