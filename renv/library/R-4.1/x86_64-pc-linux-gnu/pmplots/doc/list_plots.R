## ---- message = FALSE, warning = FALSE----------------------------------------
library(pmplots)
library(dplyr)

data <- pmplots_data_obs()

## -----------------------------------------------------------------------------
wres_cont(data, x = "WT")

## -----------------------------------------------------------------------------
wres_cont(data, x = c("WT", "ALB", "CRCL", "AST"))

## -----------------------------------------------------------------------------
covs <- c(
  "WT//Weight (kg)", "ALB//Albumin", 
  "CRCL//Creatinine clearance", "AST//Aspartate aminotransferase"
)

wres_cont(data, x = covs) %>% pm_grid()

## -----------------------------------------------------------------------------
id <- pmplots_data_id()


eta_cont(data, x = covs, y = "ETA1//ETA-CL") %>% pm_grid()

## -----------------------------------------------------------------------------
wres_cat(data, x = c("STUDYc", "CPc")) %>% pm_grid()

## -----------------------------------------------------------------------------
pm_scatter_list(data, y  = "WRES", x = c("PRED", "IPRED", "TIME")) %>% pm_grid()

## -----------------------------------------------------------------------------
lapply(c("PRED", "IPRED", "TIME"), wres_cont, df = data, y = "WRES") %>% pm_grid()

