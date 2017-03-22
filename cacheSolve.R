# cacheSolve is a complement of makeCacheMatrix, its primary porposue 
# is to computes the inverse m returned by makeCacheMatrix. 
# If the inverse has already been calculated then 
# the cachesolve retrieve the inverse from the cache and print 
# a message "getting cache data" before return the inverse value of m

# m is an numeric object that will contain the matrix.

# s is an numeric object that will contain the inverted matrix of m.

cacheSolve <- function(m, ...){
      s <- m$getinv()
      if(!is.null(s)){
            message("getting cache data")
            return(s)
      }
      data <- m$get()
      s <- solve(data, ...)
      m$setinv(s)
      s
}
