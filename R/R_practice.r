
------------------ FUNCTION -------------------------
  
# creating own function 
myfun <- function(a){
  
  for (i in 10:a){
     b = i^2             # ^ is power operator
     print(b)
    
  }
  print('hellow jay from myfun');
}

myfun(30)        # calling function

# right assignment
10.44 -> jay

# creating sequence of number from 10 to 20
print(seq(10,20))

# Find mean of numbers from 10 to 20.
print(mean(10:20))

# find sum of numbers form 10 to 20
print(sum(10:20))

# find maximum of given numbers
print(max(10,20,56,7,19))


baby.function <- function(a=50,b=60,c=70){ # default arguments
  print(a)
  print(b)
  print(c)
  
}

# calling function by posiion of arguments
baby.function(10,20,30)

# calling function by names of arguments
baby.function(c=10,a=20,b=30)

# calling function by default of arguments 
baby.function()




------------------------- STRING ----------------------------------------
  
#a pair of single quote or double quotes in R is treated as a string.
str1 <- " hellow R language"
str2 <- "how are you"

#concate string paste() function
print(paste(str1,str2,sep =" ", callapse = NULL))

# format() function to format number and string

print(format(239.268646,digits=3 , scientific = FALSE,nsmall=10))
# digits = total no digits display
# nsmall is the minimum number of digits to the right of the decimal point.

# Counting number of characters in a string nchar() function
print(nchar(str2))    # 11

# changing case toupper() and tolower() function
print(toupper(str2))
print(tolower("HELLOW R"))

# substring()
print(substring("hellow jay",3,7)) 
# 3 is first character and 7 is last character to be extracted


------------------------------ VECTOR----------------------
# single element vactor
print(x=10.20)

# multiple element vector
x <- 10.2:20.2
print(x)

# create vector of elements starting from 5 to 10 incrmented by 0.2
vect <- seq(5,10,by=0.2)
print(vect)

# c() function convert non character values into character if one of value is character
vect1 <- c(10,20,30,'jay')
print(vect1)

# access vector elements []
print(vect1[3])
print(vect1[c(1,4)])
print(vect1[c(TRUE,FALSE,TRUE,FALSE)]) # logical access
print(vect1[c(-2,-3,-4)])             # negative indexing - elemenata thoes elements
                                      # that have index 2,3,4
print(vect1[c(1,0,0,0)])         # access by 1/0


# Two vectors of same length can be added, subtracted, multiplied or divided 

v1 <- c(10,20,30)
v2 <- c(1,2,3)
v3 <- v1+v2
v4 <- v1*v2
v5 <- v1-v2
v6 <- v1/v2
print(v5)


# sorting elements of vector
num = c(20,40,10,50,90,30)
print(sort(num))                      # by default increasing order
print(sort(num, decreasing = TRUE))   # by decreasing order
print(sort(c("ram","shyam","jay","ajay","nikhil","sukhad"))) # string sortiong



------------------------------- LIST -----------------------------------
  
# list() contains elements of different types matrix,vector,list,number,charater etc.
list1 <- list(10,20,"jay",c(99,88,77),TRUE,matrix(c(1,2,3,4,5,6),nrow=2))
print(list1)

list2 <- list(c("jay","nikhil","sukhad"),c(50.45,78.90,90.30))
names(list2) <- c("student_name","marks")  # giving names to list elements
print(list2)

# accessing list elements
print(list2[2])
print(list2[c(1,2)])
print(list2$student_name)    # access by name of element

# manipulate list element
# element can be added and deleted at end of list , update any element
list2[3] <- 10
print(list2)
list2[3] <- NULL      # removing last element

# merge many list to form new list
merged.list <- c(list1,list2)
print(merged.list)

# convert list to vector
vector.demo <- unlist(list1)
print(vector.demo)


--------------------------------------- MATRIX ------------------------------
# matrix(data,nrow,ncol,byrow,dimnames)  
# elements are arranged in a two-dimensional rectangular layout
# contain elements of the same atomic types.

m1 <- matrix(c(1:10), nrow = 5)
print(m1)

m1 <- matrix(c(1:10), nrow = 5,byrow=TRUE)
print(m1)


colnames = c("col1","col2")
rownames = c("row1","row2")
m1 <- matrix(c(1:4), nrow =2, byrow=TRUE, dimnames=list(rownames,colnames))
print(m1)

