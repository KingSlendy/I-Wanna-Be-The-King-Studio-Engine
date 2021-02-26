///scrRestartGame()
if (global.deathMusic) {
    audio_stop_sound(bgmOnDeath);
    audio_resume_sound(global.currentMusic);
}

var deaths = global.deaths;
var time = global.time;
scrLoadGame(true);
global.deaths = deaths;
global.time = time;
