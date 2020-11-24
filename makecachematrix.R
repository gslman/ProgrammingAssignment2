# Creates a special matrix object that can cache its inverse
makeCacheMatrix <- function( m = matrix() ) {

	
    s <- NULL

    ## Method to set  matrix
    set <- function( matrix ) {
            m <<- matrix
            s <<- NULL
    }

    
    get <- function() {
    	## Return  matrix
    	m
    }

    ## Method set the inverse of the matrix
    setInverse <- function(inverse) {
        s <<- inverse
    }

    ## Method get  inverse of the matrix
    getInverse <- function() {
        ## Return the inverse property
        s
    }

    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}