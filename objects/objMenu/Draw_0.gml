// This font can be found here: https://www.fontspace.com/haeres-letter-font-f53961.
// Googling "open source fonts" led me to sites like https://www.fontspace.com/category/open-source.
// To install the font to your machine, google "how to install a font on {your operating system}."
// Restart game maker studio so it can detect the new font.
// Create a font like you do an object, then select your new font from the drop-down.
// Random troubleshooting: if the game font isn't rendering or compiling, delete the font asset, close gms, re-add. I have no idea what causes this, but I ran into it, so hopefully, that tip will help you as well.
draw_set_font(customFont);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

// dynamically adjust menu sizing based on current menu options
var maximumWidth = 0;
for(var i = 0; i < optionLength ; i++){
	var optionWidth = string_width(menuOptions[currentMenu][i]);
	if(optionWidth > maximumWidth){
		maximumWidth = optionWidth;
	}
}
width = maximumWidth + (optionBorder * 2);
height = (optionBorder * 2) + string_height(menuOptions[currentMenu][0]) + ((optionLength-1)*optionSpacing);


// dynamically center menu in camera. make sure your camera is able to see the view port.
x = camera_get_view_x(activeCamera) + camera_get_view_width(activeCamera)/2 - width/2;
y = camera_get_view_y(activeCamera) + camera_get_view_height(activeCamera)/2 - height/2;

// draw the menus background
// I used https://www.pixilart.com/ to make a simple sprite similar to Peyton Burnham tutorial found here https://www.youtube.com/watch?v=xLasKr0ekHY
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, menuAlpha);


for(var i = 0; i < optionLength ; i++){
	var currentOptionColor = currentlyHighlightedOption == i ? highlightedOptionColor : normalOptionColor;
	draw_text_color( x + optionBorder, y + optionBorder + (optionSpacing * i), menuOptions[currentMenu][i], currentOptionColor, currentOptionColor, currentOptionColor, currentOptionColor, highlightedOptionAlpha);
}
