#The following two functions take any square invertible 
#matrix and returns it's inverse.

#function 1: This is a parent function that stores the give matrix
#caches the result.

makeCacheMatrix<-function(m=matrix()){
  i<-NULL

      get<-function() {
          m           }
          setinverse<-function(inverse){
              i <<-inverse             }
              getinverse<-function(){
                    i               }
list(get=get,setinverse=setinverse,getinverse=getinverse)
                                    }
#function2: This is the calling function that runs a conditional statement
# to check if the cache for the given matrix is already computed. If yes,
# it fetches the result from function1, else computes the result, stores it
#in function1 and returns the result.

cacheSolve<-function(m,...){
  i<-m$getinverse()
  
  if(!is.null(i)){
        message('getting cached result')
        return(i)
                 }
  else{
        message('calculating result...')
        data<-m$get()
        i<-solve(data)
        m$setinverse(i)
        return (i)  #does not print the inverse as it might be very large
       }
                            }

#output:
#> size<-1000
#> source("matinv2.R")
#> m<-matrix(sample(size^2),size,size)
#> mm<-makeCacheMatrix(m)
#> ss1<-cacheSolve(mm)
###calculating result...
#> ss2<-cacheSolve(mm)
###getting cached result
#> identical(ss1,ss2)
###[1] TRUE
