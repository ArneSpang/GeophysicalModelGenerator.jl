using GeophysicalModelGenerator
using Documenter

DocMeta.setdocmeta!(GeophysicalModelGenerator, :DocTestSetup, :(using GeophysicalModelGenerator); recursive=true)

makedocs(;
    modules=[GeophysicalModelGenerator],
    authors="Marcel Thielmann, Boris Kaus",
    repo="https://github.com/JuliaGeodynamics/GeophysicalModelGenerator/{commit}{path}#{line}",
    sitename="GeophysicalModelGenerator.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://github.com/JuliaGeodynamics/GeophysicalModelGenerator.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Tutorials" => Any[
            "Overview" =>  "man/tutorials.md",
            "Visualize 3D seismic tomography" =>  "man/tutorial_load3DSeismicData.md",
            "Visualize Moho topography" =>  "man/tutorial_MohoTopo.md",
            "Create GMT-based topography" =>  "man/tutorial_GMT_Topography.md",
            "Coastlines" =>  "man/tutorial_Coastlines.md",
            "Interpolate irregular 3D seismic tomography" =>  "man/tutorial_loadirregular3DSeismicData.md",
        ],
        "User Guide" => Any[
            "Data Structures" =>  "man/datastructures.md",
            "Data Import" =>  "man/dataimport.md",
            "Paraview output" => "man/paraview_output.md",
            "Gravity code" => "man/gravity_code.md"
        ],
        "List of functions"  => "man/listfunctions.md"
    ],
)

deploydocs(;
    repo="github.com/JuliaGeodynamics/GeophysicalModelGenerator.jl.git",
    branch = "gh-pages",
    target = "build",
    devbranch = "main",
    devurl = "dev",
)

