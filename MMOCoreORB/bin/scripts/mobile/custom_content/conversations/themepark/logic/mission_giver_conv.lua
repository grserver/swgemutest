function createMissionGiverConvoTemplate(templateName, convoHandler)
	mission_giver_convotemplate = ConvoTemplate:new {
		initialScreen = "init",
		templateType = "Lua",
		luaClassHandler = convoHandler,
		screens = {}
	}

	mission_giver_init = ConvoScreen:new {
		id = "init",
		leftDialog = "",
		stopConversation = "false",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_init);

	mission_giver_failure = ConvoScreen:new {
		id = "failure",
		leftDialog = "",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_failure);

	mission_giver_no_faction = ConvoScreen:new {
		id = "no_faction",
		leftDialog = "",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_no_faction);

	mission_giver_cant_work = ConvoScreen:new {
		id = "cant_work",
		leftDialog = ":cant_work",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_cant_work);

	mission_giver_cantwork = ConvoScreen:new {
		id = "cantwork",
		leftDialog = ":cantwork",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_cantwork);

	mission_giver_invfull = ConvoScreen:new {
		id = "inv_full",
		leftDialog = "",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_invfull);

	mission_giver_too_weak = ConvoScreen:new {
		id = "too_weak",
		leftDialog = "",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_too_weak);

	mission_giver_next = ConvoScreen:new {
		id = "next",
		leftDialog = ":next",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_next);

	mission_giver_notyet = ConvoScreen:new {
		id = "notyet",
		leftDialog = ":notyet",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_notyet);

	mission_giver_notit_n = ConvoScreen:new {
		id = "notit_n",
		leftDialog = ":notit_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_notit_n);

	mission_giver_npc_1_n = ConvoScreen:new {
		id = "npc_1_n",
		leftDialog = ":npc_1_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" },
			{ ":player_3_1", "npc_4_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_1_n);

	mission_giver_accept = ConvoScreen:new {
		id = "accept",
		leftDialog = "",
		stopConversation = "false",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_accept);

	mission_giver_npc_2_n = ConvoScreen:new {
		id = "npc_2_n",
		leftDialog = ":npc_2_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_2_n);

	mission_giver_npc_noloc_n = ConvoScreen:new {
		id = "npc_noloc_n",
		leftDialog = ":npc_noloc_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_noloc_n);

	mission_giver_npc_3_n = ConvoScreen:new {
		id = "npc_3_n",
		leftDialog = ":npc_3_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_3_n);

	mission_giver_npc_4_n = ConvoScreen:new {
		id = "npc_4_n",
		leftDialog = ":npc_4_1",
		stopConversation = "false",
		options = {
			{ ":player_1_1", "accept" },
			{ ":player_2_1", "npc_3_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_4_n);

	mission_giver_status = ConvoScreen:new {
		id = "status",
		leftDialog = "",
		stopConversation = "false",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_status);

	mission_giver_npc_work_n = ConvoScreen:new {
		id = "npc_work_n",
		leftDialog = ":npc_work_1",
		stopConversation = "false",
		options = {
			{ ":player_reset_1", "npc_reset_n" },
			{ ":player_sorry_1", "npc_backtowork_n" }
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_work_n);

	mission_giver_npc_reset_n = ConvoScreen:new {
		id = "npc_reset_n",
		leftDialog = ":npc_reset_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_reset_n);

	mission_giver_npc_reset = ConvoScreen:new {
		id = "npc_reset",
		leftDialog = ":npc_reset",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_reset);

	mission_giver_npc_backtowork_n = ConvoScreen:new {
		id = "npc_backtowork_n",
		leftDialog = ":npc_backtowork_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_backtowork_n);

	mission_giver_npc_backtowork = ConvoScreen:new {
		id = "npc_backtowork",
		leftDialog = ":npc_backtowork",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_backtowork);

	mission_giver_npc_reward_n = ConvoScreen:new {
		id = "npc_reward_n",
		leftDialog = ":npc_reward_1",
		stopConversation = "true",
		options = {
		}
	}

	mission_giver_convotemplate:addScreen(mission_giver_npc_reward_n);

	addConversationTemplate(templateName, mission_giver_convotemplate);
end

--Factional
createMissionGiverConvoTemplate("rebel_hangar_mission_giver_convotemplate", "rebel_hangar_mission_giver_conv_handler")

-- Themeparks

