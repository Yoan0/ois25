library(ggplot2)

#données fictives: évolution d'une variable environnementale
jour <- seq.Date(from = as.Date("2024-01-01"), by = "day", length.out = 120)
temperature_simulee <- 15 + cumsum(rnorm(120, mean = 0.05, sd = 0.8))

donnees <- data.frame(
  date = jour,
  temperature = temperature_simulee
)

# Visu:
ggplot(donnees, aes(x = date, y = temperature)) +
  geom_line(color = "#2E86C1", size = 1.1) +
  geom_smooth(method = "loess", color = "#E74C3C", se = FALSE, linetype = "dashed") +
  theme_light() +
  labs(
    title = "Simulation de l'évolution de la température",
    subtitle = "Données générées aléatoirement sur 120 jours",
    x = "Date",
    y = "Température (°C)"
  )