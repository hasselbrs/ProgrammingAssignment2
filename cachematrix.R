## Put comments here that give an overall description of what your
## functions do. The first function creates a matrix object and calculates its inverse.The second function computes the inverse if it hasn't been computed or if the inverse has been computed the second function will retrieve it.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {m <- NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setInv <- function(solve) m <<- solve
getInv <- function() m
list(set = set, get = get,
     setInv = setInv,
     getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {m <- x$getInv()
if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setInv(m)
m
        ## Return a matrix that is the inverse of 'x'
}
