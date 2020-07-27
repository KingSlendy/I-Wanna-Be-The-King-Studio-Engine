///scr_setCaption()
var roomCaption = global.gameName;

if (global.gameStarted) {
    roomCaption += string_interp(" - {0} | Deaths: {1} | Time: {2}",
    global.difficultyNames[global.difficulty],
    global.deaths,
    scr_formattedTime(global.time));
}

if (roomCaption != global.roomCaptionLast)
    window_set_caption(roomCaption);

global.roomCaptionLast = roomCaption;