# access element of matrix
print(m1[2,2]) # 2 st row 2 col
print(m1[1,]) # access only 1 st row
print(m1[,2]) # access only 2 nd column

# matrix addition / substraction
m1 <- matrix(c(1:4), nrow =2, byrow=TRUE, dimnames=list(rownames,colnames))
m2 <- matrix(c(10,20,30,40), nrow =2, byrow=TRUE, dimnames=list(rownames,colnames))
m3 <- m1 + m2
print(m3)
print(m2-m1)
print(class(m3))         # print class of m3


# matrix multiplication/ division
print(m1*m2)
print(m1/m2)


-------------------------------- ARRAYS ---------------------------
# r data object store element more than two dimension
vector1 <- c(1:18) 
colnames = c("col1","col2","col3")
rownames = c("row1","row2","row3")
matrixnames = c("matrix1","matrix2")
result <- array(vector1,dim=c(3,3,2), dimnames = list(colnames,rownames,matrixnames) )
# create 3 by 3 dimension two matrix
print(result)


# 2 nd row 3rd col of 2nd matrix
print(result[2,3,2])
# 2 nd row of 1st matrx
print(result[2,,1])
# 3 rd col of 2nd matrix
print(result[,3,2])

# creating matrix form these array
matrix1 <- result[,,1]
matrix2 <- result[,,2]

print(matrix1)
print(matrix2)
print(class(matrix1))          # returns matrix as a class


# sum of 1st row over all matrices
result2 <- apply(result,c(1),sum)
print(result2)

# sum of matrix1 and matrix2 seperately
result2 <- apply(result,c(3),sum)
print(result2)

# 
result2 <- apply(result,c(2),sum)
print(result2)

--------------------------------------- FACTOR -----------------------
# categorise data element
# can store both string and integer
# Factors are created using the factor() function by taking a vector as input.
  
data <- c("male","femail","male","femail","male","femail")
fact <- factor(data)
print(fact)
print(is.factor(fact))

# creating data frame
df <- data.frame( roll_no=c(1,2,3),
                  marks =c(60.67,90.40,56.89),
                  gender = c('male',"female","male")
                 )

print(df$gender)             # access gender column from data frame
print(is.factor(df$gender))  # check gender column is factor or not

# change order of levels
gender <- factor(c('male',"female","male"), levels = c("male","female"))
print(gender)
nlevels(gender)             # returns no of levels


# gl(n,k,labels) generate factor levels
# n no of levels
# k no of replication
gender <- gl(2,3, labels=c('male',"female"))
print(gender)


----------------------- DATAFRAME -----------------------------------------
  
# create data frame
emp.data <- data.frame(
    emp_id = c (1:5),
    emp_name = c("jay","ram","shyam","nikhil","sukhad"),
    salary = c(623.3,515.2,611.0,729.0,843.25),
    start_date = as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
    stringsAsFactors=FALSE
    )

print(emp.data)
print(str(emp.data))                # getting structore of data
print(summary(emp.data))            # getting summary(statastics) of data

print(emp.data$emp_name)            # extract specific column

# Extract first two rows and all columns
result <- emp.data[1:2,]
print(result)
print(class(result))

# extract 2nd and 4th row with 3rd and 4th column
result <- emp.data[c(2,4),c(3,4)]
print(result)


# adding column to data frame
emp.data$city = c("mumbai","pune","delhi","chennai","kolkata")
print(emp.data)

# adding row to data frame
new.data <- data.frame(
  emp_id = c (6),
  emp_name = c("raj"),
  salary = c(900),
  start_date = as.Date(c("2015-03-27")),
  city = c("patana"),
  stringsAsFactors=FALSE
)

emp.finaldata <- rbind(emp.data,new.data)
print(emp.finaldata)


--------------------------------- PACKAGES --------------------------------------

# R packages are a collection of R functions, complied code.
#  stored under a directory called "library". 

# Get library locations containing R packages
.libPaths()

# Get the list of all the packages installed
library()

# Get all packages currently loaded in the R environment
search()

# installing paxkage
install.packages("package_name")

# loading package. 
# Before a package can be used in the code,it must be loaded to the current R environment. 
library("package_name")


----------------------------------- R-DATA-RESHAPING ----------------------------

  
  
  
  
  
  
  
  
  
  






















