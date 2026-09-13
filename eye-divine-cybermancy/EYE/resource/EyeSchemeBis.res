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
		"TransparentBlack"		"0 0 0 128"
		"Black"				"0 0 0 255"

		"Blank"				"0 0 0 0"
		"EYEBGBright"				"201 149 13 80"
		"EYEComboBG"				"201 149 13 10"
		"EYEBGDark"				"119 73 30 160"
		"EyeText1"			"254 232 127 255"
		"EyeText2"			"252 226 91 255"
		"EyeScrollBar"	"155 107 20 216"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"200 200 200 196"	// the lit side of a control
		Border.Dark						"40 40 40 196"		// the dark/unlit side of a control
		Border.Selection				"0 0 0 196"			// the additional border color for displaying the default/selected button

		Button.TextColor				"EyeText2"
		Button.BgColor					"Blank"
		Button.ArmedTextColor			"EyeText2"
		Button.ArmedBgColor				"Blank"
		Button.DepressedTextColor		"EyeText2"
		Button.DepressedBgColor			"Blank"
		Button.FocusBorderColor			"Black"
		
		CheckButton.TextColor			"EyeText2"
		CheckButton.SelectedTextColor	"EyeText2"
		CheckButton.BgColor				"TransparentBlack"
		CheckButton.Border1  			"Border.Dark" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"White"				// color of the check itself

		ComboBoxButton.ArrowColor		"EYEBGBright"
		ComboBoxButton.ArmedArrowColor	"EYEBGDark"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.TitleTextInsetX			16
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		Frame.BgColor					"160 160 160 128"
		Frame.OutOfFocusBgColor			"160 160 160 32"
		Frame.FocusTransitionEffectTime	"0.3"	// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.3"	// time it takes for a window to fade in/out on open/close
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
		FrameTitleBar.Font				"UiBold"
		FrameTitleBar.TextColor			"EyeText2"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"EyeText2"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"DullWhite"
		Label.TextColor					"EyeText2"
		Label.TextBrightColor			"White"
		Label.SelectedTextColor			"EyeText2"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"EyeText2"
		Label.DisabledFgColor2			"30 30 30 255"

		ListPanel.TextColor					"EyeText2"
		ListPanel.TextBgColor				"Blank"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"EyeText2"
		ListPanel.SelectedBgColor			"Orange"
		ListPanel.SelectedOutOfFocusBgColor	"255 155 0 128"
		ListPanel.EmptyListInfoTextColor	"EyeText2"

		Menu.TextColor					"EyeText2"
		Menu.BgColor					"EYEComboBG"
		Menu.ArmedTextColor				"EyeText2"
		Menu.ArmedBgColor				"Orange"
		Menu.TextInset					"10"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"0 0 0 0"

		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"EyeText2"
		PropertySheet.SelectedTextColor	"EyeText2"
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another

		RadioButton.TextColor			"EyeText2"
		RadioButton.SelectedTextColor	"EyeText2"

		RichText.TextColor				"EyeText2"
		RichText.BgColor				"EYEBGBright"
		RichText.SelectedTextColor		"EyeText2"
		RichText.SelectedBgColor		"EyeText2"

		ScrollBar.Wide					10

		ScrollBarButton.FgColor				"White"
		ScrollBarButton.BgColor				"Blank"
		ScrollBarButton.ArmedFgColor		"White"
		ScrollBarButton.ArmedBgColor		"Blank"
		ScrollBarButton.DepressedFgColor	"White"
		ScrollBarButton.DepressedBgColor	"Blank"

		ScrollBarSlider.FgColor				"Blank"			// nob color
		ScrollBarSlider.BgColor				"255 255 255 64"	// slider background color

		SectionedListPanel.HeaderTextColor	"White"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Black"
		SectionedListPanel.TextColor		"DullWhite"
		SectionedListPanel.BrightTextColor	"White"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"EyeText2"
		SectionedListPanel.SelectedBgColor				"Orange"
		SectionedListPanel.OutOfFocusSelectedTextColor	"EyeText2"
		SectionedListPanel.OutOfFocusSelectedBgColor	"255 155 0 128"

		Slider.NobColor				"108 108 108 255"
		Slider.TextColor			"180 180 180 255"
		Slider.TrackColor			"31 31 31 255"
		Slider.DisabledTextColor1	"EyeText2"
		Slider.DisabledTextColor2	"EyeText2"

		TextEntry.TextColor			"EyeText2"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"OffWhite"
		TextEntry.DisabledTextColor	"EyeText2"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"EyeText2"
		TextEntry.SelectedBgColor	"Orange"
		TextEntry.OutOfFocusSelectedBgColor	"255 155 0 128"
		TextEntry.FocusEdgeColor	"0 0 0 196"

		ToggleButton.SelectedTextColor	"EyeText2"

		Tooltip.TextColor			"0 0 0 196"
		Tooltip.BgColor				"Orange"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		MainMenu.TextColor			"EyeText2"
		MainMenu.ArmedTextColor		"EyeText2"
		MainMenu.DepressedTextColor	"EyeText2"
		MainMenu.MenuItemHeight		"30"
		MainMenu.Inset				"32"
		MainMenu.Backdrop			"EYEBGBright"

		Console.TextColor			"EyeText2"
		Console.DevTextColor		"EyeText2"

		NewGame.TextColor			"EyeText2"
		NewGame.FillColor			"0 0 0 255"
		NewGame.SelectionColor		"Orange"
		NewGame.DisabledColor		"128 128 128 196"
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
				"tall"		"17"
				"weight"	"10"
				//"custom"	"1"
			}
		}		
		"RichEYE"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"10"
				"weight"	"0"
				//"custom"	"1"
			}
		}		
		"MiniEYE"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"7"
				"weight"	"1000"
				//"custom"	"1"
			}
		}		
		"SmallEYE"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"8"
				"weight"	"600"
				//"custom"	"1"
			}
		}	
		"NormalEYE"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"9"
				"weight"	"700"
				//"custom"	"1"
			}
		}			
		"BigEYE"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"10"
				"weight"	"900"
				//"custom"	"1"
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
				//"custom"	"1"
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
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
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
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
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
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
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
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
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
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
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
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
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
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
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
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}
			Top
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}
			Right
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
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
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
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