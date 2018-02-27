## Put comments here that give an overall description of what your


1st I have only put commands and then on 2nd phase I have explained what commands do

makeCacheMatrix <- function ( x = matrix ( ) ) {
i <- NULL
set <- function (y) {
		x <<- y
		i <<- NULL
}
get <- function() x
setinverse <- function (solve) i <<- solve(x)
getinverse <- function() i
list ( set= set, get = get, setinverse = setinverse, getinverse = getinverse )
}




cacheSolve <- function (x, ...) {
	i <- x$getinverse()
	if(!is.null(i)) {
	message ("getting cached data")
	return(i)
}
data <- x$get()
i<- solve(data, ...)
x$setinverse(i)
i
}

# Explanation:
makeCacheMatrix <- function(x = matrix()) { Creates a special function that calculates the inverse of matrix

}

i <- NULL # ensure there are no inverse matrix
set <- function (y) {
		x <<- y  # it helps to set new matrix once the inverse of previous matrix is generated
		i <<- NULL # ensures the inverse of new matrix is null
}
get <- function() x 
setinverse <- function (solve) i <<- solve(x) # storing inverse of the desired matrix in i
getinverse <- function() i # helps to retrive inverse of matrix stored in cache
list ( set= set, get = get, setinverse = setinverse, getinverse = getinverse )

}
# defining  
setinverse function as setinverse
getinverse function as get
set function as set
get function as get



cacheSolve <- function (x, ...) { # Creates a function that retrives inverse of matrix when needed
	i <- x$getinverse() # prompts to retrieve inverse of function stored in cache if the following condition is met
	if(!is.null(i)) { #if the inverse of function is already calculated proceeds with the cached inverse matrix
	message ("getting cached data")
	return(i)
}
data <- x$get() #if there is no cached inverse matrix then, it is directed towards get function where the inverse of matrix is calculated
i<- solve(data, ...) # the inverse of matrix is calcuated and stored in data
x$setinverse(i) # the inverse of matrix is stored in cache
i # prints inverse of matrix
}


#

