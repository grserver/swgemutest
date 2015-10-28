general_grievous = Creature:new {
	objectName = "@mob/creature_names:ep3_general_grievous",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 1,
	chanceHit = 0.01,
	damageMin = 1,
	damageMax = 2,
	baseXp = 514,
	baseHAM = 8100,
	baseHAMmax = 9900,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/general_grievous.iff"},
		
	lootGroups = {
		{
			groups = {
				{group = "crystals_sunriders", chance = 5000000},
				{group = "crystals_premium", chance = 5000000},
			},
			lootChance = 10000000
		}
},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(general_grievous, "general_grievous")
