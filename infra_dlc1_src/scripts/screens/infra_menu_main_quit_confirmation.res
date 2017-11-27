#base "bases/infra_menu_main.res"

"infra_menu_main_quit_confirmation.res"
{
	"list"
	{
		"ControlName"		"CINFRAMenuItemList"
		"xpos"				"340"
		"ypos"				"270"
		"zpos"				"0"
		"wide"				"200"
		"tall"				"80"

		"yes_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#infra_menu_quit"
			"command"			"quit"
			"listposition"		"0"
		}

		"back_button"
		{
			"ControlName"		"CINFRAMenuItemButton"
			"labelText"			"#GameUI_Back"
			"command"			"switchscreen scripts/screens/infra_menu_main.res"
			"listposition"		"1"
		}
	}
}
