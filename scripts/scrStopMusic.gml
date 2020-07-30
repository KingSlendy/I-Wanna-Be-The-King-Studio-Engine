///scrStopMusic()
if (global.currentMusic != -1) {
    audio_stop_sound(global.currentMusic);
    global.currentMusic = -1;
}
