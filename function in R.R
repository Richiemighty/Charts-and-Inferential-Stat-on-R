program <- function(X){
  y = 10 + X
  z = y + 22
  k = z + y 
  print(c('y=', y, 'z =', z, 'k=', k))
}


X <- c(3,4,5,6,7)
M <- c(4,5,6,7,8)
program(M)
