nk_mega_droid = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "NK-Mega_Droid",
	socialGroup = "NK",
	pvpFaction = "NK",
	faction = "",
	level = 300,
	chanceHit = 25.0,
	damageMin = 1000,
	damageMax = 2100,
	baseXp = 1900000,
	baseHAM = 2300000,
	baseHAMmax = 2300000,
	armor = 3,
	resists = {30,30,30,30,30,30,30,30,-1},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = NONE,

	templates = {
		"object/mobile/death_watch_s_battle_droid.iff"},
		--"object/mobile/death_watch_s_battle_droid_02.iff",
		--"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 45000000
		},
	},
	conversationTemplate = "",
	scale = 5.0,
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(nk_mega_droid, "nk_mega_droid")
