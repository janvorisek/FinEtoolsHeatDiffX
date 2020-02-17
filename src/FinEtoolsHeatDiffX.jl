"""
FinEtools (C) 2017-2019, Petr Krysl

Finite Element tools.  Julia implementation  of the finite element method
for continuum mechanics. Package for heat diffusion problems.
"""
module FinEtoolsHeatDiffX

__precompile__(true)

include("allmodules.jl")

# Exports follow:

###########################################################################
# Heat diffusion functionality
###########################################################################
using FinEtoolsHeatDiffX.MatHeatDiffModule: MatHeatDiff
# Exported: type of heat-diffusion  material
export MatHeatDiff

using FinEtoolsHeatDiffX.FEMMHeatDiffModule: FEMMHeatDiff, conductivity, nzebcloadsconductivity, energy, inspectintegpoints, capacity
# Exported: type  for linear heat diffusion and discretization methods
export FEMMHeatDiff, conductivity, nzebcloadsconductivity, energy, inspectintegpoints, capacity

using FinEtoolsHeatDiffX.FEMMHeatDiffSurfModule: FEMMHeatDiffSurf, surfacetransfer, surfacetransferloads, nzebcsurfacetransferloads
# Exported: type  for linear heat diffusion boundary conditions and discretization methods
export FEMMHeatDiffSurf, surfacetransfer, surfacetransferloads, nzebcsurfacetransferloads

end # module
