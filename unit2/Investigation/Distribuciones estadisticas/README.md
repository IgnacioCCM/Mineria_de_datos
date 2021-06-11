# Disribuciones estadisticas

## Distribuciones de probabilidad discretas
<p>Son las distribuciones correspondientes a variables aleatorias que toman valores discretos, como por ejemplo los valores 0 y 1, las letras del abecedario, determinados colores, o los números 0,1,2,....</p>

Ejemplos de ellas son:
* el número de caras en 100 tiradas de una moneda,
* el número de siniestros mensual en una compañía de seguros o
* el número de apariciones de las palabras viagra u oferta en un correo electrónico.

### Distribucion de Dirac
<p>La distribución de Dirac puede considerarse degenerada: toma siempre (con probabilidad 1) un valor fijo a. Una variable aleatoria de Dirac, por lo tanto, no es aleatoria. Aunque parezca contraintuitivo, la distribución de Dirac tiene su importancia y puede entenderse de dos maneras. La primera, como el elemento básico a partir del cuál se pueden construir otras distribuciones discretas.
La segunda, como una distribución límite. Por ejemplo, el número de goles que se van a marcar en un partido de fútbol es una variable aleatoria cuya incertidumbre se reduce según corren los minutos y su distribución se convierte en una de Dirac apenas finaliza el encuentro. De hecho, lo mismo sucede en todos los eventos sobre los que las casas de apuestas aceptan pujas en tiempo real.</p>

### Distribucion de Bernoulli
<p>La distribución de Bernoulli es muy simple: es la de una moneda con probabilidad P(H) = p de cara. Una variable aleatoria de Bernoulli toma valores 0 o 1 (que frecuentemente se usan para codificar otros tales como cara o cruz, éxito o fracaso, etc.). Si X ∼Bernoulli(p), entonces</p>

<p align="center">
  <img src="imagen.png" />
</p>

<p>Puede considerarse una mezcla de dos distribuciones de Dirac. A la inversa, la distribución de Dirac es un caso degenerado de la de Bernoulli que ocurre cuando 
p = 0 o p = 1.
La distribución de Bernoulli es la base de muchos modelos de clasificación. De hecho, una de las tareas más habituales de la ciencia de datos es encontrar el valor pi asociado a una determinada acción (de resultado binario) de un sujeto i.</p>

### La media de una variable aleatoria
<p>Una variable aleatoria es un objeto extraño en el sentido de que puede tomar distintos valores de una manera impredecible: piénsese en un dado. La teoría de la probabilidad, sin embargo, es capaz de identificar (y estudiar) regularidades dentro de ese azar. Por ejemplo, si varias personas realizan —esta realización puede ser efectiva (p.e., tirando una moneda o, más en general, realizando un experimento) o simulada (p.e., usando un ordenador)— una variable aleatoria numérica X muchas veces y promedian los valores resultantes, obtendrán una lista de números muy parecidos.</p>

### Distribución binomial
<p>La distribución binomial es la de una suma de variables aleatorias de Bernoulli independientes. Permite modelar problemas como el número de caras que se obtienen después de tirar una moneda 15 veces. O el número de clientes que abandonaran la empresa al cabo de un año si la correspondiente tasa de fuga es del 12%.</p>
<p>Por ser una suma de variables aleatorias de Bernoulli, podemos deducir su media: es np. Pero, además de su media, interesa saber cómo se distribuyen los valores alrededor de ese valor. Para ello podemos representar gráficamente su función de probabilidad, que tiene una típica forma de campana (es unimodal) y es ligeramente asimétrica (es simétrica sólo cuando p = 0.5):</p>

<p align="center">
  <img src="https://datanalytics.com/libro_estadistica/_main_files/figure-html/unnamed-chunk-48-1.png" />
</p>

### Centralidad y dispersión
<p>La gráfica de la sección anterior muestra cómo se distribuye la probabilidad de la distribución binomial: se trata de una especie de campana más o menos simétrica situada sobre cierto punto central característico y de una anchura determinada. Patrones similares se observan también en otras distribuciones de probabilidad habituales (aunque no siempre) y ese es el motivo fundamental para estudiar los indicadores de centralidad y dispersión: nos ayudan a describir este tipo de distribuciones. Al decir este tipo de distribuciones se pretende subrayar que esos indicadores son problemáticos a la hora de estudiar otro tipo de distribuciones que no presenten esas características.</p>
<p>La media admite entonces una interpretación como una medida de centralidad: es un valor alrededor del cual podría decirse que pivota la distribución. De hecho, para la distribución binomial es precisamente el valor central. Sin embargo, no es necesariamente un valor típico: pudiera ser, incluso, un valor imposible para la distribución. Eso ocurre precisamente con la distribución de Bernoulli: su media es p, un valor típicamente estrictamente comprendido entre 0 y 1, mientras la variable solo puede tomar los valores 0 o 1.</p>
<p>Una manera alternativa de entender la centralidad es la de interpretarla como el valor que está estrictamente en la mitad. Es decir, aquel que tiene el 50% de las observaciones por encima y el 50% de ellas por debajo, la mediana. Y si por centralidad, abusando del lenguaje, se entiende un valor típico, otra medida alternativa que se usa (menos frecuentemente) es el de la moda, el valor más frecuente. El concepto que complementa al de la centralidad a la hora de describir la forma de una variable aleatoria como las binomiales es de la dispersión: la medida en que los valores de la distribución están cerca o lejos de su punto medio (calculado por el procedimiento que sea). La varianza es un indicador tradicionalmente usado para cuantificar la dispersión.</p>

