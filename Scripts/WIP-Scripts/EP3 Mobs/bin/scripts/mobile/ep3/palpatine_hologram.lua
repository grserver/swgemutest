palpatine_hologram = Creature:new {
	--objectName = "@mob/creature_names:ep3_general_grievous",
	customName = "Emperor Palpatine"
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 0.28,
	damageMin = 140,
	damageMax = 230,
	baseXp = 514,
	baseHAM = 30000,
	baseHAMmax = 33000,
	armor = 3,
	resists = {25,25,25,25,25,25,25,25,25},
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

	templates = {"object/mobile/ep3/palpatine_hologram.iff"},
		
	lootGroups = {},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(palpatine_hologram, "palpatine_hologram")
