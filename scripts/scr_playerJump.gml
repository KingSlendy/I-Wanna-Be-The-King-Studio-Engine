///scr_playerJump()
if (onLand || onPlatform || place_meeting(x, y + global.grav, obj_water)) {
    vspeed = -(jumpsHeight[0] * global.grav);
    audio_play_sound(snd_jump, 0, false);
} else if (jumpsLeft > 0 || place_meeting(x, y + global.grav, obj_water2) || jumpsLeft == -1) {
    vspeed = -(jumpsHeight[1] * global.grav);
    sprite_index = spr_playerJump;
    audio_play_sound(snd_doubleJump, 0, false);
    
    if (!place_meeting(x, y + global.grav, obj_water3)) {
        jumpsLeft--;
    } else {
        scr_recoverJumps();
    }
}
