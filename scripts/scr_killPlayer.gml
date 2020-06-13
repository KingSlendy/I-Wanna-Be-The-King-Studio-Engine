///scr_killPlayer()
if (global.gameStarted) {
    if (instance_exists(obj_player)) {
        with (obj_player) {
            instance_create(x,y,obj_bloodEmitter);
            instance_destroy();
        }
        
        audio_play_sound(snd_death, 0, false);
        
        if (global.deathMusic) {
            audio_pause_sound(global.currentMusic);
            audio_play_sound(bgm_onDeath, 0, false);
        }
        
        instance_create(0, 0, obj_gameOver);
        global.deaths++; 
    }
} else {
    with (obj_player)
        instance_destroy();
        
    room_restart();
}
