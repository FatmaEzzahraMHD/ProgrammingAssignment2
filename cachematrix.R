## Put comments here that give an overall description of what your
## functions do
# R programming, week 3, programming assignment
# in this assignment we are supposed to make function : caching the inverse of a function

## Write a short comment describing this function
# function 1 make matrix :

makeCacheMatrix <- function(x = matrix()) {
         m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() {x}
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
# function 2 : calculate and cache the inverse of a matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
          m <- x$getinvers()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...) #standard R function for matrix inverse is solve()
  x$setinverse(m)
  m
}
