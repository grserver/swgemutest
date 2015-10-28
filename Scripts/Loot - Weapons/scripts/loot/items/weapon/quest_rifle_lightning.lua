quest_rifle_lightning = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/weapon/ranged/rifle/quest_rifle_lightning.iff",
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

addLootItemTemplate("quest_rifle_lightning", quest_rifle_lightning)
