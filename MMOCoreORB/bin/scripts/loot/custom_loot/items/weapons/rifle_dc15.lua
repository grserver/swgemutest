rifle_dc15 = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/rifle/ep3/rifle_dc15.iff",
	craftingValues = {
		{"mindamage",47,96,0},
		{"maxdamage",100,188,0},
		{"attackspeed",9.1,6.3,0},
		{"woundchance",2.4,4.2,0},
		{"hitpoints",750,750,0},
		{"attackhealthcost",23,14,0},
		{"attackactioncost",47,28,0},
		{"attackmindcost",61,37,0},
		{"roundsused",15,45,0},
		{"zerorangemod",-50,-50,0},
		{"maxrangemod",-80,-80,0},
		{"midrange",40,40,0},
		{"midrangemod",-5,5,0},
	},
	customizationStringNames = {},
	customizationValues = {},

	-- randomDotChance: The chance of this weapon object dropping with a random dot on it. Higher number means less chance. Set to 0 to always have a random dot.
	randomDotChance = 0,
	junkDealerTypeNeeded = JUNKWEAPONS+JUNKJAWA,
	junkMinValue = 25,
	junkMaxValue = 45

}

addLootItemTemplate("rifle_dc15", rifle_dc15)
