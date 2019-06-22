# Calculate adsorptive water film thickness [mm] from the water potenial [MPa]

# Reference: Tuller, M., Or, D., & Dudley, L. M. (1999). Adsorption and capillary condensation in porous media: Liquid retention and interfacial configurations in angular pores. Water Resources Research, 35(7), 1949–1964. https://doi.org/10.1029/1999WR900098

# input: water potenial [MPa]
# output: film thickness [mm]
film <- function(wp){
  Asvl = -1.9e-19 # Hamaker constant [J]
  den_water = 1000 # water density [kg/m3]
  h = 1e9*(Asvl/(-6*pi*1e06*wp))^(1/3) # film thickness [mm]
  return(h)
}  