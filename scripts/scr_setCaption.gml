///scr_setCaption()
var roomCaption = global.gameName;

if (global.gameStarted) {
    roomCaption += string_interp(" - Deaths: {0} | Time: {1}",
    global.deaths,
    scr_formattedTime());
}

if (roomCaption != global.roomCaptionLast)
    window_set_caption(roomCaption);

global.roomCaptionLast = roomCaption;
