estonConvoTemplate = ConvoTemplate:new {
	initialScreen = "",
	templateType = "Lua",
	luaClassHandler = "rebel_hanger_convo_handler",
	screens = {}
}


npc_1_1 = ConvoScreen:new {
	id = "npc_1_1",
	leftDialog = "",
	customDialogText = "Hi, you wanna go and do something for me? It'll be fun.",
	stopConversation = "false",
	options = {
		{"What's in it for me", "npc_2_1"},
		{"Yes, I'll do it.", "npc_work_1"},
		{"No thank you.", "npc_reset"},
	}
}
estonConvoTemplate:addScreen(npc_1_1);

npc_2_1 = ConvoScreen:new {
	id = "npc_2_1",
	leftDialog = "",
	customDialogText = "Say some more about the mission and maybe say you'll make it worth their while.",
	stopConversation = "false",
	options = {
		{"What else can you tell me", "npc_3_1"},
		{"Yes, I'll do it.", "npc_work_1"},
		{"No thank you.", "npc_reset"},
	}
}
estonConvoTemplate:addScreen(npc_2_1);

npc_3_1 = ConvoScreen:new {
	id = "npc_3_1",
	leftDialog = "",
	customDialogText = "Put more info about the mission here and maybe name the reward.",
	stopConversation = "false",
	options = {
		{"Yes, I'll do it.", "npc_work_1"},
		{"No thank you.", "npc_reset"},
	}
}
estonConvoTemplate:addScreen(npc_3_1);

npc_reset = ConvoScreen:new {
	id = "npc_reset",
	leftDialog = "",
	customDialogText = "That's a real shame, I'd heard good things about you!",
	stopConversation = "true",
	options = {	}
}
estonConvoTemplate:addScreen(npc_reset);

npc_work_1 = ConvoScreen:new {
	id = "npc_work_1",
	leftDialog = "",
	customDialogText = "Good, off you go then.",
	stopConversation = "true",
	options = {	}
}
estonConvoTemplate:addScreen(npc_work_1);

addConversationTemplate("estonConvoTemplate", estonConvoTemplate);