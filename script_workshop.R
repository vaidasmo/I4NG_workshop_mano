##################
# 000. Configuration----
##################

# install management tool to make sure that all packages are always loaded
install.packages("pacman")

# load package manager
library(pacman)

p_load(MASS, # for statistical analysis and user-friendly export of models
       tidyverse, # data manipulation and visualisation
       haven,
       showtext, # using non-standard font in R graphs
       ggtext, # coloring title in plots
       sjlabelled, # using SPSS datasets with its labels
       ggplot2,
       Cairo, # embedding fonts into graphs
       dataverse, # downloading dataset
       tidymodels) # for statistical analysis and user-friendly exports of models

# 010. Loading and manipulating data ----

# Specify Dataverse API token
Sys.setenv("DATAVERSE_KEY" = "6788cd26-a7bb-4c30-bae3-cd93741684b8")

df_evs <-
  get_dataframe_by_name(
    filename    = "10048_da_en_v1_0-1.tab",
    dataset     = "10.11587/C4YBOT",
    .f          = haven::read_dta,
    original    = TRUE,
    server      = "data.aussda.at")




