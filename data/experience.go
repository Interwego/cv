package data

type Experience struct {
	Summary Summary
}

type Summary struct {
	Professional []string
	Personal     []string
}

func GetExperience() Experience {
	return Experience{
		Summary: Summary{
			Professional: []string{
				"Kubernetes",
				"Terraform",
				"Google Cloud Platform",
				"GitHub Actions",
				"Docker / Podman", // Personally since 2018
				"Golang",
				"Python",
				"Sprinto (security compliance)",
			},
			Personal: []string{
				"Linux (10+ years)", // Since 2010
				"Ansible",
				"Networking with pfSense and Ubiquiti",
				"Graylog",
				"LibreNMS",
				"Keycloak",
			},
		},
	}
}
