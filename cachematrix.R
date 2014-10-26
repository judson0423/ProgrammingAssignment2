## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        I <- NULL
        set <- function(y){
                x <<- y
                I <<- NULL
        }
        get <- function() x
        setSolve <- function(solve) I <<- solve
        getSolve <- function() I
        list(set=set, get=get, setSolve=setSolve, getSolve=getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        I <- x$getSolve()
        if(!is.null(I)){
                message("getting cached inverse matrix")
                return(I)
        }
        dataMat <- x$get()
        I <- solve(dataMat, ...)
        x$setSolve(I)
        I
}
