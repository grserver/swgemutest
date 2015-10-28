nk_s_battle_droid_01 = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "NK-Super Battle Droid",
	socialGroup = "NK",
	pvpFaction = "NK",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 1400,
	damageMax = 2300,
	baseXp = 16884,
	baseHAM = 96000,
	baseHAMmax = 178000,
	armor = 3,
	resists = {30,35,30,30,30,30,30,-1,-1},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
			lootChance = 450000
		},
	},
	conversationTemplate = "",
	scale = 1.25,
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(nk_s_battle_droid_01, "nk_s_battle_droid_01")
