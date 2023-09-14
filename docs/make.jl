using OhMySlurm
using Documenter

DocMeta.setdocmeta!(OhMySlurm, :DocTestSetup, :(using OhMySlurm); recursive=true)

makedocs(;
    modules=[OhMySlurm],
    authors="Yusheng Zhao <yushengzhao2020@outlook.com> and contributors",
    repo="https://github.com/Yusheng Zhao/OhMySlurm.jl/blob/{commit}{path}#{line}",
    sitename="OhMySlurm.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Yusheng Zhao.github.io/OhMySlurm.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Yusheng Zhao/OhMySlurm.jl",
    devbranch="main",
)
