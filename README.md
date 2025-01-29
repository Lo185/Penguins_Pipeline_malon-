# Penguis_Pipeline_malon-
This repository contains a fully reproducible data analysis pipeline using the palmerpenguins dataset. The pipeline includes data cleaning, visualization, and reporting functionalities, all packaged for easy execution. Dockerization ensures reproducibility and portability across different environments.


## Data

This pipeline uses the `palmerpenguins` dataset, which provides measurements for three penguin species: Adelie, Chinstrap, and Gentoo.

### Outputs
1. `data/species_summary.csv`: Summary statistics of the species.
2. `data/penguin_plot.png`: A scatter plot of bill dimensions.
3. `data/session_info.txt`: Information about the R session.

## Functions

The following functions are implemented in the `penguins_pipeline.R` file:

1. **`clean_data()`**
   - Removes rows with missing values.
   - Filters relevant columns.
   - Outputs a cleaned dataset.

2. **`summarize_species(data)`**
   - Groups the data by species.
   - Calculates summary statistics (mean, median, etc.).
   - Writes the output to `species_summary.csv`.

3. **`generate_plots(data)`**
   - Creates a scatter plot of `bill_length_mm` vs. `bill_depth_mm` with species differentiation.
   - Saves the plot as `penguin_plot.png`.

4. **`save_session_info()`**
   - Captures session information using `sessionInfo()`.
   - Outputs it to `session_info.txt`.
  



##Every software dependency is easily installed: 5 points;

Install dependencies manually:
```R
install.packages(c("palmerpenguins", "dplyr", "ggplot2", "testthat"))


## Pipeline can be executed in one command: 5 points;

To execute the entire pipeline, run the following command from the project directory:

```bash
Rscript penguins_pipeline.R



