# This file was generated, do not modify it.

Pages = ["tutorial.md"]

using CaNNOLeS, ADNLPModels

nls = ADNLSModel(x -> [x[1] - 1; 10 * (x[2] - x[1]^2)], [-1.2; 1.0], 2)
stats = cannoles(nls, ϵtol = 1e-5, x = ones(2))

nls = ADNLSModel(
  x -> [x[1] - 1; 10 * (x[2] - x[1]^2)],
  [-1.2; 1.0],
  2,
  x -> [x[1] * x[2] - 1],
  [0.0],
  [0.0],
)
stats = cannoles(nls, max_time = 10., merit = :auglag)
#=
=#

