MyScreenplay = ScreenPlay:new { 
	numberOfActs = 1, 
	questString = "samplequest",
	--activePlayerName = "dookie",  -- player that started the combat with boba
	states = {
		accepted = 2,
		fightingboba = 4,
		bobadead = 8,
		complete = 16,
		
	}, 
	questdata = Object:new {
		
		activePlayerName = "initial",
	}
	
}

registerScreenPlay("MyScreenplay", true)

function MyScreenplay:start() 
	
	printf("myscreenplay.screenplaystart\n")
	print("activePlayer is " .. self.questdata.activePlayerName)
	local pHan = spawnMobile("naboo", "han_solo_quest", 1, -4881, 6.0, 4150, 35, 0 )
	local pBoba = spawnMobile("naboo", "boba_fett_samplequest", 1, 31.4, .1, -7.6, -11, 90)
	if ( ptest ~= nil ) then
		print("created the testmobile properly")
	end
	
	if ( npctokill4 ~= nill ) then
		createObserver(KILLEDCREATURE, "MyScreenplay", "KilledCreature", pBoba)
		createObserver(DEFENDERADDED, "MyScreenplay", "DefenderAdded", pBoba)
		createObserver(DEFENDERDROPPED, "MyScreenplay", "DefenderDropped", pBoba)
	end
	
end

function MyScreenplay:getActivePlayerName()

	return self.questdata.activePlayerName
end
function MyScreenplay:setActivePlayerName(playerName)

	print("Changing playername from " .. self.questdata.activePlayerName .. " to " .. playerName)
	self.questdata.activePlayerName = playerName
	
end
function MyScreenplay:KilledCreature(pMobile, pPlayer)

	print("Killed creature fired")
	
end

function MyScreenplay:DefenderAdded(pMobile, pPlayer)
	
	local player = LuaCreatureObject(pPlayer)
	local pName = player:getName()
	print("Defender added fired for " .. pName)
	
end

function MyScreenplay:DefenderDropped(pMobile, pPlayer)
		
		local player = LuaCreatureObject(pPlayer)
		local pName = player:getName()
		
		local boba = LuaCreatureObject(pMobile)
		if ( boba ~= nil ) then
			-- check to see if boba is dead
			
			local bobaHealth = boba:getHAM(0)
			local bobaAction = boba:getHAM(3)
			local bobaMind = boba:getHAM(6)
			
			print("BobaHAM is " .. bobaHealth .. " / " .. bobaAction .. " / " .. bobaMind)
			if ( bobaHealth < 0 or bobaAction < 0 or bobaMind < 0 ) then
			
			
				print("he is dead")
				-- check to see if the defender was on the quest and was in a state of boba_combat
				local questState = player:getScreenPlayState(MyScreenplay.questString)
				print("quest state of this player is " .. questState)
				
				if ( player:hasScreenPlayState(MyScreenplay.states.fightingboba) ) then
					print("setting the quest status to bobadead for " .. pName )
					player:setScreenPlayState(MyScreenplay.states.bobadead, MyScreenplay.questString)
					
				end
			else
				if ( player:hasScreenPlayState(MyScreenplay.states.fightingboba) ) then
					print("boab isn't dead.  remove fightingboba playerstate")
					player:removeScreenPlayState(MyScreenplay.states.fightingboba, MyScreenplay.questString)
					
				end
			end
			
		end
		
		print("Defender Dropped fired for " .. pName)
end






-- Sample quest conversation handlers




sample_quest_convo_handler = Object:new {
	
	
 }





