using Documenter, FinEtools, FinEtoolsHeatDiffX

makedocs(
	modules = [FinEtoolsHeatDiffX],
	doctest = false, clean = true,
	format = Documenter.HTML(prettyurls = false),
	authors = "Petr Krysl",
	sitename = "FinEtoolsHeatDiff.jl",
	pages = Any[
	"Home" => "index.md",
	"Guide" => "guide/guide.md",
	"Types and Functions" => Any[
		"man/types.md",
		"man/functions.md"]
		]
	)

deploydocs(
    repo = "github.com/janvorisek/FinEtoolsHeatDiff.jl.git",
)
