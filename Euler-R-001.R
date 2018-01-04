#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

num = seq(1, 999)
multiples.3 = num[num %% 3 == 0]
multiples.5 = num[num %% 5 == 0]
num.request = union(multiples.3, multiples.5)
result = sum(num.request)
cat("The sum of all the multiples of 3 or 5 below 1000 is: ", result, ".\n", 
    sep="")
