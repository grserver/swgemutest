sayomi_witch = Creature:new {
	objectName = "@mob/creature_names:sayomi_witch",
	socialGroup = "sayomi_tribe",
	pvpFaction = "sayomi_tribe",
	faction = "",
	level = 45,
	chanceHit = 0.47,
	damageMin = 370,
	damageMax = 450,
	baseXp = 4461,
	baseHAM = 9700,
	baseHAMmax = 11900,
	armor = 1,
	resists = {30,30,30,30,30,30,30,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
			"object/mobile/shared_dressed_sayomi_witch_01.iff"
			"object/mobile/shared_dressed_sayomi_witch_02.iff"
			"object/mobile/shared_dressed_sayomi_witch_03.iff"
			"object/mobile/shared_dressed_sayomi_witch_04.iff"
			"object/mobile/shared_dressed_sayomi_witch_05.iff"
			"object/mobile/shared_dressed_sayomi_witch_06.iff"
			"object/mobile/shared_dressed_sayomi_witch_07.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(sayomi_witch, "sayomi_witch")