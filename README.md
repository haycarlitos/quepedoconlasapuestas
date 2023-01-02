¿Qué pedo con las apuestas?
================
@haycarlitos
2022-09-29
Código del post: https://medium.com/@diosplan/que-pedo-con-las-apuestas-parte-1-4dd56411946b
## Sin miedo al código

Siempre recomiendo R para aprender a programar. Aunque la mayoría de
usuarios lo usa para estadística, creo que puedes probar rápido
cualquier tipo de experimento. Además, una vez que entiendes lo básico,
es más fácil entender otros lenguajes de programación. Visita
<http://rmarkdown.rstudio.com> para aprender a hacer documentos con
código. Para que se viera bonito lo hice con markdown. Te incluí el archivo
.R por si solo quieres usar el script.

Si nunca has programado o no tienes instalado R, en 20 minutos estarás
list@ para seguir hackeando siguiendo éste tutorial.
<https://www.dataquest.io/blog/tutorial-getting-started-with-r-and-rstudio/>

## Momios

Asignamos valores a variables usando ‘\<-’. Si tecleas el nombre de
alguna de ellas en la consola, imprime el número que le asignaste. El
‘\#’ al inicio de cada linea se usa para dejar comentarios.

``` r
# Así se ve un comentario

victoriaPuebla <- 3.2 

empate <- 3.55

victoriaAme <- 2.15 
```

## Probabilidad implícita

Usamos ‘/’ para dividir, ‘+’ sumar, ‘-’ restar, ’\*’ multiplicar. 

Recuerda que para calcular la probabilidad implícita de un momio en
sistema europeo usamos **probabilidad implícita = 100/momio**.

¿Ya notaste que en el denominador usamos las variables que asignamos
arriba? Lo chido de esto es que cada variable que asignas la puedes ir
reutilizando a lo largo del código. Si la casa de apuestas cambia el
momio de algún equipo, solo vas a la linea donde declaraste la variable
y cambias el valor. En lenguaje godín, sería equivalente a fijar el
valor de una celda en las fórmulas de Excel.

``` r
# Probabilidad impĺicita Puebla
probImpPuebla <- 100 / victoriaPuebla 
probImpPuebla
```

    ## [1] 31.25

``` r
# Probabilidad impĺicita Empate
probImpEmpate <- 100 / empate
probImpEmpate
```

    ## [1] 28.16901

``` r
# Probabilidad impĺicita América
probImpAme <- 100 / victoriaAme
probImpAme
```

    ## [1] 46.51163

Sumando las probabilidades deberíamos obtener un número menor o igual a
cien.

``` r
probImpTotal <- probImpPuebla + probImpEmpate + probImpAme
probImpTotal
```

    ## [1] 105.9306

## Spread

El excedente de 100 es la ganancia de la casa de apuestas. Para
calcularlo restamos la probabilidad total de un evento seguro (100).

``` r
spread <- probImpTotal - 100
spread
```

    ## [1] 5.930642

## Datos

En el post mencionamos que al revisar los datos, nos dimos cuenta que el
América ahora tiene probabilidad del 60% de ganar. Por supuesto que no
revise nada. No aún. En la parte 2 usaremos datos reales.

Vamos a inventar los resultados de los últimos 10 partidos que jugó el
América. De hecho los inventaré yo. Te toca investigar cómo hacerlo de
forma aleatoria. Que flojera escribir partido por partido. Me mandas
pull request
<https://www.freecodecamp.org/espanol/news/como-hacer-tu-primer-pull-request-en-github/>
cuando lo encuentres. Estaría muy chingón que contribuyeras al código.

Usamos ‘c()’ para concatenar datos. Pongamos valores para Ganado (G),
Perdido (P) y Empate (E).

``` r
partidosAme <- c('G', 'E', 'E', 'G', 'G', 'G', 'G' ,'P', 'G', 'P')
partidosAme
```

    ##  [1] "G" "E" "E" "G" "G" "G" "G" "P" "G" "P"

Te la puse fácil con 10 partidos. De un vistazo puedes contar que ha
ganado 6 partidos de los 10 que ha jugado. Eso nos hace pensar que la
probabilidad de victoria para el América es del 60%. ¿Muy fácil, no? ¿Y
si tuvieras que contar los partidos que ha jugado a lo largo de una
decada? Tranqui, sale rápido si usamos ‘table()’. Crea tablas de
contingencia. Hágamoslo para que recuerdes que diablos eran esas tablas.

``` r
table(partidosAme)
```

    ## partidosAme
    ## E G P 
    ## 2 6 2

Otra forma de contar es utilizando ‘length()’ que nos dira la longitud
de un vector (así se le llama a los datos que juntamos con ‘c()’) y
‘which()’ que nos dira la posición que tiene un valor específico dentro
de un vector empezando desde la posición 1.

``` r
# Número de partidos en nuestro vector
partidosJugadosAme <- length(partidosAme)
partidosJugadosAme
```

    ## [1] 10

``` r
# Número de partidos ganados
partidosGanadosAme <- length(which(partidosAme=='G'))
partidosGanadosAme
```

    ## [1] 6

``` r
# Probabilidad real multiplicada por 100
probRealAme <- (partidosGanadosAme / partidosJugadosAme) * 100
probRealAme
```

    ## [1] 60

Ahora que ya tenemos un cálculo de la probabilidad basado en datos,
comparemos con la probabilidad ímplicita para conocer si es apuesta de
valor. Ya sé que eres muy crack y lo hiciste mentalmente. Lo bonito del
código es que puedes reutilizarlo para analizar cualquier liga.

Usaremos operadores relacionales
<https://bookdown.org/jboscomendoza/r-principiantes4/operadores-relacionales.html>
para comparar.

Recuerda que **la única forma de ganar dinero a largo plazo en las
apuestas es encontrando apuestas de valor. Dónde la probabilidad real es
mayor a la probabilidad implícita.**

``` r
# Le preguntamos a R ¿La probabilidad real es mayor a la implícita?
probRealAme > probImpAme
```

    ## [1] TRUE

## FIN

Espera, ¿Así de fácil? La gente pocas veces se toma el tiempo de pensar
cómo funcionan las cosas. Si ya estás jugando a atinarle a lo incierto,
pon los números de tu lado. Aunque los datos favorezcan a un equipo,
cualquier cosa puede pasar que cambie el resultado final. No obstante,
las matemáticas te favorecen por mucho si encuentras éste tipo de
apuestas. La verdadera mágia detrás de esto es que sin meternos en
muchas mates, encontraste **valor esperado positivo**
<https://es.wikipedia.org/wiki/Esperanza_(matem%C3%A1tica)>. Calcularlo
se sale del alcance de este post pero me encantaría ver un pull request
con tu código.

Un último tip. Si tienes duda de cómo se usa una función, escribe ‘?’ y
te abrirá la documentación.
