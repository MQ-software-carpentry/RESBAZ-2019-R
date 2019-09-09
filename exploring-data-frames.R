## Exploring Data Frames


age <- c(2, 3, 5)
cats

cbind(cats, age)

age <- c(2, 3, 5, 12)
cbind(cats, age)

age <- c(2, 3)
cbind(cats, age)

nrow(cats)

length(age)

age <- c(2, 3, 5)
cats <- cbind(cats, age)

newRow <- list("tortoiseshell", 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

cats

#
# Factors
#
levels(cats$coat)

levels(cats$coat) <- c(levels(cats$coat), "tortoiseshell")
cats <- rbind(cats, list("tortoiseshell", 3.3, TRUE, 9))

str(cats)


