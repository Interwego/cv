package data

type Contact struct {
	Name      string
	Location  string
	Phone     string
	Email     string
	GitHub    []string
	VATNumber string
}

func GetContact() Contact {
	return Contact{
		Name:     "Jens Willemsens",
		Location: "Zaventem, Belgium",
		Phone:    "+32 476 78 44 28",
		Email:    "jens@interwego.com",
		GitHub: []string{
			"JenswBE",
			"Interwego",
		},
		VATNumber: "BE0805.449.002",
	}
}
