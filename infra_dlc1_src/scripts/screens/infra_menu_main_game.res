#base "bases/infra_menu_main.res"

"infra_menu_main_game.res"
{
	"list"
	{
		"ControlName"		"CINFRAMenuItemList"
		"xpos"				"340"
		"ypos"				"270"
		"zpos"				"0"
		"wide"				"200"
		"tall"				"160"

		"continue_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#infra_menu_continue"
			"command"			"continue"
			"listposition"		"0"
		}

		"load_game_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#infra_menu_load_game"
			"command"			"engine ent_fire menu_load_game_relay trigger"
			"listposition"		"1"
		}

		"new_game_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#infra_menu_new_game"
			"command"			"new_game"
			"listposition"		"2"
		}

		"back_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#GameUI_Back"
			"command"			"switchscreen scripts/screens/infra_menu_main.res"
			"listposition"		"3"
		}
	}
}
