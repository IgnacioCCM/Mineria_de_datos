## Practica 2

 Practice find 20 more functions in R and make an example of it.

-----------
#### 1- Una funcion de suma

```r
suma<-function(x,y){
    x+y
   }

suma(3,4)
```

 #### 2- Una funcion de resta

```r
 resta<-function(x,y){
    x-y
   }

resta(20,7)
```

#### 3- 

```r
x <- c (1,2,3,4,5)
t <- c ("uno", "two","three","four","five")
x;t
```

#### 4- 

```r
potencia<-function(x,y){
     result<-x^y
     paste(x,"elevado a la potencia de", y, "es", result)
   }   

potencia(3,5)
```

#### 5- Round a number with the indicated decimals, if decimals are not indicated, it is rounded without decimals. When the decimal that follows the last one to be displayed is 5 or greater than five then the last decimal is approximated.

```r
round (6.78) 
```

#### 6- Remove the decimals of a number.

```r
x <- 37.06
trunc (x)
```

#### 7- Shows the maximum number in a vector

```r
NUMBER <- 1:10
max (NUMBER)
```

#### 8- Command to rename the columns of a vector.

```r
rownames (x) = c ("josue","Ignacio","Hurtado","Pepe")
```

#### 9- This function allows you to concatenate (join) objects.

```r
x <- c (1,2,3)
t <- c ("one", "two","three")
x; t
```

#### 10- Allows you to assign names to the elements of a variable.

```r
n <- c(5,10,15)
names (n) <- c ("1RO","2DO","3RO")
n
```

#### 11- Return values ​​from a function

```r
##Example:
Fun <- function(x,y) {
  return(x+y)
}

Fun(c(1,2,3),c(1,2,3))
```

#### 12- To edit the function

```r
edit(Fun)
```

#### 13- ls returns the names of the function's local variables

```r
ls()
```

#### 14- rm can be used to remove objects

```r
rm(fun)
ls()
character(0)
```

#### 15- Returns the first smallest integer of x

```r
floor()

floor(5.87)
```

#### 16- This function returns a string in uppercase in this case we get as a result

```r
toupper(cadena)

#### Example:

toupper(“hola”)
```

#### 17- To obtain the median of the vector

```r
median()

vector = c(5,6,7,8,9)
median(vector)
```

#### 18- shows the minimum value and maximum value in this case of the vector

```r
range()
range(vector)
```

#### 19- The unique values ​​of a vector are obtained, eliminating the records that are duplicated

```r
unique() 

#### Example: 

k = c(2,2,2,4,4,4)
unique(k)
```

#### 20- To calculate the arithmetic mean or average of the vector

```r
mean()
mean(vector)

#### Shows the first three data of a field or vector.

z <- 1:20
head (z)

*Create a two-dimensional array, a and b mark a range of data and the ncol and nrow commands, columns and rows respectively.*

x <- matrix (1: 9, ncol = 3, nrow = 3)
x 
```
-----------



