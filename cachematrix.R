### These functions caches the inverse of a matrix.

## The following function creates a special matrix which caches the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {

  inv<- NULL

  set<- function(y) {

    x<<- y

    inv<<- NULL


  }

  get<- function() x

  set_Inverse<- function(inverse) inv<<- inverse

  get_Inverse<- function() inv

  list(set = set,

       get = get,


       set_Inverse = set_Inverse,

       get_Inverse = get_Inverse)



}


## The following function computes the inverse of the above created special matrix makeCacheMatrix

cacheSolve <- function(x, ...) {



  ## Returns a matrix which is the inverse of the matrix 'x'

  inv<- x$get_Inverse()

  if (!is.null (inv)) {

    message("get cached data")
    
    return(inv)

  }


  mat<- x$get()


  inv<- solve.default(mat, ...)


  x$set_Inverse(inv)



  ## Return a matrix that is the inverse of 'x'
}
