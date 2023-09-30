push!(LOAD_PATH,"../src/")
using GridDetector
using Documenter

DocMeta.setdocmeta!(GridDetector, :DocTestSetup, :(using GridDetector); recursive=true)

makedocs(;
    modules=[GridDetector],
    sitename="GridDetector.jl",
)

deploydocs(;
    repo="github.com/ashwani-rathee/GridDetector.jl",
)