major_eston_missions =
{
	{
		missionType = "confiscate",
		primarySpawns =
		{
			{ npcTemplate = "rh_imperial_sergeant", planetName = "rori", npcName = "" }
		},
		secondarySpawns =
		{
			{ npcTemplate = "rh_probot", planetName = "rori", npcName = "Imperial Probot" },
			{ npcTemplate = "rh_stormtrooper", planetName = "rori", npcName = "" },
			{ npcTemplate = "rh_stormtrooper", planetName = "rori", npcName = "" }
		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/mission/mission_datadisk.iff", itemName = "Encrypted Datadisk" }
		},
		rewards =
		{
			{ rewardType = "credits", amount = 300 },
			{ rewardType = "faction", faction = "rebel", amount = 15 }
		}
	},
	{ 
		missionType = "deliver", 
		primarySpawns = 
		{ 
			{ npcTemplate = "trujhazii", planetName = "rori", npcName = "Trujhazii" } 
		}, 
		secondarySpawns = 
		{
		}, 
		itemSpawns = 
		{ 
			{ itemTemplate = "object/tangible/mission/quest_item/singular_nak_q2_needed.iff", itemName = "" }
		}, 
		rewards = 
		{ 
		}
	},
	{ 
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "nightsister_stalker_quest", planetName = "rori", npcName = "Nightsister Stalker" } --SORT OUT BETTER NAME
		}, 
		secondarySpawns = 
		{
		}, 
		itemSpawns = 
		{ 
			--{ itemTemplate = "object/tangible/mission/quest_item/singular_nak_q1_needed.iff", itemName = "" }
		}, 
		rewards = 
		{ 
		}
	},
}

npcMapRebelHangar =
{
	{
		spawnData = { planetName = "rori", npcTemplate = "major_eston", x = 3655.7, z = 96, y = -6472.6, direction = 90, cellID = 0, position = STAND },
		npcNumber = 1,
		stfFile = "@static_npc/rori/major_eston",
		missions = major_eston_missions
	},
	
}

RebelHangar = ThemeParkLogic:new {
	numberOfActs = 1,
	npcMap = npcMapRebelHangar,
	className = "RebelHangar",
	screenPlayState = "rebel_hangar_quest",
	--faction = FACTIONREBEL,
	distance = 400
}

registerScreenPlay("RebelHangar", true)

rebel_hangar_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = RebelHangar
}
rebel_hangar_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = RebelHangar
}



















