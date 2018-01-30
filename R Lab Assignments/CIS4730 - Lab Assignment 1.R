##Blake Benton
##1/29/2018
##CIS4730
##Assignment 1

## Part 1

## 1: Create list
x <- list(names = c("Alice", "Bob", "Chris", "Denise"),
          is_female = c(TRUE, FALSE, FALSE, FALSE),
          age = c(20, 25, 30, 35))
x

## 2: Get "Chris"
x$names[3]

## Part 2

## 1: Create the data frame
name <- c(row_1="Alice", row_2="Bob", row_3="Chris", row_4="Denise")
is_female <- c(TRUE, FALSE, FALSE, FALSE)
age_of_person <- c(20, 25, 30, 35)
df <- data.frame(name, female=is_female, age=age_of_person, stringsAsFactors=F)
df

## 2: Obtain the mean of the age column
mean(df$age)

## 3: Retrieve Bob's age from the data frame
df[2,3]
