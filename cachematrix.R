## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" 
## object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- null 
  inverse <- function(x) {
    inv <<- solve(x)
  }
  getinv <- function () inv
  get <- function () x
}


## This function computes the inverse of the special "matrix" returned 
##by makeCacheMatrix above. If the inverse has already been calculated 
##(and the matrix has not changed), 
##then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  y <- x$get()
  if (!is.null(inv) && x == y) {
    message("getting cached data")
    return(inv)
  }
  matrix1 <- x$get()
  inv2 <- solve(matrix1)
  inv2
}

