library(templ)

file <- file.path("inst", "examples", "mrg_rmarkdown.Rmd")
#templ:::rmd_export("mrg_rmarkdown", file, overwrite = TRUE)
rmarkdown::render(file)

file <- file.path("inst", "examples", "mrg_notebook.Rmd")
#templ:::rmd_export("mrg_notebook", file, overwrite = TRUE)
rmarkdown::render(file)

file <- file.path("inst", "examples", "mrg_beamer.Rmd")
#templ:::rmd_export("mrg_beamer", file, overwrite = TRUE)
rmarkdown::render(file)

file <- file.path("inst", "examples", "mrg_antimarkdown.R")
#templ:::rmd_export("mrg_antimarkdown", file, overwrite = TRUE)
rmarkdown::render(file)

file <- file.path("inst", "examples", "mrg_html0.Rmd")
#templ:::rmd_export("mrg_antimarkdown", file, overwrite = TRUE)
rmarkdown::render(file)

logf <- list.files("inst/examples", pattern = "\\.log$", full.names = TRUE)
texf <- list.files("inst/examples", pattern = "\\.tex$", full.names = TRUE)

file.remove(logf)
file.remove(texf)


