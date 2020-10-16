## Comments:
## First function makeCacheMatrix 

## Comments describing this function

# Solve() can be used for computing the inverse of a square matrix. 

## At first, we set the the matrix
## Secondly, get the matrix
## Thirdly, set the inverse of the matrix
## Lastly, get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Second function cacheSolve

# If the inverse has already been calculated the
# `cacheSolve` will retrieve the inverse from the cache.
# Otherwise, it will inverse the matrix
# and sets the inversed matrix in the cache via the `setsolve` function.

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
