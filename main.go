package main

import (
	"net/url"
	"os/exec"
	"text/template"

	"github.com/Interwego/cv/data"
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
		NewHTML(template.FuncMap{
			"urlJoin": url.JoinPath,
		}).
		WithTemplatesDir("templates").
		WithOutputDir("output").
		LoadGlob("layout_*.gohtml").
		SetData("Certifications", data.GetCertifications()).
		SetData("Contact", data.GetContact()).
		SetData("Experience", data.GetExperience()).
		SetData("Languages", data.GetLanguages()).
		SetData("Trainings", data.GetTrainings()).
		LoadRenderSingle("page_index.gohtml", "index.html").
		LoadRenderSingle("page_404.gohtml", "404.html").
		LoadRenderSingle("page_algemene-voorwaarden.gohtml", "algemene-voorwaarden/index.html").
		Must()
}
