## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function() x
  setinv<-function(inverse){
    inv<<-inverse
  }
  getinv<-function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  #x<-as.data.frame(x)
  #message("hello")
  #inverse<-NULL
  #inverse <- x$getmean()
  
  inverse<-x$getinv()
  #message("hello")
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  data<-x$get()
  inverse<-solve(data)
  x$setinv(inverse)
  inverse
}
