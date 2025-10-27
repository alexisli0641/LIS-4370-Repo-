library(ggplot2)
library(lattice)

USArrests

# 1
plot(USArrests$UrbanPop, USArrests$Murder,
     main = "Population vs Murders",
     xlab = "Population Per 100,000",
     ylab = "Murders",)

# 2
USArrests$Region <- state.region

xyplot(Assault ~ Murder | Region,
       data = USArrests,
       main = "Assault vs. Murder by Region",
       xlab = "Murder Arrests per 100,000",
       ylab = "Assault Arrests per 100,000",
       pch = 19, col = "steelblue")

# 3

ggplot(USArrests, aes(x = Rape, fill = Region)) +
  geom_histogram(binwidth = 3, color = "white", alpha = 0.8) +
  facet_wrap(~ Region) +
  labs(title = "Distribution of Rape Rates by Region",
       x = "Rape Arrests per 100,000",
       y = "Count") +
  theme_minimal()