### La distribución multinomial
<p>La distribución multinomial es una extensión de la distribución binomial que se aplica a situaciones en que la variable aleatoria X puede tomar más de dos valores. Su concreción práctica más habitual tiene que ver con extracciones al azar de bolas de colores de urnas. Cuando no existe reemplazo, es decir, cuando las bolas no se devuelven a la urna, las distintas tiradas no son independientes: de extraerse una bola negra, en la siguiente extracción decrecería la probabilidad de obtener otra bola negra.</p>
<p>Sin embargo, cuando existe reemplazo, i.e., las bolas son devueltas a la urna, las distintas extracciones son independientes entre sí. Si las bolas son solo de dos colores, la distribución de probabilidad que les aplica es la binomial. La multinomial es la extensión al caso en el que hay bolas de más de dos colores. La distribución multinomial tiene muchas aplicaciones en ciencia de datos. Por ejemplo, para modelar los tipos de productos que comprará un cliente o las palabras que aparecerán en un texto en función de su asunto.</p>

### La distribución de Poisson
<p>El hecho de que Poisson nos permite hacer tres cosas. La primera y más obvia, es la de poder pasar de una a otra caracterización de la variable aleatoria según nuestra conveniencia: a veces nos interesa considerarla como binomial; otras, como de Poisson. Desde el punto de vista binomial, se habla de tasas y desde el punto de vista de Poisson se habla de intensidades. En algunos contextos se tiende a preferir una representación a la otra. Por ejemplo, en el caso de los fallecidos por accidente de tráfico, se prefiere hablar de intensidades, del número de casos. En otros, como los epidemiológicos, en términos de tasas o probabilidades. Cada perspectiva tiene sus ventajas e inconvenientes y la buena noticia es que son perfectamente equivalentes.</p>
<p>La segunda consecuencia de la relación Poisson es que nos permite caracterizar los casos en que es aplicable la distribución de Poisson. Se necesitan, por ejemplo, sucesos independientes. Así que uno podría cuestionarse hasta qué punto el número fallecidos por accidentes de circulación puede modelarse con una distribución de Poisson habida cuenta de la posibilidad de accidentes con más de un fallecido (respuesta: es algo a tener en cuenta, pero no acaba siendo una objeción relevante: la aproximación es lo suficientemente buena). El mismo argumento podría aplicarse para cuestionar si, por ejemplo, la distribución de Poisson podría aplicarse o no para modelar compras realizadas por clientes a lo largo de un determinado periodo.</p>
<p>La tercera consecuencia es que podemos intuir la forma de la distribución de Poisson: acampanada y con una cola relativamente más larga hacia la derecha. Además, en principio, una variable aleatoria de Poisson podría tomar cualquier valor entero mayor que cero: a diferencia de la distribución binomial y a pesar de la estrecha relación entre ambas, no tiene límite superior.</p>

<p align="center">
  <img src="https://datanalytics.com/libro_estadistica/_main_files/figure-html/unnamed-chunk-61-1.png" />
</p>

## Distribuciones de probabilidad continuas
Las distribuciones de probabilidad continuas son las correspondientes a variables aleatorias relacionadas con eventos como los siguientes:
* Que mañana la bolsa baje más del 1%.
* Que alguien sano tenga una concentración de urea en la sangre superior a x.
* Que alguien sin estudios gane más de 3000 euros al mes; la probabilidad correspondiente en este caso sería una probabilidad condicional (condicionada a que el sujeto no tenga estudios)
* Que alguien mida más de 1.90 y pese menos de 80 kilos; en este caso, a diferencia de los anteriores, la variable aleatoria es bidimensional: tiene en cuenta la altura y el peso.

### De histogramas a funciones de densidad

<p>Los histogramas son representaciones gráficas de datos que seccionan el rango de variación de la variable aleatoria en segmentos (bins) y calculan la proporción de las observaciones obtenidas que caen en cada uno de ellos; estas proporciones definen la altura de los rectángulos que se representan gráficamente. Para todo fenómeno aleatorio discreto puede construirse una función de densidad que le es específica. Sin embargo, sucede que muchos fenómenos aleatorios comparten función de densidad. O, más bien, las funciones de densidad asociadas a muchos fenómenos aleatorios en principio distintos, son (aproximadamente) comunes.</p>

<p align="center">
  <img src="https://datanalytics.com/libro_estadistica/_main_files/figure-html/unnamed-chunk-74-1.png" />
</p>

