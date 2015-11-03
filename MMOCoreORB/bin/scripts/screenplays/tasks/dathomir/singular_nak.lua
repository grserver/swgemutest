singular_nak_missions =
{
	{
		missionType = "confiscate",
		primarySpawns =
		{
			{ npcTemplate = "gruthashaal", planetName = "dathomir", npcName = "Gruthashaal" }
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
			{ npcTemplate = "trujhazii", planetName = "dathomir", npcName = "Trujhazii" } 
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
			{ npcTemplate = "nightsister_stalker_quest", planetName = "dathomir", npcName = "Nightsister Stalker" } --SORT OUT BETTER NAME
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

npcMapSingularNak =
{
	{
		spawnData = { planetName = "dathomir", npcTemplate = "singular_nak", x = 571.41, z = 6, y = 3091.62, direction = 151, cellID = 0, position = STAND },
		npcNumber = 1,
		stfFile = "@static_npc/rori/major_eston",
		missions = singular_nak_missions
	},
	
}

SingularNak = ThemeParkLogic:new {
	numberOfActs = 1,
	npcMap = npcMapSingularNak,
	className = "SingularNak",
	screenPlayState = "singular_nak_quest",
	distance = 400
}

registerScreenPlay("SingularNak", true)

singular_nak_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = SingularNak
}
singular_nak_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = SingularNak
}
