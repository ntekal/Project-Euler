#PSEUDO (SIEVE OR ERASTOTHENES)
# Input: an integer n > 1.
# 
# Let A be an array of Boolean values, indexed by integers 2 to n,
# initially all set to true.
# 
# for i = 2, 3, 4, ..., not exceeding √n:
#   if A[i] is true:
#   for j = i2, i2+i, i2+2i, i2+3i, ..., not exceeding n:
#   A[j] := false.
# 
# Output: all i such that A[i] is true.

sieve <- function(n) {
  if (n <= 1) {
    return(numeric(0))
  }
  if (n == 2) {
    return(c(2))
  }
  
  a <- seq(2,n)
  b <- c()
  b[1] <- 2
  
  i <- 1
  while (length(a) > 0) {
    b[i] <- a[1]
    i <- i + 1
    a <- a[!(a %% a[1] == 0)]
  }
  b
}

pfactor <- function(x) {
  factors <- c()
  j <- 1
  primes <- sieve( floor(sqrt(x)) )
  for (prime in primes) {
    if (x %% prime == 0) {
      factors[j] <- prime
      j <- j + 1
    }
  }
  factors
}

pfactor(600851475143)