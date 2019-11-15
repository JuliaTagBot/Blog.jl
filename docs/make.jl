using Documenter, Blog
makedocs(sitename="Kailai's Workspace", modules=[Blog],
pages = Any[
    "index.md",
    "problems.md"
],
authors = "Kailai Xu")

deploydocs(
    repo = "github.com/kailaix/Blog.jl.git",
)