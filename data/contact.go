package data

type Contact struct {
	Name        string
	Location    string
	Phone       string
	Email       string
	GitHub      []string
	CompanyName string
	VATNumber   string
	Website     string
	TermsPage   string
	IBAN        string
	// https://nl.wikipedia.org/wiki/Gerechtelijk_arrondissement
	LegalDistrict string
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
		CompanyName:   "Interwego BV",
		VATNumber:     "BE0805.449.002",
		Website:       "https://interwego.com",
		TermsPage:     "/algemene-voorwaarden/",
		IBAN:          "BE56 0689 4974 2888",
		LegalDistrict: "Brussel",
	}
}
