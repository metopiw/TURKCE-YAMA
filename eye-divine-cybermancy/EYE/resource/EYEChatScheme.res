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
		"TransparentBlack"	"0 18 8  191"
		"Black"				"0 0 0 255"
		
		"EYEText1"			"255 244 155 170"
		"EYEText2"			"255 244 155 255"
		"EYEBack1"			"0 0 0  191"
		"EYEBack2"			"251 189 0  220"//for gray text
		"EYEBack3"			"74 68 62  191"		
		
		//"EYEBack1"			"113 100 29  191"
		//"EYEBack2"			"85 65 11  191"

		"Blank"				"0 0 0 0"
		"EYEBG"				"109 86 4 225"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"EYEText1"	// the lit side of a control
		Border.Dark						"EYEText2"		// the dark/unlit side of a control
		Border.Selection				"0 0 0 196"			// the additional border color for displaying the default/selected button

		Button.TextColor				"EYEText1"
		Button.BgColor					"Blank"
		Button.ArmedTextColor			"EYEText2"
		Button.ArmedBgColor				"Blank"
		Button.DepressedTextColor		"EYEText1"
		Button.DepressedBgColor			"Blank"
		Button.FocusBorderColor			"Black"
		
		CheckButton.TextColor			"EYEText1"
		CheckButton.SelectedTextColor	"EYEText2"
		CheckButton.BgColor				"TransparentBlack"
		CheckButton.Border1  			"EYEText1" 		// the left checkbutton border
		CheckButton.Border2  			"EYEText2"		// the right checkbutton border
		CheckButton.Check				"EYEText1"				// color of the check itself

		ComboBoxButton.ArrowColor		"EYEText1"
		ComboBoxButton.ArmedArrowColor	"EYEText2"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.TitleTextInsetX			16
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		Frame.BgColor					"EYEBack1"
		Frame.OutOfFocusBgColor			"EYEBack1"
		Frame.FocusTransitionEffectTime	"0.3"	// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.3"	// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"EYEBack2"
		FrameGrip.Color2				"0 0 0 196"
		FrameTitleButton.FgColor		"EYEBack1"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 192"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.Font				"UiBold"
		FrameTitleBar.TextColor			"EYEText1"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"EYEText1"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"EYEText1"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"EYEText2"
		Label.TextColor					"EYEText2"
		Label.TextBrightColor			"EYEText1"
		Label.SelectedTextColor			"EYEText1"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"EYEBack1"
		Label.DisabledFgColor2			"EYEBack2"

		ListPanel.TextColor					"EYEText1"
		ListPanel.TextBgColor				"Blank"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"EYEText2"
		ListPanel.SelectedBgColor			"EYEBack3"
		ListPanel.SelectedOutOfFocusBgColor	"255 155 0 128"
		ListPanel.EmptyListInfoTextColor	"EYEText1"

		Menu.TextColor					"EYEText2"
		Menu.BgColor					"EYEBack1"
		Menu.ArmedTextColor				"EYEText2"
		Menu.ArmedBgColor				"EYEBack3"
		Menu.TextInset					"6"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"0 0 0 0"

		ProgressBar.FgColor				"EYEText1"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"EYEText1"
		PropertySheet.SelectedTextColor	"EYEText2"
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another

		RadioButton.TextColor			"EYEText1"
		RadioButton.SelectedTextColor	"EYEText2"

		RichText.TextColor				"EYEText1"
		RichText.BgColor				"EYEBack1"
		RichText.SelectedTextColor		"EYEText2"
		RichText.SelectedBgColor		"EYEBack3"

		ScrollBar.Wide					10

		ScrollBarButton.FgColor				"EYEText1"
		ScrollBarButton.BgColor				"Blank"
		ScrollBarButton.ArmedFgColor		"EYEText2"
		ScrollBarButton.ArmedBgColor		"Blank"
		ScrollBarButton.DepressedFgColor	"EYEText1"
		ScrollBarButton.DepressedBgColor	"Blank"

		ScrollBarSlider.FgColor				"Blank"			// nob color
		ScrollBarSlider.BgColor				"EYEBack1"	// slider background color

		SectionedListPanel.HeaderTextColor	"EYEText1"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"EYEText1"
		SectionedListPanel.TextColor		"EYEText2"
		SectionedListPanel.BrightTextColor	"EYEText1"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"EYEText2"
		SectionedListPanel.SelectedBgColor				"EYEBack3"
		SectionedListPanel.OutOfFocusSelectedTextColor	"Black"
		SectionedListPanel.OutOfFocusSelectedBgColor	"255 155 0 128"

		Slider.NobColor				"108 108 108 255"
		Slider.TextColor			"180 180 180 255"
		Slider.TrackColor			"31 31 31 255"
		Slider.DisabledTextColor1	"117 117 117 255"
		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"EYEText1"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"EYEText1"
		TextEntry.DisabledTextColor	"EYEText2"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"EYEText2"
		TextEntry.SelectedBgColor	"EYEBack3"
		TextEntry.OutOfFocusSelectedBgColor	"255 155 0 128"
		TextEntry.FocusEdgeColor	"0 0 0 196"

		ToggleButton.SelectedTextColor	"EYEText1"

		Tooltip.TextColor			"0 0 0 196"
		Tooltip.BgColor				"Orange"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		MainMenu.TextColor			"EYEText1"
		MainMenu.ArmedTextColor		"EYEText2"
		MainMenu.DepressedTextColor	"EYEText2"
		MainMenu.MenuItemHeight		"30"
		MainMenu.Inset				"32"
		MainMenu.Backdrop			"0 0 0 100"

		Console.TextColor			"EYEText1"
		Console.DevTextColor		"EYEText1"

		NewGame.TextColor			"EYEText1"
		NewGame.FillColor			"0 0 0 255"
		NewGame.SelectionColor		"EYEText2"
		NewGame.DisabledColor		"EYEBack2"
	}

	//
	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		// fonts are used in order that they are listed
		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"10"
				"weight"	"500"
				"antialias" "1"
			}
		}
		// fonts are used in order that they are listed
		"DebugFixedSmall"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"7"
				"weight"	"500"
				"antialias" "1"
			}
		}
		"DefaultFixedOutline"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
				"outline"	"1"
			}
		}
		"Default"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"16"
				"weight"	"500"
				//"custom"	"1"
			}
		}
		"DefaultBold"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"16"
				"weight"	"1000"
				//"custom"	"1"
			}
		}
		"DefaultUnderline"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"16"
				"weight"	"500"
				"underline" "1"
				//"custom"	"1"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"12"
				"weight"	"0"
				//"custom"	"1"
			}
		}
		"DefaultSmallDropShadow"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"13"
				"weight"	"0"
				"dropshadow" "1"
				//"custom"	"1"
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"12"
				"weight"	"0"
				//"custom"	"1"
			}
		}

		"DefaultLarge"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"18"
				"weight"	"0"
				//"custom"	"1"
			}
		}
		"SmallEYE"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"10"
				"weight"	"600"
				//"custom"	"1"
			}
		}	
		"DefaultEYE"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"18"
				"weight"	"5"
				//"custom"	"1"
			}
		}	
		"GrosEYE"
		{
			"1"
			{
				"name"		"Arial Black"
				"tall"		"26"
				"weight"	"15"
			}
		}	
		"MoyenEYE"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"10"
				"weight"	"10"
				//"custom"	"1"
			}
		}		
		"RichEYE"
		{
			"1"
			{
				"name"		"Arial Black"
				"tall"		"10"
				"weight"	"0"
			}
		}		
					
		"UiBold"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"12"
				"weight"	"1000"
				//"custom"	"1"
			}
		}
		"MenuLarge"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"600"
				"antialias" "1"
				//"custom"	"1"
			}
		}

		"ConsoleText"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"500"
			}
		}

		// this is the symbol font
		"Marlett"
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"14"
				"weight"	"0"
				"symbol"	"1"
			}
		}

		"Trebuchet24"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"24"
				"weight"	"900"
				//"custom"	"1"
			}
		}


		"Trebuchet20"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"20"
				"weight"	"900"
				//"custom"	"1"
			}
		}

		"Trebuchet18"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"18"
				"weight"	"900"
				//"custom"	"1"
			}
		}

		// HUD numbers
		// We use multiple fonts to 'pulse' them in the HUD, hence the need for many of near size
		"HUDNumber"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"40"
				"weight"	"900"
				//"custom"	"1"
			}
		}
		"HUDNumber1"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"41"
				"weight"	"900"
				//"custom"	"1"
			}
		}
		"HUDNumber2"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"42"
				"weight"	"900"
				//"custom"	"1"
			}
		}
		"HUDNumber3"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"43"
				"weight"	"900"
				//"custom"	"1"
			}
		}
		"HUDNumber4"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"44"
				"weight"	"900"
				//"custom"	"1"
			}
		}
		"HUDNumber5"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"45"
				"weight"	"900"
				//"custom"	"1"
			}
		}
		"DefaultFixed"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		"DefaultFixedDropShadow"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
				"dropshadow" "1"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		"CloseCaption_Normal"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"16"
				"weight"	"500"
				//"custom"	"1"
			}
		}
		"CloseCaption_Italic"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"16"
				"weight"	"500"
				"italic"	"1"
				//"custom"	"1"
			}
		}
		"CloseCaption_Bold"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"16"
				"weight"	"900"
				//"custom"	"1"
			}
		}
		"CloseCaption_BoldItalic"
		{
			"1"
			{
				"name"		"eye_vgui_2"
				"tall"		"16"
				"weight"	"900"
				"italic"	"1"
				//"custom"	"1"
			}
		}

		TitleFont
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"72"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}

		TitleFont2
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"120"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}
	}

	//
	//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder		DepressedBorder
		ButtonBorder	RaisedBorder
		ComboBoxBorder	DepressedBorder
		MenuBorder		RaisedBorder
		BrowserBorder	DepressedBorder
		PropertySheetBorder	RaisedBorder

		FrameBorder
		{
			// rounded corners for frames
			"backgroundtype" "2"
		}

		DepressedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 0"
				}
			}
		}
		RaisedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}
		}
		
		TitleButtonBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDisabledBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDepressedBorder
		{
			"backgroundtype" "0"
		}

		ScrollBarButtonBorder
		{
			"inset" "2 2 0 0"
			Left
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}
		}
		
		ScrollBarButtonDepressedBorder
		{
			"inset" "2 2 0 0"
			Left
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 0"
				}
			}
		}

		TabBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 0"
				}
			}

		}

		TabActiveBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 0"
				}
			}

		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}
		}

		// this is the border used for default buttons (the button that gets pressed when you hit enter)
		ButtonKeyFocusBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
				"2"
				{
					"color" "EYEText2"
					"offset" "0 1"
				}
			}
			Top
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
				"2"
				{
					"color" "EYEText2"
					"offset" "1 0"
				}
			}
			Right
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
				"2"
				{
					"color" "EYEText2"
					"offset" "1 0"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
				"2"
				{
					"color" "EYEText2"
					"offset" "0 0"
				}
			}
		}

		ButtonDepressedBorder
		{
			"inset" "2 1 1 1"
			Left
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "EYEText1"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "EYEText2"
					"offset" "0 0"
				}
			}
		}
	}

	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles
	{
		"1"		"resource/EYE.ttf"
		"eye_vgui_1"		"resource/eye_vgui_1.ttf"
		"eye_vgui_2"		"resource/eye_vgui_2.ttf"
		"eye_vgui_3"		"resource/eye_vgui_3.ttf"
	
	}
}