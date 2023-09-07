package data

type Training struct {
	Year  string
	Name  string
	Extra []string
}

func GetTrainings() []Training {
	return []Training{
		{
			Year:  "2022",
			Name:  "Cybersecurity (6d)",
			Extra: []string{"Thomas More, Geel, Belgium"},
		},
		{
			Year: "2019",
			Name: "SAP BW/4HANA (BW462)",
		},
		{
			Year: "2017",
			Name: "openSAP: SAP Business Warehouse powered by SAP HANA",
		},
		{
			Year: "2013 - 2016",
			Name: "Bachelor in Applied Computer Science",
			Extra: []string{
				"Thomas More, Geel, Belgium",
			},
		},
	}
}
