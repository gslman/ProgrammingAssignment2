## Return  matrix that is the inverse of 'x'
    m <- x$getInverse()

    ## Just return  inverse if its already set
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

    ## Get the matrix from our object
    data <- x$get()

    ## Calculate inverse through matrix multiplication
    
    m <- solve(data) %*% data

    ## Set the inverse to the object
    
    x$setInverse(m)

    ## Return matrix
    m