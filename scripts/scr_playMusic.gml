///scr_playMusic(song, loop)
var song = argument[0];
var loop = argument[1];

if (!audio_is_playing(song)) {
    audio_stop_sound(global.currentSong);
    
    if (song != -1) {
        global.currentSong = audio_play_sound(song, 0, loop);
    } else {
        global.currentSong = song;
    }
}
