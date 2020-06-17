///scr_playerJump()
if (onLand || onPlatform) {
    vspeed = -(jumpsHeight[0] * global.grav);
    audio_play_sound(snd_jump, 0, false);
} else if (jumpsLeft > 0 || jumpsLeft == -1) {
    vspeed = -(jumpsHeight[1] * global.grav);
    jumpsLeft--;
    sprite_index = spr_playerJump;
    audio_play_sound(snd_doubleJump, 0, false);
}
