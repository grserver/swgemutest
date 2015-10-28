achonnko = Creature:new {
	objectName = "@mob/creature_names:ep3_achonnko",
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

	templates = {"object/mobile/ep3/ep3_achonnko.iff"},
		
	lootGroups = {},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(achonnko, "achonnko")
