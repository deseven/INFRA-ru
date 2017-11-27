"infra_menu_chapters_load_game.res"
{
	"load_game_menu"
	{
		"ControlName"		"CINFRALoadGameMenu"
		"xpos"				"0"
		"ypos"				"0"
		"zpos"				"0"
		"wide"				"700"
		"tall"				"600"

		"autosave_slot_background"
		{
			"ControlName"		"CTGAImagePanel"
			"xpos"				"0"
			"ypos"				"-60"
			"zpos"				"0"
			"wide"				"720"
			"tall"				"720"
			"alpha"				"0"
			"scaleImage"		"1"
		}

		"previous_autosave_slot_background"
		{
			"ControlName"		"CTGAImagePanel"
			"xpos"				"0"
			"ypos"				"-60"
			"zpos"				"0"
			"wide"				"720"
			"tall"				"720"
			"alpha"				"0"
			"scaleImage"		"1"
		}

		"quicksave_slot_background"
		{
			"ControlName"		"CTGAImagePanel"
			"xpos"				"0"
			"ypos"				"-60"
			"zpos"				"0"
			"wide"				"720"
			"tall"				"720"
			"alpha"				"0"
			"scaleImage"		"1"
		}

		"save_slot_1_background"
		{
			"ControlName"		"CTGAImagePanel"
			"xpos"				"0"
			"ypos"				"-60"
			"zpos"				"0"
			"wide"				"720"
			"tall"				"720"
			"alpha"				"0"
			"scaleImage"		"1"
		}

		"save_slot_2_background"
		{
			"ControlName"		"CTGAImagePanel"
			"xpos"				"0"
			"ypos"				"-60"
			"zpos"				"0"
			"wide"				"720"
			"tall"				"720"
			"alpha"				"0"
			"scaleImage"		"1"
		}

		"save_slot_3_background"
		{
			"ControlName"		"CTGAImagePanel"
			"xpos"				"0"
			"ypos"				"-60"
			"zpos"				"0"
			"wide"				"720"
			"tall"				"720"
			"alpha"				"0"
			"scaleImage"		"1"
		}

		"save_slot_4_background"
		{
			"ControlName"		"CTGAImagePanel"
			"xpos"				"0"
			"ypos"				"-60"
			"zpos"				"0"
			"wide"				"720"
			"tall"				"720"
			"alpha"				"0"
			"scaleImage"		"1"
		}

		"list"
		{
			"ControlName"		"CINFRAMenuItemList"
			"xpos"				"50"
			"ypos"				"40"
			"zpos"				"1"
			"wide"				"600"
			"tall"				"320"

			"autosave_slot_button"
			{
				"ControlName"			"CINFRAMenuItemSave"
				"labelText"				"#infra_menu_autosave"
				"command"				"load autosave"
				"listposition"			"0"

				"disableifincompatible"	"0"
				"disableifnonexistent"	"1"
				"save"					"autosave"
			}

			"previous_autosave_slot_button"
			{
				"ControlName"			"CINFRAMenuItemSave"
				"labelText"				"#infra_menu_previous_autosave"
				"command"				"load autosave01"
				"listposition"			"1"

				"disableifincompatible"	"0"
				"disableifnonexistent"	"1"
				"save"					"autosave01"
			}

			"quicksave_slot_button"
			{
				"ControlName"			"CINFRAMenuItemSave"
				"labelText"				"#infra_menu_quicksave"
				"command"				"load quick"
				"listposition"			"2"

				"disableifincompatible"	"0"
				"disableifnonexistent"	"1"
				"save"					"quick"
			}

			"save_slot_1_button"
			{
				"ControlName"			"CINFRAMenuItemSave"
				"labelText"				"#infra_menu_empty_save_slot_1"
				"command"				"load slot_1"
				"listposition"			"3"

				"disableifincompatible"	"0"
				"disableifnonexistent"	"1"
				"save"					"slot_1"
			}

			"save_slot_2_button"
			{
				"ControlName"			"CINFRAMenuItemSave"
				"labelText"				"#infra_menu_empty_save_slot_2"
				"command"				"load slot_2"
				"listposition"			"4"

				"disableifincompatible"	"0"
				"disableifnonexistent"	"1"
				"save"					"slot_2"
			}

			"save_slot_3_button"
			{
				"ControlName"			"CINFRAMenuItemSave"
				"labelText"				"#infra_menu_empty_save_slot_3"
				"command"				"load slot_3"
				"listposition"			"5"

				"disableifincompatible"	"0"
				"disableifnonexistent"	"1"
				"save"					"slot_3"
			}

			"save_slot_4_button"
			{
				"ControlName"			"CINFRAMenuItemSave"
				"labelText"				"#infra_menu_empty_save_slot_4"
				"command"				"load slot_4"
				"listposition"			"6"

				"disableifincompatible"	"0"
				"disableifnonexistent"	"1"
				"save"					"slot_4"
			}

			"back_button"
			{
				"ControlName"			"CINFRAMenuItemButton"
				"labelText"				"#GameUI_Back"
				"command"				"engine ent_fire menu_main_relay trigger"
				"listposition"			"7"
			}
		}
	}
}
