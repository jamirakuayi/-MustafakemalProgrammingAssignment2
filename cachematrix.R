

makeCacheMatrix <- function(x = matrix()) {
  inverse1 <- NULL
  set <- function(y) {
    x <<- y
    inverse1<<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inverse1<<- inverse
  getInverse <- function() inverse1
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
  
  inverse1 <- x$getInverse()
  if (is.null(inverse1)==FALSE) {
    message("Data is getting cached")
    return(inv)
  }
  mat <- x$get()
  inverse1<- solve(mat, ...)
  x$setInverse(inverse1)
  inverse1
}