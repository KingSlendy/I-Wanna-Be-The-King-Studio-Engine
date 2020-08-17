///scrPlayMusic(music, loop)
var music = argument[0];
var loop = argument[1];

if (global.restartMusic || !audio_is_playing(music)) {
    audio_stop_sound(global.currentMusic);
    
    if (music != -1) {
        global.currentMusic = audio_play_sound(music, 0, loop);
    } else {
        global.currentMusic = music;
    }
}
