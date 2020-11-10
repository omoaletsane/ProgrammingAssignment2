### A pair of functions that cache the inverse of a matrix

### Create Special Matrix

makeCacheMatrix <- function(x = matrix()) {
        j <- NULL
        set <- function(y){
        x <<- y	### Assignment Operator in the Parent Environment 
        j <<- NULL
}
        get <- function()x
        setInverse <- function(inverse) j <<- inverse
        getInverse <- function() j 
        list(set = set, get = get, 
        setInverse = setInverse, 
        getInverse = getInverse)
}

### Cache the Matrix

        cacheSolve <- function(x, ...) {
                 ### Return a matrix that is the inverse of 'x'
               j <- x$getInverse()
                if(!is.null(j)){
                message("getting cached data")
                return(j)   
}
                mat <- x$get()
                j <- solve(mat,...)
                x$setInverse(j)
                j
}