### La distribución uniforme
<p>La distribución uniforme es, posiblemente, la más sencilla entre las continuas: su densidad es 0 salvo en un determinado rango [a, b] donde es constante (y, como consecuencia, toma el valor 1/(b -a). Es decir, solo puede tomar valores en ese rango y, dentro de él, todos son equiprobables.</p>

<p align="center">
  <img src="https://datanalytics.com/libro_estadistica/_main_files/figure-html/unnamed-chunk-88-1.png" />
</p>

### La distribución beta
</p>La distribución beta es una generalización del uniforme y también toma valores entre 0 y 1. Valores entre 0 y 1 pueden significar muchas cosas pero muy frecuentemente, representan proporciones o probabilidades. De ahí que la distribución beta se utiliza a menudo para modelar la incertidumbre sobre una probabilidad. Con parámetros (1,1) es uniforme. Conforme aumenta el primer parámetro, tiende a concentrar probabilidad en la parte derecha, alrededor del 1. Eso indicaría que crece nuestra certeza de que el valor de la proporción desconocida es 1.</p>

<p align="center">
  <img src="https://datanalytics.com/libro_estadistica/_main_files/figure-html/unnamed-chunk-89-1.png" />
</p>

### La distribución normal
<p>Se trata de la famosa campana de Gauss, que, por defecto, está centrada en 0 y tiene desviación estándar 1. Sin embargo, admite dos parámetros, μ, la media y σ, la desviación estándar) que o la desplazan o la contraen o expanden.
La distribución normal tiene una importancia fundamental en la teoría de la probabilidad porque es un atractor de distribuciones. No es solo que la suma de variables aleatorias independientes con una distribución normal tenga también distribución normal sino que, además, la suma de variables aleatorias independientes de otras distribuciones tiende a tener también distribución normal.</p>

<p align="center">
  <img src="https://datanalytics.com/libro_estadistica/_main_files/figure-html/unnamed-chunk-91-1.png" />
</p>

### La distribución t
<p>La distribución t es similar a la normal (simétrica, unimodal, etc.) pero tiene colas más gruesas. De hecho, no es una distribución sino una familia de distribuciones parametrizadas por un parámetro, el número de grados de libertad (o df), según el cual las colas son más o menos gruesas:</p>

<p align="center">
  <img src="https://datanalytics.com/libro_estadistica/_main_files/figure-html/unnamed-chunk-95-1.png" />
</p>

<p>La distribución t con un grado de libertad, i.e., df = 1 se la conoce también como distribución de Cauchy. Tiene una peculiaridad: no tiene media. Eso se manifiesta, por ejemplo, en que un promedio de muestras de la distribución de Cauchy no converge como tienden a hacer los promedios en que aplica la ley de los grandes números sino que oscila. Eso se debe principalmente a los outliers: la cola de la distribución de Cauchy es tan gruesa que valores de un tamaño tan grande que hacen bascular todo el promedio ocurren frecuentemente.</p>
<p>Así, el uso fundamental de la distribución t es el de reemplazar a la normal cuando se observan outliers en los datos. Para valores altos de su parámetro es prácticamente indistinguible de la dócil distribución normal, mientras que en el otro extremo se convierte en la procelosa distribución de Cauchy; así, una distribución t con valores intermedios del parámetro, por tanto, podrían modelar convenientemente cierto tipo de datos.</p>

### Las distribuciones gamma y lognormal
<p>Se trata de dos distribuciones con soporte en los valores x > 0 y que tienen una forma similar:</p>

<p align="center">
  <img src="https://datanalytics.com/libro_estadistica/_main_files/figure-html/unnamed-chunk-96-1.png" />
</p>

<p>Ambas son asimétricas y tienen una cola que desciende lentamente hacia la derecha. Se usan para modelar tiempos (hasta que ocurre algún evento) o magnitudes tales como ingresos, que se extienden a través de varios órdenes de magnitud. La distribución lognormal, que es la exponencial de una distribución normal, ejerce el papel de atractor de distribuciones cuando, en lugar de sumarse, se multiplican.</p>
<p>Por eso se usa en ocasiones la distribución lognormal para modelar los resultados bursátiles. Aunque hay que tener en cuenta la discusión anterior sobre la no normalidad de los movimientos diarios del precio de los activos financieros, que arrojan una sombra de sospecha sobre el uso de la distribución lognormal en estos contextos. No obstante, e independientemente de la pertinencia del uso de la distribución lognormal en estos contextos, el ejemplo anterior ilustra cómo tal vez en otros en los que el efecto de las variables no es aditivo sino multiplicativo, la distribución lognormal puede resultar una herramienta de modelado útil.</p>
<p>La distribución gamma se usa frecuentemente en el llamado análisis de la supervivencia: el estudio estadístico del tiempo que discurre hasta que ocurre un fenómeno aleatorio: que falle una máquina, que fallezca un paciente, cierre su cuenta un cliente, etc.</p>

### Bibliografía
<p>Datanalytics. (2017). Distribuciones de probabilidad. mayo 01, 2021, de Datanalytics Sitio web: https://datanalytics.com/libro_estadistica/distribuciones-de-probabilidad.html#distribuciones-de-probabilidad-continuas</p>




















   
