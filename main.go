package main

import (
	"github.com/JenswBE/go-pipeline/pipeline"
)

func main() {
	pipeline.
		NewHTML(nil).
		WithOutputDir("output").
		SetDataYAML("cv", "data.yml").
		LoadRenderSingle("cv.gohtml", "index.html").
		Must()
}
