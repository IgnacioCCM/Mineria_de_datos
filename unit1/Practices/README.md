# Practices

---
### Practice 1
 Test the Law Of Large Numbers for N random normally distribute
 numbers with mean = 0, stdev=1:   
 Create an R script that will count how many of these numbers fall between -1 and 1 and divide
 by the total quantity of N
 You know that E(X) = 68.2%
 Check that Mean(Xn)->E(X) as you rerun your script while increasing N

Hint:
1. Initialize sample size..
2. Initialize counter..
3. loop for(i in rnorm(size))..
4. Check if the iterated variable falls..
5. Increase counter if the condition is true..
6. return a result <- counter / N..

--------------------------------------------------------------

#### 1.  Initialize sample size
    
    x<-rnorm(10)
    y <- dnorm(x,mean = 0, sd = 1)
    plot(x,y)
    
#### 2. Initialize counter
    
    count <- 0
    res <- 0
    
#### 3.  loop for(i in rnorm(size))
    
    for(i in rnorm(10))
    {
    count <- count+1
    print(count)
    
#### 4. Check if the iterated variable falls
    
    if(i<=1 && i>=-1){
        print(i)
        print("^ este esta entre -1 y 1")
    
#### 5. Increase counter if the condition is true
        
    res <- res +1
  }
  else
  {
    print(i)
    print("No es el rango indicado")
  }
}
        
#### 6. return a result <- counter / N
        
        Res <- res/count
        print(Res)

---
#### Practica 2

Practice find 20 more functions in R and make an example of it.

#### 1- Una funcion de suma

suma<-function(x,y){
    x+y
   }

#### Example:

suma(3,4)


 #### 2- Una funcion de resta

 resta<-function(x,y){
    x-y
   }

## Example:

resta(20,7)


#### 3- 

x <- c (1,2,3,4,5)
t <- c ("uno", "two","three","four","five")
x;t


#### 4- 

potencia<-function(x,y){
     result<-x^y
     paste(x,"elevado a la potencia de", y, "es", result)
   }

#### Example:

potencia(3,5)
[1] “3 elevado a la potencia de 5 es 243”


#### 5- Round a number with the indicated decimals, if decimals are not indicated, it is rounded without decimals. When the decimal that follows the last one to be displayed is 5 or greater than five then the last decimal is approximated.

round (6.78) 
[1] 7


#### 6- Remove the decimals of a number.
#### Example:

x <- 37.06
trunc (x)

#### 7- Shows the maximum number in a vector
#### Example : 

NUMBER <- 1:10
max (NUMBER)

#### 8- Command to rename the columns of a vector.
#### Example:

rownames (x) = c ("josue","Ignacio","Hurtado","Pepe")

#### 9- This function allows you to concatenate (join) objects.

x <- c (1,2,3)
t <- c ("one", "two","three")
x; t

#### 10- Allows you to assign names to the elements of a variable.
#### Example:

n <- c(5,10,15)
names (n) <- c ("1RO","2DO","3RO")
n

#### 11- Return values ​​from a function

##Example:
Fun <- function(x,y) {
  return(x+y)
}

Fun(c(1,2,3),c(1,2,3))
[1] 2 4 6

#### 12- To edit the function
#### Example:

edit(Fun)

#### 13- ls returns the names of the function's local variables
## Example:

ls()
[1] "Fun"


#### 14- rm can be used to remove objects
#### Example:

rm(fun)
ls()
character(0)

#### 15- Returns the first smallest integer of x

floor()

#### Example:

floor(5.87)
[1] 5

#### 16- This function returns a string in uppercase in this case we get as a result

toupper(cadena)

#### Example:

toupper(“hola”)
[1] "HOLA"

#### 17- To obtain the median of the vector

median()

#### Example: 

vector = c(5,6,7,8,9)
median(vector)
[1] 7

#### 18- shows the minimum value and maximum value in this case of the vector

range()

#### Example:

range(vector)
[1] 5 9

#### 19- The unique values ​​of a vector are obtained, eliminating the records that are duplicated

unique() 

#### Example: 

k = c(2,2,2,4,4,4)
unique(k)
[1] 2 4

#### 20- To calculate the arithmetic mean or average of the vector

mean()

#### Example:

mean(vector)
[1] 7  

#### Shows the first three data of a field or vector.
##### Example:

z <- 1:20
head (z)

#### Create a two-dimensional array, a and b mark a range of data and the ncol and nrow commands, columns and rows respectively.

x <- matrix (1: 9, ncol = 3, nrow = 3)
x 

---

#### Practica 3 

Scenario: You are a Data Scientist working for a consulting firm. One of your colleagues from the Auditing Department has asked you to help them assess the financial statement of organization X.

You have been supplied with two vectors of data: monthly revenue and expenses for the financial year in question. Your task is to calculate the following financial metrics:

- profit for each month.
- profit after tax for each month (the tax rate is 30%).
- profit margin for each month - equal to profit after tax divided by revenue.
- good months - where the profit after tax was greater than the mean for the year.
- bad months - where the profit after tax was less then the mean for years.
- the best month - where the profit after tax was max for the year.
- the worst month - where the profit after tax was min for the year.

All results need to be presented as vectors.

Results for dollar values need to be calculated with $0.01 precision, but need to be presented in Units of $1,000(i.e. 1k) with no decimal point.

Results for the profit margin ratio needed to be presented in units of % with no decimal points.

Note: Your colleague has warned you that it is okay for tax for any given month to be negative (in accounting terms, negative tax translates into a deferred tax asset).


-----------------------------------------------------------------------------------------------------------




