## Functions here are assignment 2 in week 3 for Coursera Data SCience

## The function here is the function which could cache the matrix object's inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL                             
        set <- function(y) {                     
        x <<- y                             
        inv <<- NULL                        
        }
        get <- function() x                     
        setinverse <- function(inverse) inv <<- inverse  
        getinverse <- function() inv                    
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)   
}


## The function here computes the inverse of the matrix that is returned by previous function.

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv                                                                   
}
