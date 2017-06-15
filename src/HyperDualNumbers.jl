module HyperDualNumbers

  importall Base
  import SpecialFunctions.erf
  using Compat
  include("hyperdual.jl")
  
  export
    Hyper,
    Hyper256,
    Hyper128,
    hyper,
    hyper256,
    hyper128,
    ishyper,
    hyper_show,
    eps1,
    eps2,
    eps1eps2,
    conjhyper

end # module
