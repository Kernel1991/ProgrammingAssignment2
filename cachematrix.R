## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function that has four matrix and four functions inside

makeCacheMatrix <- function(x = matrix()) {
    ## assigns m to be NULL
    m <- NULL
    
    ## function that sets the matrix
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    ## function that displays gets the matrix
    get <- function () x
    
    ## function that sets Inverse
    setInverse <- function(d) {
        m <<- d
    }
    
    ## function that gets Inverse
    getInverse <- function() m
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## function that check is the matrix is in cache, if not <- then computes
## inverse and adds it to the original function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
}

