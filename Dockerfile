FROM rocker/r-ver:4.2.1

RUN apt-get update && apt-get install -y \
    libxml2-dev libcairo2-dev libgit2-dev libxtst6 \
    && apt-get clean

RUN R -e "install.packages(c('palmerpenguins', 'dplyr', 'ggplot2', 'testthat'))"

COPY . /pipeline
WORKDIR /pipeline

CMD ["Rscript", "penguins_pipeline.R"]
