using Documenter, Blog
makedocs(sitename="Workspace", modules=[Blog],
pages = Any[
    "index.md",
    "interview.md",
    "articles.md",
    "codes.md"
],
authors = "Kailai Xu")

deploydocs(
    repo = "github.com/kailaix/Blog.jl.git",
)