## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL  
  get <- function() x
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  getInverse <- function () i
  setInverse <- function (inverse) {
    i <<- inverse
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return (i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setInverse(i)
  i
}
