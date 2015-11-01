major_eston_missions =
{
	{
		missionType = "confiscate",
		primarySpawns =
		{
			{ npcTemplate = "gruthashaal", planetName = "rori", npcName = "Gruthashaal" }
		},
		secondarySpawns =
		{
		},
		itemSpawns =
		{
			{ itemTemplate = "object/tangible/mission/quest_item/singular_nak_q1_needed.iff", itemName = "" }
		},
		rewards =
		{
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



















