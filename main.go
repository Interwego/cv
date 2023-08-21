package main

import (
	"os/exec"

	"github.com/JenswBE/go-pipeline/pipeline"
	"github.com/rs/zerolog/log"
)

func main() {
	// Copy static content
	cmd := exec.Command("cp", "-R", "static/.", "output/")
	output, err := cmd.CombinedOutput()
	if err != nil {
		log.Fatal().Err(err).Str("cmd", cmd.String()).Bytes("output", output).Msg("Failed to copy static assets")
	}

	pipeline.
		NewHTML(nil).
		WithOutputDir("output").
		SetDataYAML("cv", "data.yml").
		LoadRenderSingle("cv.gohtml", "index.html").
		Must()
}
