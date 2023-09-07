package data

type Certificate struct {
	Name string
	Year uint
	Link string
}

func GetCertifications() []Certificate {
	return []Certificate{
		{
			Name: "SAP Certified Application Associate: BW/4HANA",
			Year: 2019,
			Link: "https://www.youracclaim.com/badges/67abd278-aca5-45fd-b1cd-dc01266ff297/public_url",
		},
		{
			Name: "SAP Support Consultant Qualification",
			Year: 2018,
		},
		{
			Name: "ITIL Foundation",
			Year: 2017,
		},
		{
			Name: "LPI Essentials",
			Year: 2014,
			Link: "https://lpi.org/v/LPI000303301/lptxml5wps",
		},
	}
}
