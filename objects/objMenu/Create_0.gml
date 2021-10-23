activeCamera = view_camera[0];

// display settings
currentlyHighlightedOption = 0;
highlightedOptionColor = c_white;
normalOptionColor = c_black;
highlightedOptionAlpha = 1;
menuAlpha = .75; // 0 is fully transparent, 1 is solid
// chosen by the finest random number generator, a tutorial.
optionBorder = 8;
// you can set the spacing manually. I noticed about 20% more than the font size looked good.
optionSpacing = floor(font_get_size(customFont)*1.20);


// You could quickly hard code these values, but I think it makes the step logic more legible and more challenging to make mistakes using an enum.
// Also, your text is no longer tied to your logic which also helps with preventing mistakes.
enum menus{
	MAIN_MENU,
	SETTINGS_MENU
}
enum mainMenuOptions{
	START_GAME = 0,
	SETTINGS = 1,
	QUIT_GAME = 2
}
enum settingsMenuOptions{
	WINDOW_SIZE = 0,
	BRIGHTNESS = 1,
	CONTROLS = 2,
	BACK = 3
}


menuOptions[menus.MAIN_MENU][mainMenuOptions.START_GAME] = "Start Game";
menuOptions[menus.MAIN_MENU][mainMenuOptions.SETTINGS] = "Settings";
menuOptions[menus.MAIN_MENU][mainMenuOptions.QUIT_GAME] = "Quit Game";

menuOptions[menus.SETTINGS_MENU][settingsMenuOptions.WINDOW_SIZE] = "Window Size";
menuOptions[menus.SETTINGS_MENU][settingsMenuOptions.BRIGHTNESS] = "Brightness IS SOOOOO BRIGHT!";
menuOptions[menus.SETTINGS_MENU][settingsMenuOptions.CONTROLS] = "Controls";
menuOptions[menus.SETTINGS_MENU][settingsMenuOptions.BACK] = "Back";


optionLength = 0;
currentMenu = menus.MAIN_MENU;