push!(LOAD_PATH,"../src/")
using GridDetector
using Documenter

DocMeta.setdocmeta!(GridDetector, :DocTestSetup, :(using GridDetector); recursive=true)

makedocs(;
    modules=[GridDetector],
    authors="Ashwani Rathee",
    repo="github.com/ashwani-rathee/GridDetector.jl/blob/{commit}{path}#{line}",
    sitename="GridDetector.jl",
    format=Documenter.HTML(;
        prettyurls=Base.get(ENV, "CI", "false") == "true",
        canonical="https://ashwani-rathee.github.io/GridDetector.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ashwani-rathee/GridDetector.jl",
    devbranch="main",
    push_preview = true
) 