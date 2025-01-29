clean_penguin_data <- function(data) {
  data %>%
    filter(!is.na(bill_length_mm), !is.na(bill_depth_mm), !is.na(species))
}
