# pipeline.R
library(palmerpenguins)
library(dplyr)
library(ggplot2)

# Step 1: Data Cleaning
penguins_clean <- penguins %>%
  filter(!is.na(bill_length_mm), !is.na(bill_depth_mm), !is.na(species))

# Step 2: Generate Summary
species_summary <- penguins_clean %>%
  group_by(species) %>%
  summarise(
    avg_bill_length = mean(bill_length_mm),
    avg_bill_depth = mean(bill_depth_mm)
  )
write.csv(species_summary, "data/species_summary.csv", row.names = FALSE)

# Step 3: Visualization
penguin_plot <- ggplot(penguins_clean, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point() +
  theme_minimal() +
  labs(
    title = "Scatter Plot of Penguin Bill Dimensions",
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)"
  )
ggsave("data/penguin_plot.png", plot = penguin_plot, width = 8, height = 6)

# Step 4: Session Info
writeLines(capture.output(sessionInfo()), "data/session_info.txt")
