package data

type Language struct {
	Name  string
	Level string
}

func GetLanguages() []Language {
	return []Language{
		{
			Name:  "Dutch",
			Level: "Mother tongue",
		},
		{
			Name:  "English",
			Level: "Fluent",
		},
		{
			Name:  "French",
			Level: "Basic",
		},
	}
}
