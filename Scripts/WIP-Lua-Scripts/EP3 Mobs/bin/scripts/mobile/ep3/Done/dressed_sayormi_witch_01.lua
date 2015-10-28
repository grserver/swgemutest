dressed_sayormi_witch_01 = Creature:new {
	objectName = "@mob/creature_names:ep3_forest_sayormi_witch",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 11,
	chanceHit = 0.28,
	damageMin = 40,
	damageMax = 80,
	baseXp = 514,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {10,5,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_sayormi_witch_01.iff"},
		
	lootGroups = {},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dressed_sayormi_witch_01, "dressed_sayormi_witch_01")
