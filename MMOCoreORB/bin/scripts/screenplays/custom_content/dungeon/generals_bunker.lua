GeneralsBunkerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "GeneralsBunkerScreenPlay",

registerScreenPlay("GeneralsBunkerScreenPlay", true)

}

function GeneralsBunkerScreenPlay:start()
	if (isZoneEnabled("lok")) then
                self:spawnMobiles()
				self:spawnSceneObjects()
                --self:initializeLootContainers()
        end
end

function GeneralsBunkerScreenPlay:spawnSceneObjects()

	--Buildings & Props
	spawnSceneObject("lok", "object/static/structure/general/landing_pad_transport.iff", 3757, 12.1, -3037, 0, 0.99, 0, 0.16, 0 )
	spawnSceneObject("lok", "object/tangible/event_perk/lambda_shuttle.iff", 3757, 12.1, -3037, 0, 0.81, 0, -0.58, 0 )
	spawnSceneObject("lok", "object/static/installation/mockup_power_generator_fusion_style_1.iff", 3763, 12.1, -3083, 0, 0.99, 0, 0.16, 0 )
	spawnSceneObject("lok", "object/static/installation/mockup_power_generator_fusion_style_1.iff", 3769, 12.1, -3084, 0, 0.99, 0, 0.16, 0 )
	spawnSceneObject("lok", "object/static/structure/tatooine/antenna_tatt_style_1.iff", 3741, 11.9, -3084, 0, 0.99, 0, 0.16, 0 )
	spawnSceneObject("lok", "object/building/military/military_outpost_guard_tower_1.iff", 3738, 11.9, -3107, 0, 0.81, 0, -0.58, 0 )
	
end

function GeneralsBunkerScreenPlay:spawnMobiles()

--Outside

	spawnMobile("lok", "nk_droideka", 200, 3740.4, 12.0, -3079.2, -70, 0)
	spawnMobile("lok", "nk_droideka", 200, 3742.6, 12.1, -3072.9, -70, 0)
	




--Inside

	spawnMobile("lok", "nk_droideka", 200,  -10.6, -17.0, 75.8, 179, 9686007)
	spawnMobile("lok", "nk_s_battle_droid_01", 200, 7.7, -9.0, 28.9, 176, 9686003)
	spawnMobile("lok", "nk_s_battle_droid_01", 200, -1.0, -9.0, 29.0, 176, 9686003)
	spawnMobile("lok", "nk_battle_droid_01", 200, -10.5, -9.0, 34.7, 179, 9686007)
	spawnMobile("lok", "nk_battle_droid_01", 200, -5.5, -17.0, 63.1, -89, 9686007)
	spawnMobile("lok", "nk_battle_droid_01", 200, -38.5, -19.0, 82.6, 178, 9686008)
	spawnMobile("lok", "nk_battle_droid_02", 200, -42.9, -23.0, 103.1, 85, 9686008)
	spawnMobile("lok", "nk_battle_droid_03", 200, 15.0, -23.0, 103.7, -91, 9686008)
	spawnMobile("lok", "nk_battle_droid_03", 200, 9.5, -19.0, 81.6, 177, 9686008)
	spawnMobile("lok", "nk_s_battle_droid_02", 200, 37.2, -21.0, 133.3, 178, 9686009)
	spawnMobile("lok", "nk_s_battle_droid_03", 200, 37.5, -21.0, 153.1, 179, 9686009)
	spawnMobile("lok", "nk_necrosis", 200, 2.4, -23.0, 284.0, -179, 9686015)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_01_m", 200, -33.2, -9.0, 27.6, 90, 9686004)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_02_m", 200, 23.6, -17.0, 63.3, -90, 9686006)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_03_m", 200, 9.2, -23.0, 125.1, 178, 9686008)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_04_m", 200, -38.4, -23.0, 121.7, 179, 9686008)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_01_m", 200, -37.8, -23.0, 158.3, 179, 9686008)
	spawnMobile("lok", "nk_mega_droid", 200, -38.1, -23.0, 199.0, 179, 9686008)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_05_m", 200, -11.2, -23.0, 198.8, 177, 9686008)
	spawnMobile("lok", "nk_mega_droid", 200, 9.5, -23.0, 199.8, 175, 9686008)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_03_m", 200, 9.8, -23.0, 153.7, 178, 9686008)
	spawnMobile("lok", "leia_organa", 200, -87.8, -23.0, 232.9, 174, 9686012)
	spawnMobile("lok", "commoner", 200, -9.0, -23.0, 143.5, -176, 9686008)
	spawnMobile("lok", "commoner", 200, -3.7, -23.0, 136.2, -178, 9686008)
	spawnMobile("lok", "commoner", 200, -11.7, -23.0, 131.0, 87, 9686008)
	spawnMobile("lok", "commoner", 200, -25.0, -23.0, 144.9, -174, 9686008)
	spawnMobile("lok", "commoner", 200, -18.2, -23.0, 136.4, 178, 9686008)
	spawnMobile("lok", "commoner", 200, -18.7, -23.0, 151.1, 93, 9686008)
	spawnMobile("lok", "commoner", 200, -18.7, -23.0, 163.0, -1, 9686008)
	spawnMobile("lok", "commoner", 200, -26.7, -23.0, 171.4, -92, 9686008)
	spawnMobile("lok", "commoner", 200, -5.4, -23.0, 165.8, 179, 9686008)
	spawnMobile("lok", "commoner", 200, -10.2, -23.0, 176.7, 2, 9686008)
	spawnMobile("lok", "nk_droideka", 200, 9.2, -23.0, 220.3, -175, 9686013)
	spawnMobile("lok", "nk_droideka", 200, -2.4, -23.0, 247.4, -177, 9686016)
	spawnMobile("lok", "nk_droideka", 200, 10.8, -23.0, 275.9, -177, 9686015)
	spawnMobile("lok", "nk_droideka", 200, -4.1, -23.0, 269.1, 86, 9686015)
	spawnMobile("lok", "nk_droideka", 200, 29.4, -23.0, 253.0, 177, 9686016)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_03_m", 200, 43.6, -23.0, 280.5, -179, 9686016)
	spawnMobile("lok", "nk_droideka", 200, 23.6, -23.0, 219.4, -90, 9686011)
	spawnMobile("lok", "commoner", 200, 37.8, -23.0, 206.4, -1, 9686011)
	spawnMobile("lok", "commoner", 200, 44.8, -23.0, 206.2, 0, 9686011)
	spawnMobile("lok", "commoner", 200, 51.5, -23.0, 233.6, 178, 9686011)
	spawnMobile("lok", "nk_droideka", 200, -53.1, -23.0, 219.3, 89, 9686012)
	spawnMobile("lok", "commoner", 200, -73.6, -23.0, 205.1, -1, 9686012)
	spawnMobile("lok", "commoner", 200, -80.5, -23.0, 232.8, -178, 9686012)
	spawnMobile("lok", "nk_droideka", 200, -89.2, -21.0, 223.3, -177, 9686012)
	spawnMobile("lok", "nk_droideka", 200, -85.8, -21.0, 223.5, -177, 9686012)
	--spawnMobile("lok", "outbreak_undead_deathtrooper_03_m", 200, -73.0, -21.0, 219.0, 89, 9686012)
	spawnMobile("lok", "palpatine_hologram", 200, 70.7, -23.0, 219.1, -90, 9686011)
	


end
