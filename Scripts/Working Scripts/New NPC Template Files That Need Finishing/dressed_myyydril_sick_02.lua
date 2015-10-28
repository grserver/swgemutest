dressed_myyydril_sick_02 = Creature:new {
	objectName = "@mob/creature_names:dressed_myyydril_sick_02",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 11,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
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

	templates = {"object/mobile/dressed_myyydril_sick_02"},
		
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = merge()
}

CreatureTemplates:addCreatureTemplate(dressed_myyydril_sick_02, "dressed_myyydril_sick_02")
