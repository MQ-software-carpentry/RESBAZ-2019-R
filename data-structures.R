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

# Vector and coercion
my_vector <- vector(length = 3)
my_vect

another_vector <- vector(mode='character', length=3)
another_vector

str(another_vector)
str(cats$weight)
å