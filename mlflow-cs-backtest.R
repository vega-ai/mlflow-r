library(mlflow)
library(rmarkdown)

model <- mlflow_param(name = "model",
                      default = "backtest_model",
                      type = "string")
data <- mlflow_param(name = "data",
                     default = "backtest_data",
                     type = "string")

render("cs-backtest.Rmd",
       output_format = "html_document",
       output_dir = "html",
       params = list(model = model,
                     data = data),
       quiet = TRUE)
