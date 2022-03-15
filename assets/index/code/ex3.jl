# This file was generated, do not modify it. # hide
nls = ADNLSModel(x -> [x[1] - 1; 10 * (x[2] - x[1]^2)], [-1.2; 1.0], 2)
stats = cannoles(nls, ϵtol = 1e-5, x = ones(2))