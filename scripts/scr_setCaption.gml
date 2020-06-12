///scr_setCaption()
var roomCaption = global.gameName;

if (global.gameStarted) {
    difficulties = new_array("Medium", "Hard", "Very Hard", "Impossible");
    roomCaption += string_interp(" - {0} | Deaths: {1} | Time: {2}",
    difficulties[global.difficulty],
    global.deaths,
    scr_formattedTime(global.time));
}

if (roomCaption != global.roomCaptionLast)
    window_set_caption(roomCaption);

global.roomCaptionLast = roomCaption;
