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

