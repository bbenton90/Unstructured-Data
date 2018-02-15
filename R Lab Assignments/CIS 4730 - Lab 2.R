## Blake Benton
## CIS 4730
## Lab Assignment 2

## 1.
stop_words <- c("a", "an", "and", "the", "that")
detect_stop_word <- function(word) {
  if(tolower(word) %in% stop_words) {
  return(TRUE)
}
  return(FALSE) 
}

detect_stop_word("Atlanta") ## will return false
detect_stop_word("that") ## will return true

## 2.
even <- function(int) {
  int %% 2 == 0
} ## takes an integer as input and returns whether or not it is an even number

even(6) ## will return true
even(5) ## will return false

## 3.
total = 0
for (i in 2:10) {
  if(i %% 2 != 0){
    next() ## if the remainder of an integer divided by 2 is not 0, the function will skip to the next number
  }
  total = i + total ## the function adds integers that divide to a remainder of zero between 2 and 10 to the intital target
}
print(total) ## returns the sum of even numbers between 1 and 10

## 4.
sum(seq(2, 10, 2)) ## gets the sum of even numbers between 1 and 10
    