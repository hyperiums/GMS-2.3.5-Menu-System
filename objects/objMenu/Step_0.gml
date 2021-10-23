upKey = keyboard_check_pressed(vk_up);
downKey = keyboard_check_pressed(vk_down);
acceptKey = keyboard_check_pressed(vk_space);

//store number of options in current menu
optionLength = array_length(menuOptions[currentMenu]);

currentlyHighlightedOption += downKey - upKey;
if (currentlyHighlightedOption >= optionLength) {
    currentlyHighlightedOption = 0;
}
if (currentlyHighlightedOption < 0) {
    currentlyHighlightedOption = optionLength - 1;
}

if (acceptKey) {
    var activeMenu = currentMenu;
    switch (currentMenu) {
        case menus.MAIN_MENU:
            switch (currentlyHighlightedOption) {
                case mainMenuOptions.START_GAME:
                    // start your game
                    break;
                case mainMenuOptions.SETTINGS:
                    currentMenu = menus.SETTINGS_MENU;
                    break;
                case mainMenuOptions.QUIT_GAME:
                    game_end();
                    break;
            }
            break;
        case menus.SETTINGS_MENU:
            switch (currentlyHighlightedOption) {
                case settingsMenuOptions.WINDOW_SIZE:

                    break;
                case settingsMenuOptions.BRIGHTNESS:

                    break;
                case settingsMenuOptions.CONTROLS:

                    break;
                case settingsMenuOptions.BACK:
                    currentMenu = menus.MAIN_MENU;
                    break;
            }
            break;
    }
	// reset menu if we've changed menus
    if (activeMenu != currentMenu) {
        currentlyHighlightedOption = 0;
		optionLength = array_length(menuOptions[currentMenu]);
    }
}