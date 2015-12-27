## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) { m<<- solve }
  getmatrix<-function() m
  list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  t_matrix<-x$getmatrix()
  if(!is.null(t_matrix)) {
    message("getting cached data")
    return(t_matrix)
  }
  #if not computed - compute
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}

