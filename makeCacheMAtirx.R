# makeCacheMAtirx builds a set of functions and returns the functions 
# within a list in the global environment. This function will use 
# "mutator and accessor methods" in order to store objects
# in memory and use them if the same object is needed, this method save 
# time-consuming computations.

# m is an numeric object that will contain the matrix.

# s is an numeric object that will contain the inverted matrix of m.

# set() assigns the value of y and NULL to m amd m respectively 
# in the parent environmen makeCacheMatirx.

# get() defines the getter for the matrix m.

# setinv() defines the setter for the inverse s.

# getinv() defines the getter for the inverse s. 

makeCacheMatrix <- function(m = matrix()){
      s <- NULL
      set <- function(y){
            m <<- y
            s <<- NULL
      }
      get <- function() m
      setinv <- function(solve) s <<- solve
      getinv <- function() s
      list(set = set, get = get, setinv = setinv, getinv = getinv)
}