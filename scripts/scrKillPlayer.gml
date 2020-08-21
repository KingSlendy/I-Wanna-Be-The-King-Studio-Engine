///scrKillPlayer()
if (!global.debugGodMode) {
    if (global.gameStarted) {
        if (instance_exists(objPlayer)) {
            with (objPlayer) {
                instance_create(x,y,objBloodEmitter);
                instance_destroy();
            }
            
            audio_play_sound(sndDeath, 0, false);
            
            if (global.deathMusic) {
                audio_pause_sound(global.currentMusic);
                audio_play_sound(bgmOnDeath, 0, false);
            }
            
            instance_create(0, 0, objGameOver);
            global.deaths++; 
        }
    } else {
        with (objPlayer) {
            instance_destroy();
        }
            
        room_restart();
    }
}
