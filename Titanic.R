# titanic is avaliable in the DataCamp workspace
# This code aims to predict one's chances of surviving the Titanic tragedy by going through the statistics of survivors' age, sex, and passenger class.

# 1 - Check the structure of titanic
str(titanic)

# 2 - Plot the distribution of sexes within the classes of the ship
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

# 3 - Add facet_grid() layer "Survived"
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge") + 
  facet_grid(. ~ Survived)


# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Include Age, the final variable
ggplot(titanic, aes(x = Pclass, y = Age, color = Sex)) +
  geom_point(position = posn.jd, size = 3, alpha = 0.5) + 
  facet_grid(. ~ Survived)