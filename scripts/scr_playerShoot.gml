///scr_playerShoot()
if (instance_number(obj_bullet) < 4) {
    instance_create(x, y, obj_bullet);
    //audio_play_sound(snd_shoot, 0, false);
}