function sample_quest_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
	
	print("------------------------------\n")
	
	print("getNextConversation() called")
	local creature = LuaCreatureObject(conversingPlayer)
	
	local convosession = creature:getConversationSession()
	
	
	local lastConversationScreen = nil
	
	
	print("getNextConversation() called")
	
	local conversation = LuaConversationTemplate(conversationTemplate)
	
	local nextConversationScreen 
	
	
	if ( conversation ~= nil ) then
		
		-- checking to see if we have a next screen
		if ( convosession ~= nil ) then
			 
			 local session = LuaConversationSession(convosession)
			
			 if ( session ~= nil ) then
			 	print("casting getlastconversationsreen()")
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
			
	 
		end
		
		
		
		if ( lastConversationScreen == nil ) then
			print("Last conversation is null.  let's try to get the first screen")
			
			local creature = LuaCreatureObject(conversingPlayer)
			local hasAccepted = creature:hasScreenPlayState(MyScreenplay.states.accepted, MyScreenplay.questString)
			print("hasAccepted() is " .. hasAccepted)   
			
			if ( hasAccepted == 0 ) then
			
				print("no screenplaystate so must not have accepted it yet")
				--nextConversationScreen = conversation:getInitialScreen()
				nextConversationScreen = conversation:getScreen("first_screen")
				--self:addQuestOptions(nextConversationScreen)
				
			else
						
				print("Quest has already been accepted")
				print("isAccepted is " .. creature:hasScreenPlayState(MyScreenplay.states.accepted, MyScreenplay.questString))
				print("isComplete is " .. creature:hasScreenPlayState(MyScreenplay.states.complete, MyScreenplay.questString))
				print("isBobaDead is " .. creature:hasScreenPlayState(MyScreenplay.states.bobadead, MyScreenplay.questString))
				
				-- if the quest is already completed
				if ( creature:hasScreenPlayState(MyScreenplay.states.complete, MyScreenplay.questString) == 1 ) then 
					print("already completed")			
					nextConversationScreen = conversation:getScreen("completed")
				
				elseif  ( creature:hasScreenPlayState(MyScreenplay.states.bobadead, MyScreenplay.questString) == 1 ) then
					nextConversationScreen = conversation:getScreen("thank_you")
					creature:setScreenPlayState(MyScreenplay.states.complete, MyScreenplay.questString)
					print("trying to give credits")
					creature:addCashCredits(10000, true)
				else
					print("should say .. go kill him why are you back already")
					nextConversationScreen = conversation:getScreen("not_yet")
				end
			
		
			
				
			end
			
		
		else
			
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
		
			print("optionLink fromn the last screen is .. " .. optionLink)
		
			--local thiscreen = conversation:getScreen(optionLink)
			nextConversationScreen = conversation:getScreen(optionLink)
			
		end
		
	
	end
	
	print("returning screen")
		
	return nextConversationScreen
	
end


function sample_quest_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

	local screen = LuaConversationScreen(conversationScreen)
	
	local screenID = screen:getScreenID()
	
	print("screenID is " .. screenID	)

	local player = LuaCreatureObject(conversingPlayer)
	
	if ( screenID == "accept_quest" ) then
	
		print("accepting the qeust ")
		print("will set state to " .. MyScreenplay.states.accepted)
		print("settings state for samplequest")
		player:setScreenPlayState( MyScreenplay.states.accepted , MyScreenplay.questString)
	
	elseif ( screenID == "quest_status" ) then


		conversationScreen = screen:cloneScreen()
	
		local clonedConversation = LuaConversationScreen(conversationScreen)
	
		local thisState = player:getScreenPlayState(MyScreenplay.questString)
		
		if ( thisState ~= 0 ) then
			clonedConversation:setCustomDialogText("You are on stage " .. thisState .. " of this quest")
			
		else
			clonedConversation:setCustomDialogText("You are not yet on this quest")
		end
		
		

	elseif ( screenID == "quest_reset")  then

				
		print("removing state for test_quest")
		
		conversationScreen = screen:cloneScreen()
	
		local clonedConversation = LuaConversationScreen(conversationScreen)
	
		local thisState = player:getScreenPlayState(MyScreenplay.questString)
		
		if ( thisState ~= 0 ) then
		
			clonedConversation:setCustomDialogText("Resetting quest from state " .. thisState)	
			
			player:removeScreenPlayState(MyScreenplay.states.accepted,     MyScreenplay.questString)
			player:removeScreenPlayState(MyScreenplay.states.fightingboba, MyScreenplay.questString)
			player:removeScreenPlayState(MyScreenplay.states.bobadead,     MyScreenplay.questString)
			player:removeScreenPlayState(MyScreenplay.states.complete,     MyScreenplay.questString)
			player:removeScreenPlayState(MyScreenplay.questString)
			
			
			
		else
			clonedConversation:setCustomDialogText("YOu have not started or finished this quest yet.")
		end
	
	elseif ( screenID == "completed" ) then
		
			conversationScreen = screen:cloneScreen()
		
			local clonedConversation = LuaConversationScreen(conversationScreen)
				
			if (clonedConversation ~= nil) then
				self:addQuestOptions(clonedConversation)
				clonedConversation:setCustomDialogText("Thanks for the help with Boba.  Take care kid.")
			
			end
	end
	
	
	print("returning convosvreen")
	return conversationScreen
