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




