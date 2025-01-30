# Penguis_Pipeline_malon-
This repository contains a fully reproducible data analysis pipeline using the palmerpenguins dataset. The pipeline includes data cleaning, visualization, and reporting functionalities, all packaged for easy execution. Dockerization ensures reproducibility and portability across different environments.


## Data and functions to run pipeline are documented and tested: 5 points;

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
  
The file named tests/test_clean_data.R in this repository contain test code. This uses the "testthat package" to ensure the function behaves as expected. To run the test file to verified that it work, run the following command:
"testthat::test_dir("tests")" or "testthat::test_file("tests/test_clean_data.R")"


## Every software dependency is easily installed: 5 points;

Install dependencies manually:

install.packages(c("palmerpenguins", "dplyr", "ggplot2", "testthat"))


## Pipeline can be executed in one command: 5 points;

To execute the entire pipeline, run the following command from the project directory:

"Rscript penguins_pipeline.R"

## Bonus points: pipeline is dockerized, or uses Nix, and/or uses Github Actions to run? 5 points;

"docker tag penguins_pipeline marielontsie/penguins_pipeline:latest"

"docker login"

Then I used the one-time device confirmation code to access the browser: 
"https://login.docker.com/activate"

Then type: 
"docker push marielontsie/penguins_pipeline:latest"

Anyone can now run it using:
"docker run --rm -v ${PWD}/data:/pipeline/data marielontsie/penguins_pipeline"   OR

"docker run --rm -v $(pwd)/data:/data marielontsie/penguins_pipeline"





