"infra_menu_chapters.res"
{
	"background1"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background01"
		"alpha"				"0"
	}

	"background2"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background02"
		"alpha"				"0"
	}

	"background3"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background03"
		"alpha"				"0"
	}

	"background4"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background04"
		"alpha"				"0"
	}

	"background5"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background05"
		"alpha"				"0"
	}

	"background6"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background06"
		"alpha"				"0"
	}

	"background7"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background07"
		"alpha"				"0"
	}

	"background8"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background08"
		"alpha"				"0"
	}

	"background9"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background09"
		"alpha"				"0"
	}

	"background10"
	{
		"ControlName"		"MaterialImage"
		"xpos"				"0"
		"ypos"				"-60"
		"zpos"				"-1"
		"wide"				"720"
		"tall"				"720"
		"material"			"vgui/backgrounds/background10"
		"alpha"				"0"
	}

	"list"
	{
		"ControlName"		"CINFRAMenuItemList"
		"xpos"				"50" [$INFRA_NOT_PLAYTEST_MODE]
		"xpos"				"60" [$INFRA_PLAYTEST_MODE]
		"ypos"				"40"
		"zpos"				"0"
		"wide"				"600" [$INFRA_NOT_PLAYTEST_MODE]
		"wide"				"600" [$INFRA_PLAYTEST_MODE]
		"tall"				"480"

		"multicolumn"		"1"

		// INFRA: Part 1

		"chapter_1_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_1_subtitle"
			"command"			"map infra_c1_m1_office"
			"listposition"		"0"
			"background"		"1"
			"chapter"			"1"
			"part"				"1"
			"visibleinplaytest"	"0"
		}

		"chapter_2_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_2_subtitle"
			"command"			"map infra_c2_m1_reserve1"
			"listposition"		"1"
			"background"		"2"
			"chapter"			"2"
			"part"				"1"
			"visibleinplaytest"	"0"
		}

		"chapter_3_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_3_subtitle"
			"command"			"map infra_c3_m1_tunnel"
			"listposition"		"2"
			"background"		"3"
			"chapter"			"3"
			"part"				"1"
			"visibleinplaytest"	"0"
		}

		"chapter_4_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_4_subtitle"
			"command"			"map infra_c4_m2_furnace"
			"listposition"		"3"
			"background"		"4"
			"chapter"			"4"
			"part"				"1"
			"visibleinplaytest"	"0"
		}

		"chapter_5_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_5_subtitle"
			"command"			"map infra_c5_m1_watertreatment"
			"listposition"		"4"
			"background"		"5"
			"chapter"			"5"
			"part"				"1"
			"visibleinplaytest"	"0"
		}

		// INFRA: Part 2

		"chapter_6_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_6_subtitle"
			"command"			"map infra_c6_m1_sewer3"
			"listposition"		"6"
			"background"		"6"
			"chapter"			"6"
			"visibleinplaytest"	"0"

			// Unlocked for everyone who completed INFRA: Part 1!

			"part"				"1"
		}

		"chapter_7_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_7_subtitle"
			"command"			"map infra_c7_m1_servicetunnel"
			"listposition"		"7"
			"background"		"7"
			"chapter"			"7"
			"part"				"2"
			"visibleinplaytest"	"0"
		}

		// INFRA: Part 3

		"chapter_8_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_8_subtitle"
			"command"			"map infra_c8_m1_powerstation2"
			"listposition"		"8"
			"background"		"8"
			"chapter"			"8"
			"visibleinplaytest"	"0"

			// Unlocked for everyone who completed INFRA: Part 2!

			"part"				"2"
		}

		"chapter_9_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_9_subtitle"
			"command"			"map infra_c9_m1_rails"
			"listposition"		"9"
			"background"		"9"
			"chapter"			"9"
			"part"				"3"
			"visibleinplaytest"	"0"
		}

		"chapter_10_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"#infra_chapter_10_subtitle"
			"command"			"map infra_c10_m1_npp"
			"listposition"		"10"
			"background"		"10"
			"chapter"			"10"
			"part"				"3"
			"visibleinplaytest"	"0"
		}

		// Playtest

		"office_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"office"
			"command"			"map infra_c1_m1_office"
			"listposition"		"9"
			"background"		"1"
			"visibleinplaytest"	"1"
		}

		"reserve1_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"reserve1"
			"command"			"map infra_c2_m1_reserve1"
			"listposition"		"10"
			"background"		"2"
			"visibleinplaytest"	"1"
		}

		"reserve2_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"reserve2"
			"command"			"map infra_c2_m2_reserve2"
			"listposition"		"11"
			"background"		"2"
			"visibleinplaytest"	"1"
		}

		"reserve3_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"reserve3"
			"command"			"map infra_c2_m3_reserve3"
			"listposition"		"12"
			"background"		"2"
			"visibleinplaytest"	"1"
		}

		"tunnel1_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"tunnel1"
			"command"			"map infra_c3_m1_tunnel"
			"listposition"		"13"
			"background"		"3"
			"visibleinplaytest"	"1"
		}

		"tunnel2_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"tunnel2"
			"command"			"map infra_c3_m2_tunnel2"
			"listposition"		"14"
			"background"		"3"
			"visibleinplaytest"	"1"
		}

		"tunnel3_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"tunnel3"
			"command"			"map infra_c3_m3_tunnel3"
			"listposition"		"15"
			"background"		"3"
			"visibleinplaytest"	"1"
		}

		"tunnel4_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"tunnel4"
			"command"			"map infra_c3_m4_tunnel4"
			"listposition"		"16"
			"background"		"3"
			"visibleinplaytest"	"1"
		}

		"furnace_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"furnace"
			"command"			"map infra_c4_m2_furnace"
			"listposition"		"17"
			"background"		"4"
			"visibleinplaytest"	"1"
		}

		"tower_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"tower"
			"command"			"map infra_c4_m3_tower"
			"listposition"		"18"
			"background"		"4"
			"visibleinplaytest"	"1"
		}

		"watertreatment_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"watertreatment"
			"command"			"map infra_c5_m1_watertreatment"
			"listposition"		"19"
			"background"		"5"
			"visibleinplaytest"	"1"
		}

		"sewer_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"sewer1"
			"command"			"map infra_c5_m2_sewer"
			"listposition"		"20"
			"background"		"5"
			"visibleinplaytest"	"1"
		}

		"sewer2_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"sewer2"
			"command"			"map infra_c5_m2b_sewer2"
			"listposition"		"21"
			"background"		"5"
			"visibleinplaytest"	"1"
		}

		"sewer3_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"sewer3"
			"command"			"map infra_c6_m1_sewer3"
			"listposition"		"22"
			"background"		"6"
			"visibleinplaytest"	"1"
		}

		"metro_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"metro"
			"command"			"map infra_c6_m2_metro"
			"listposition"		"23"
			"background"		"6"
			"visibleinplaytest"	"1"
		}

		"metroride_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"metroride"
			"command"			"map infra_c6_m3_metroride"
			"listposition"		"24"
			"background"		"6"
			"visibleinplaytest"	"1"
		}

		"waterplant_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"waterplant"
			"command"			"map infra_c6_m4_waterplant"
			"listposition"		"25"
			"background"		"6"
			"visibleinplaytest"	"1"
		}

		"minitrain_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"minitrain"
			"command"			"map infra_c6_m5_minitrain"
			"listposition"		"26"
			"background"		"6"
			"visibleinplaytest"	"1"
		}

		"central_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"central"
			"command"			"map infra_c6_m6_central"
			"listposition"		"27"
			"background"		"6"
			"visibleinplaytest"	"1"
		}

		"servicetunnel_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"servicetunnel"
			"command"			"map infra_c7_m1_servicetunnel"
			"listposition"		"28"
			"background"		"7"
			"visibleinplaytest"	"1"
		}

		"skyscraper_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"skyscraper"
			"command"			"map infra_c7_m1b_skyscraper"
			"listposition"		"29"
			"background"		"7"
			"visibleinplaytest"	"1"
		}

		"bunker_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"bunker"
			"command"			"map infra_c7_m2_bunker"
			"listposition"		"30"
			"background"		"7"
			"visibleinplaytest"	"1"
		}

		"stormdrain_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"stormdrain"
			"command"			"map infra_c7_m3_stormdrain"
			"listposition"		"31"
			"background"		"7"
			"visibleinplaytest"	"1"
		}

		"cistern_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"cistern"
			"command"			"map infra_c7_m4_cistern"
			"listposition"		"32"
			"background"		"7"
			"visibleinplaytest"	"1"
		}

		"powerstation_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"powerstation"
			"command"			"map infra_c7_m5_powerstation"
			"listposition"		"33"
			"background"		"7"
			"visibleinplaytest"	"1"
		}

		"powerstation2_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"powerstation2"
			"command"			"map infra_c8_m1_powerstation2"
			"listposition"		"34"
			"background"		"8"
			"visibleinplaytest"	"1"
		}

		"isle1_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"isle1"
			"command"			"map infra_c8_m3_isle1"
			"listposition"		"35"
			"background"		"8"
			"visibleinplaytest"	"1"
		}

		"isle2_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"isle2"
			"command"			"map infra_c8_m4_isle2"
			"listposition"		"36"
			"background"		"8"
			"visibleinplaytest"	"1"
		}

		"isle3_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"isle3"
			"command"			"map infra_c8_m5_isle3"
			"listposition"		"37"
			"background"		"8"
			"visibleinplaytest"	"1"
		}

		"business_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"business"
			"command"			"map infra_c8_m6_business"
			"listposition"		"38"
			"background"		"8"
			"visibleinplaytest"	"1"
		}

		"business2_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"business2"
			"command"			"map infra_c8_m7_business2"
			"listposition"		"39"
			"background"		"8"
			"visibleinplaytest"	"1"
		}
		
		"officeblackout_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"office blackout"
			"command"			"map infra_c8_m8_officeblackout"
			"listposition"		"40"
			"background"		"8"
			"visibleinplaytest"	"1"
		}

		"rails_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"rails"
			"command"			"map infra_c9_m1_rails"
			"listposition"		"41"
			"background"		"9"
			"visibleinplaytest"	"1"
		}

		"tenements_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"tenements"
			"command"			"map infra_c9_m2_tenements"
			"listposition"		"42"
			"background"		"9"
			"visibleinplaytest"	"1"
		}

		"river_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"river"
			"command"			"map infra_c9_m3_river"
			"listposition"		"43"
			"background"		"9"
			"visibleinplaytest"	"1"
		}

		"villa_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"villa"
			"command"			"map infra_c9_m4_villa"
			"listposition"		"44"
			"background"		"9"
			"visibleinplaytest"	"1"
		}

		"field_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"field"
			"command"			"map infra_c9_m5_field"
			"listposition"		"45"
			"background"		"9"
			"visibleinplaytest"	"1"
		}

		"npp_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"NPP"
			"command"			"map infra_c10_m1_npp"
			"listposition"		"46"
			"background"		"10"
			"visibleinplaytest"	"1"
		}		
		
		"reactor_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"Reactor"
			"command"			"map infra_c10_m2_reactor"
			"listposition"		"47"
			"background"		"10"
			"visibleinplaytest"	"1"
		}	
		
		"roof_button"
		{
			"ControlName"		"CINFRAMenuItemChapter"
			"labelText"			"Roof"
			"command"			"map infra_c10_m3_roof"
			"listposition"		"48"
			"background"		"10"
			"visibleinplaytest"	"1"
		}	
		
		"back_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#GameUI_Back"
			"command"			"engine ent_fire menu_main_relay trigger"
			"listposition"		"49"
		}
	}
}
