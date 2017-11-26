///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"OffWhite"			"216 216 216 255"
		"DullWhite"			"142 142 142 255"
		"Orange"			"255 155 0 255"
		"TransparentBlack"	"0 0 0 128"
		"Black"				"0 0 0 255"

		"Blank"				"0 0 0 0"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"Blank"	// the lit side of a control
		Border.Dark						"Blank"	// the dark/unlit side of a control
		Border.Selection				"Blank"	// the additional border color for displaying the default/selected button

		Button.TextColor				"White"
		Button.BgColor					"Blank"
		Button.ArmedTextColor			"Black"
		Button.ArmedBgColor				"White"
		Button.DepressedTextColor		"Black"
		Button.DepressedBgColor			"White"
		Button.FocusBorderColor			"Blank"

		CheckButton.TextColor			"OffWhite"
		CheckButton.SelectedTextColor	"White"
		CheckButton.BgColor				"TransparentBlack"
		CheckButton.Border1  			"Border.Dark" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"White"				// color of the check itself

		ComboBoxButton.ArrowColor		"DullWhite"
		ComboBoxButton.ArmedArrowColor	"White"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.TitleTextInsetX			16
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		Frame.BgColor					"160 160 160 128"	[$WIN32]
		Frame.BgColor					"80 80 80 192"		[$GAMECONSOLE]
		Frame.OutOfFocusBgColor			"160 160 160 32"	[$WIN32]
		Frame.OutOfFocusBgColor			"80 80 80 192"		[$GAMECONSOLE]
		Frame.FocusTransitionEffectTime	"0.3"							// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.3"				[$WIN32]	// time it takes for a window to fade in/out on open/close
		Frame.TransitionEffectTime		"0.2"				[$GAMECONSOLE]		// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"200 200 200 196"
		FrameGrip.Color2				"0 0 0 196"
		FrameTitleButton.FgColor		"200 200 200 196"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 192"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.Font				"UiBold"		[$WIN32]
		FrameTitleBar.Font				"DefaultLarge"	[$WIN32]
		FrameTitleBar.TextColor			"White"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"255 255 255 192"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"DullWhite"
		Label.TextColor					"OffWhite"
		Label.TextBrightColor			"White"
		Label.SelectedTextColor			"White"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"DullWhite"
		Label.DisabledFgColor2			"Blank"

		ListPanel.TextColor					"OffWhite"
		ListPanel.TextBgColor				"Blank"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"Black"
		ListPanel.SelectedBgColor			"Orange"
		ListPanel.SelectedOutOfFocusBgColor	"255 155 0 128"
		ListPanel.EmptyListInfoTextColor	"OffWhite"

		Menu.TextColor					"White"
		Menu.BgColor					"160 160 160 64"
		Menu.ArmedTextColor				"Black"
		Menu.ArmedBgColor				"Orange"
		Menu.TextInset					"6"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"Blank"

		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"OffWhite"
		PropertySheet.SelectedTextColor	"White"
		PropertySheet.TransitionEffectTime	"0"	// time to change from one tab to another

		RadioButton.TextColor			"DullWhite"
		RadioButton.SelectedTextColor	"White"

		RichText.TextColor				"OffWhite"
		RichText.BgColor				"TransparentBlack"
		RichText.SelectedTextColor		"Black"
		RichText.SelectedBgColor		"Orange"

		ScrollBar.Wide					1
	  	ScrollBarNobBorder.Outer 			"Blank"
		ScrollBarNobBorder.Inner 			"Blank"
		ScrollBarNobBorderHover.Inner 			"Blank"
		ScrollBarNobBorderDragging.Inner 		"Blank"

		ScrollBarButton.FgColor				"Blank"
		ScrollBarButton.BgColor				"Blank"
		ScrollBarButton.ArmedFgColor			"Blank"
		ScrollBarButton.ArmedBgColor			"Blank"
		ScrollBarButton.DepressedFgColor		"Blank"
		ScrollBarButton.DepressedBgColor		"Blank"

		ScrollBarSlider.Inset				0			// Number of pixels to inset scroll bar nob
		ScrollBarSlider.FgColor				"White"			// nob color
		ScrollBarSlider.BgColor				"Blank"	// slider background color
		ScrollBarSlider.NobFocusColor		"White"		// nob mouseover color
		ScrollBarSlider.NobDragColor		"White"		// nob active drag color

		SectionedListPanel.HeaderTextColor	"White"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Black"
		SectionedListPanel.TextColor		"DullWhite"
		SectionedListPanel.BrightTextColor	"White"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"Black"
		SectionedListPanel.SelectedBgColor				"Orange"
		SectionedListPanel.OutOfFocusSelectedTextColor	"Black"
		SectionedListPanel.OutOfFocusSelectedBgColor	"255 155 0 128"

		Slider.NobColor				"108 108 108 255"
		Slider.NobFocusColor			"200 200 200 255"
		Slider.TextColor			"180 180 180 255"
		Slider.TrackColor			"25 25 25 255"
		Slider.DisabledTextColor1	"117 117 117 255"
		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"OffWhite"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"OffWhite"
		TextEntry.DisabledTextColor	"DullWhite"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"Black"
		TextEntry.SelectedBgColor	"Orange"
		TextEntry.OutOfFocusSelectedBgColor	"255 155 0 128"
		TextEntry.FocusEdgeColor	"0 0 0 196"

		ToggleButton.SelectedTextColor	"White"

		Tooltip.TextColor			"0 0 0 196"
		Tooltip.BgColor				"Orange"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		Console.TextColor			"OffWhite"
		Console.DevTextColor		"White"

		INFRAOptionsCycleableButton.OptionLabelDefaultFont			"PhoneMenuLarge"
		INFRAOptionsCycleableButton.OptionLabelArmedFont			"PhoneMenuLarge"
		INFRAOptionsCycleableButton.OptionLabelDisabledFont			"PhoneMenuLargeAdditive"
		INFRAOptionsCycleableButton.DescriptionLabelDefaultFont		"PhoneMenuLargeLight"
		INFRAOptionsCycleableButton.DescriptionLabelArmedFont		"PhoneMenuLarge"
		INFRAOptionsCycleableButton.DescriptionLabelDisabledFont	"PhoneMenuLargeLightAdditive"
		INFRAOptionsCycleableButton.BottomLineColor					"25 25 25 255"
		INFRAOptionsCycleableButton.TextInset						"8"

		INFRAOptionsCycleableButton.TextColor						"White"
		INFRAOptionsCycleableButton.DisabledTextColor				"50 50 50 255"
		INFRAOptionsCycleableButton.BgColor							"Blank"
		INFRAOptionsCycleableButton.ArmedTextColor					"Black"
		INFRAOptionsCycleableButton.ArmedBgColor					"White"
		INFRAOptionsCycleableButton.DepressedTextColor				"Black"
		INFRAOptionsCycleableButton.DepressedBgColor				"White"

		INFRAOptionsSlider.DragIndicatorFont						"PhoneMenuLarge"
		INFRAOptionsSlider.TrackWidthRatio							"3"
		INFRAOptionsSlider.SliderInset								"8"
		INFRAOptionsSlider.ThumbWidth								"2"
		INFRAOptionsSlider.TrackHeight								"1"
		INFRAOptionsSlider.NobHeight								"32"
		INFRAOptionsSlider.FgColor									"White"
		INFRAOptionsSlider.BgColor									"Blank"
		INFRAOptionsSlider.ArmedFgColor								"Black"
		INFRAOptionsSlider.ArmedBgColor								"White"
		INFRAOptionsSlider.DisabledFgColor							"50 50 50 255"
		INFRAOptionsSlider.DisabledBgColor							"Blank"

		INFRAOptionsBind.BindLabelColor								"Black"
		INFRAOptionsBind.TextInset									"8"
		INFRAOptionsBind.BindLabelYOffsetWithIcon					"-6"
		INFRAOptionsBind.IconTallOffset								"-4"

		INFRAMenuItemList.ScrollBarWidth							"1"
		INFRAMenuItemList.ScrollBarPaddingLeft						"19"
		INFRAMenuItemList.ScrollBarPaddingRight						"20"
		INFRAMenuItemList.ScrollBarBackgroundColor					"25 25 25 255"
		INFRAMenuItemList.ScrollBarSliderColor						"150 150 150 255"

		INFRAMenuItemList.ItemHeight								"80"
	}

	//////////////////////// CRITICAL FONTS ////////////////////////////////
	//
	// Very specifc console optimization that precaches critical glyphs to prevent hitching.
	// Adding descriptors here causes super costly memory font pages to be instantly built.
	// CAUTION: Each descriptor could be up to N fonts, due to resolution, proportionality state, etc,
	// so the font page explosion could be quite drastic.
	CriticalFonts
	{
		"PhoneTopBar"
		{
			"explicit" "ABCG&% "
			"numbers" "1"
		}

		"PhoneMenuLarge"
		{
			"commonchars" "1"
		}

		"PhoneMenuLargeAdditive"
		{
			"commonchars" "1"
		}

		"PhoneMenuLargeLight"
		{
			"commonchars" "1"
		}

		"PhoneMenuLargeLightAdditive"
		{
			"commonchars" "1"
		}

		"PhoneIcons"
		{
			"explicit" "abcde"
		}
	}

	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace

		"PhoneTopBar"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"Arial"
				"tall"		"28"
				"antialias"	"1"
				"mipmaps"	"1"
			}
		}

		"PhoneMenuLarge"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"Arial"
				"tall"		"56"
				"antialias"	"1"
				"mipmaps"	"1"
			}
		}

		"PhoneMenuLargeAdditive"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"Arial"
				"tall"		"56"
				"antialias"	"1"
				"mipmaps"	"1"
				"additive"	"1"
			}
		}

		"PhoneMenuLargeLight"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"Arial Light"
				"tall"		"56"
				"antialias"	"1"
				"mipmaps"	"1"
			}
		}

		"PhoneMenuLargeLightAdditive"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"Arial Light"
				"tall"		"56"
				"antialias"	"1"
				"mipmaps"	"1"
				"additive"	"1"
			}
		}

		"PhoneIcons"
		{
			"isproportional"	"no"
			"1"
			{
				"name"		"INFRAicons"
				"tall"		"42"
				"antialias"	"1"
				"mipmaps"	"1"
			}
		}
	}

	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles [!$GAMECONSOLE]
	{
		"4" "vgui/fonts/INFRAicons.vfont"
	}
}
