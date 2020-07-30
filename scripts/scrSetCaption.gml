///scrSetCaption()
var roomCaption = global.gameName;

if (global.gameStarted) {
    roomCaption += string_interp(" - {0} | Deaths: {1} | Time: {2}",
    global.difficultyNames[global.difficulty],
    global.deaths,
    scrFormattedTime(global.time));
}

if (roomCaption != global.roomCaptionLast) {
    window_set_caption(roomCaption);
}

global.roomCaptionLast = roomCaption;
