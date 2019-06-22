# Calculate capillary radius ['mu' m], i.e. radius of curvature of the liquid-vapor interface, from the water potenial [MPa]
# Reference: Young-Laplacee equation

# input: water potenial [MPa]
# output: capilary radius ['mu' m]  
cap.rad <- function(wp){
  Sigma = 0.0715 # water surface tension [J/m2]
  r = 1e6*Sigma/(1e06*wp) #['mu' m]
  return(r)
}  
