My goal is to create a pair of function that can cache the inverse of a matrix, as matrix is usually very time consuming

makecachematrix is a matrix object,
that can cache its inverse

makecachematrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) inv <<- inverse
  findInverse <- function() l 
  list(set = set, find = find, 
       setInverse = setInverse, 
       findInverse = findInverse)
}

The funcion below is created to 
compute the inverse 
of the matrix object created before. 
After the inverse is created it can then 
retrieved by typing cachesolve

cachesolve <- function(x, ..){
  inv <- x$findInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  l <- solve(mat,...)
  x$setInverse(l)
  l
}
figurecache(1)
