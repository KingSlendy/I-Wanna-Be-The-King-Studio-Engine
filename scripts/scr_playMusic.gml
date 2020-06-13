///scr_playMusic(song, loop)
var song = argument[0];
var loop = argument[1];

if (!audio_is_playing(song)) {
    audio_stop_sound(global.currentMusic);
    
    if (song != -1) {
        global.currentMusic = audio_play_sound(song, 0, loop);
    } else {
        global.currentMusic = song;
    }
}
