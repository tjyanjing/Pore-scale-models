# Caculate the relative effective diffusion coefficient [-] from water content [v/v] and porosity [-]
# Reference: Millington, R. J., & Quirk, J. P. (1961). Permeability of porous solids. Transactions of the Faraday Society, 57(0), 1200–1207. https://doi.org/10.1039/TF9615701200

# input: water content [v/v]
# input: porosity [-]
# output: relative effective diffusion coeffcient [-]; effecitve diffusion in porous media/diffusion in pure water
diff.eff <- function(wc,porosity){
  diff.eff = wc^(10/3)/porosity^2
  return(diff.eff)
}