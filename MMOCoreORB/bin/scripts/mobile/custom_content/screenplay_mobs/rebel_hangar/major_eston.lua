major_eston = Creature:new {
	customName = "Major Eston",
	socialGroup = "rebel",
	faction = "rebel",
	level = 300,
	chanceHit = 0.36,
	damageMin = 2500,
	damageMax = 2600,
	baseXp = 0,
	baseHAM = 77750,
	baseHAMmax = 97400,
	armor = 0,
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = 264,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_major_zabrak_female_01.iff",
	},
	


	conversationTemplate = "rebel_hangar_mission_giver_convotemplate"
}
CreatureTemplates:addCreatureTemplate(major_eston, "major_eston")
