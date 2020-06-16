///scr_restartGame()
if (global.deathMusic) {
    audio_stop_sound(bgm_onDeath);
    audio_resume_sound(global.currentMusic);
}

var deaths = global.deaths;
var time = global.time;
scr_loadGame(true);
global.deaths = deaths;
global.time = time;
