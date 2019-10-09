using PyCall 
using Pkg; Pkg.add("PyPlot")

using Documenter, Blog
makedocs(sitename="Ideas Convergence", modules=[Blog],
pages = Any[
    "index.md",
],
authors = "Kailai Xu")

deploydocs(
    repo = "github.com/kailaix/Blog.jl.git",
)