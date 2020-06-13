///scr_playerJump()
if (place_meeting(x, y + 1, obj_block)) {
    vspeed = -jumpsHeight[0];
    audio_play_sound(snd_jump, 0, false);
} else if (jumpsLeft > 0 || jumpsLeft == -1) {
    vspeed = -jumpsHeight[1];
    jumpsLeft -= 1;
    sprite_index = spr_playerJump;
    audio_play_sound(snd_doubleJump, 0, false);
}