end


function sample_quest_convo_handler:addQuestOptions(convoScreen)
		convoScreen:addOption("STATUS", "quest_status")
		convoScreen:addOption("RESET QUEST", "quest_reset")
end




-- kill npc boba fett handler

sample_quest_boba_handler = Object:new {
	activePlayerName = "none",
 }

function sample_quest_boba_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
	
	print("------------------------------\n")
	
	print("getNextConversation() called")
	
	local creature = LuaCreatureObject(conversingPlayer)
	
	local convosession = creature:getConversationSession()
	
	
	local lastConversationScreen = nil
	
	
	print("getNextConversation() called")
	
	local conversation = LuaConversationTemplate(conversationTemplate)
	
	local nextConversationScreen 
	
	
	if ( conversation ~= nil ) then
		
		-- checking to see if we have a next screen
		if ( convosession ~= nil ) then
			 
			 local session = LuaConversationSession(convosession)
			
			 if ( session ~= nil ) then
				
			 	print("sessoin is good . casting getlastconversationsreen()")
			 	lastConversationScreen = session:getLastConversationScreen()
			 else
			 
			 	print("session was not good in getNextScreen")
			 end
			
	 
		end
		
		
		
		if ( lastConversationScreen == nil ) then
			print("Last conversation is null.  let's try to get the first screen")
		
			 	nextConversationScreen = conversation:getInitialScreen()
			
		else
			
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)

			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
		
			print("optionLink from the last screen is .. " .. optionLink)
					
			nextConversationScreen = conversation:getScreen(optionLink)
			
		end
		
	
	end
		
	return nextConversationScreen
	
end


function sample_quest_boba_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

		
	local screen = LuaConversationScreen(conversationScreen)
	
	local screenID = screen:getScreenID()
	
	print("screenID is " .. screenID)

	if ( screenID == "fight_boba" ) then
		print("starting combat")
		local boba = LuaCreatureObject(conversingNPC)
		
		boba:setPvpStatusBitmask(3)
		boba:engageCombat(conversingPlayer)
		print("combat started")	
		
		local player = LuaCreatureObject(conversingPlayer)
		print("setting state to " .. MyScreenplay.states.fightingboba)
		
		player:setScreenPlayState(MyScreenplay.states.fightingboba, MyScreenplay.questString)
		
	elseif ( screenID == "first_screen") then
	
		local creature = LuaCreatureObject(conversingPlayer)
		
		local questState = creature:getScreenPlayState(MyScreenplay.questString)
		
		local haskilled = creature:hasScreenPlayState( MyScreenplay.states.bobadead, MyScreenplay.questString)
		
	
		print("Quest stat is " .. questState)
		print("has killedboba is " .. haskilled)		
			local conversation = LuaConversationTemplate(conversationTemplate)
			
			 -- if player has not accepted the quest, give the go away message
			 if ( questState == 0 ) then
				 print("getting go away message")
			 	conversationScreen = conversation:getScreen("boba_go_away")
			 elseif ( haskilled == 1 ) then
			 	 print("already killed him.  tell him to go away")
			 	conversationScreen = conversation:getScreen("boba_go_away")
			end
	end
	
	return conversationScreen
end






-- ackbar conversatoin screen

sample_quest_template = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "sample_quest_convo_handler",
	screens = {}
}



sample_quest_first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "Help me please.  Boba Fett is out to get me.  Jabba has placed a bounty on my head.  I need someone to take him out.  Will you help?",
	stopConversation = "false",
	options = {
		{"YES", "help_yes"},
		{"NO", "help_no"}
		
	}
}

sample_quest_template:addScreen(sample_quest_first_screen);







addConversationTemplate("sample_quest_template", sample_quest_template);