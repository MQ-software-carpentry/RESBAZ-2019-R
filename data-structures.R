# Data Structures

# First we need a Project 
#
#  File -> New Project -> New Directory -> New Project -> Directory Name
#
# I called mine resbaz-r and placed on my Dekstop

# Next we need a Script
#
#  File -> New Script
#  File -> Save As -> data-structures

# and now we need some data
cats <- data.frame(coat = c("calico", "black", "tabby"), 
                   weight = c(2.1, 5.0, 3.2), 
                   likes_string = c(1, 0, 1))

# and will save it to a file (but we need a folder first)
#
#  Files Tab -> New Folder -> data

# then save the data frame
write.csv(cats, file = "data/feline-data.csv", row.names = TRUE)

# of course we can do the opposite
cats <- read.csv(file = "data/feline-data.csv")
cats

# extracting columns
cats$weight

cats$coat

## Say we discovered that the scale weighs two Kg light:
cats$weight + 2

paste("My cat is", cats$coat)

cats$weight + cats$coat

typeof(cats$weight)

# There are 5 main types: double, integer, complex, logical and character.
typeof(3.14)

typeof(1)

typeof(1+1i)

typeof(TRUE)

typeof('banana')

typeof(cats)

class(cats)

# change feline-data.csv to have the following last line
#
#  "3","tabby",3.2 or 2.4,1
#
# Hint:  Files Tab -> right-clicl feline-data.csv -> View File -> Make Changes -> Save

# read it again (the look at the type of the weight column)
cats <- read.csv(file = "data/feline-data.csv")
typeof(cats$weight)

# they are now "factors" - now undo the changes (and save) and re-read the data

cats <- read.csv(file = "data/feline-data.csv")

#
# Vectors and coercion
#

my_vector <- vector(length = 3)
my_vect

another_vector <- vector(mode='character', length=3)
another_vector

str(another_vector)
str(cats$weight)

DISCUSSION 1

# using combine to make a vector
combine_vector <- c(2,6,3)
combine_vector

# colercion
quiz_vector <- c(2,6,'3')

coercion_vector <- c('a', TRUE)
coercion_vector

another_coercion_vector <- c(0, TRUE)
another_coercion_vector

character_vector_example <- c('0','2','4')
character_vector_example

character_coerced_to_numeric <- as.numeric(character_vector_example)
character_coerced_to_numeric

numeric_coerced_to_logical <- as.logical(character_coerced_to_numeric)
numeric_coerced_to_logical


cats$likes_string
cats$likes_string <- as.logical(cats$likes_string)
cats$likes_string

ab_vector <- c('a', 'b')
ab_vector

combine_example <- c(ab_vector, 'SWC')
combine_example

mySeries <- 1:10
mySeries

seq(10)
seq(1,10, by=0.1)

sequence_example <- seq(10)
head(sequence_example, n=2)
tail(sequence_example, n=4)
length(sequence_example)
class(sequence_example)
typeof(sequence_example)

my_example <- 5:8
names(my_example) <- c("a", "b", "c", "d")
my_example
names(my_example)

CHALLENGE 1

#
# Data Frames
#
str(cats$weight)
str(cats$likes_string)
str(cats$coat)

# Factors
coats <- c('tabby', 'tortoiseshell', 'tortoiseshell', 'black', 'tabby')
coats
str(coats)

CATegories <- factor(coats)
class(CATegories)
str(CATegories)

typeof(coats)
typeof(CATegories)

CHALLENGE 2
Soln: 
cats <- read.csv(file="data/feline-data.csv", stringsAsFactors=FALSE)
str(cats$coat)

mydata <- c("case", "control", "control", "case")
factor_ordering_example <- factor(mydata, levels = c("control", "case"))
str(factor_ordering_example)

#
# Lists
#

list_example <- list(1, "a", TRUE, 1+4i)
list_example

another_list <- list(title = "Numbers", numbers = 1:10, data = TRUE )
another_list

typeof(cats)
cats$coat

cats[,1]
typeof(cats[,1])
str(cats[,1])

cats[1,]
typeof(cats[1,])
str(cats[1,])

CHALLENGE 3

#
# Matices
#
matrix_example <- matrix(0, ncol=6, nrow=3)
matrix_example

class(matrix_example)
typeof(matrix_example)

str(matrix_example)
dim(matrix_example)

ncol(matrix_example)
nrow(matrix_example)

CHALLENGE 4


