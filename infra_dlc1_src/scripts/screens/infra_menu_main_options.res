#base "bases/infra_menu_main.res"

"infra_menu_main_options.res"
{
	"list"
	{
		"ControlName"		"CINFRAMenuItemList"
		"xpos"				"340"
		"ypos"				"270"
		"zpos"				"0"
		"wide"				"200"
		"tall"				"200"

		"video_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#infra_options_tab_video"
			"command"			"engine ent_fire menu_options_video_relay trigger"
			"listposition"		"0"
		}

		"audio_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#infra_options_tab_audio"
			"command"			"engine ent_fire menu_options_audio_relay trigger"
			"listposition"		"1"
		}

		"game_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#infra_options_tab_game"
			"command"			"engine ent_fire menu_options_game_relay trigger"
			"listposition"		"2"
		}

		"controls_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#infra_options_tab_controls"
			"command"			"engine ent_fire menu_options_controls_relay trigger"
			"listposition"		"3"
		}

		"back_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#GameUI_Back"
			"command"			"switchscreen scripts/screens/infra_menu_main.res"
			"listposition"		"4"
		}
	}
}
