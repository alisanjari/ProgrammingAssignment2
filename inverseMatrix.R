
###  This function create a matrix, with another matrix tied to it ####

myMatrix <- function(MyMatrix=matrix()){
        inverseMat <- NULL
        
        set <- function(y) {
                MyMatrix <<- y
                inverseMat <<- NULL
        }
        
        get <- function() MyMatrix
        
        setInverse <- function(theInverse) {
                inverseMat <<- theInverse
        }
        
        getInverse <- function() inverseMat
        
        list(set=set, get=get, setInverse=setInverse ,getInverse=getInverse)
}

cachInverse <- function(x){
        inverseMat <-x$getInverse()
        if(!is.null(inverseMat)) {
                message("getting cached data")
                return(inverseMat)
        }
        else {
               theMat <- solve(x$get())
               x$setInverse(theMat)
               theMat
        }
}
                
                
