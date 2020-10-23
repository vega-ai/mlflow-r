library(mlflow)
library(rmarkdown)

seed <- mlflow_param(name = "seed",
                     default = 12347,
                     type = "integer")
split_ratio <- mlflow_param(name = "split_ratio",
                     default = 0.80,
                     type = "numeric")

render("cs-training.Rmd",
       output_format = "html_document",
       output_dir = "html",
       params = list(seed = seed,
                     split_ratio = split_ratio),
       quiet = TRUE)
