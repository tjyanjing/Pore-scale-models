# Calculate relative pore saturation [-] from water potenital [MPa]
# ratio of water-filled cross-sectional area to total pore area for a cross section of the unit cell, i.e. 1 um square

# input: water potenial [MPa]
# output: relative pore saturation [-]     
sat.rl <- function(wp){
  # require capillary radius package
  a <- cap.rad(wp)^2
  sat.rl <- 4*(1-pi/4)*a/1
  return(sat.rl)
} 