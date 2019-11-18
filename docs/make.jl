using Documenter, Blog
makedocs(sitename="Workspace", modules=[Blog],
pages = Any[
    "index.md",
    "quant.md",
    "programming.md",
    "articles.md"
],
authors = "Kailai Xu")

deploydocs(
    repo = "github.com/kailaix/Blog.jl.git",
)