///scrPlayerJump()
if (jumps > 0 && (!notOnBlock || onPlatform || place_meeting(x, y + global.grav, objWater))) {
    vspeed = -(jumpsHeight[0] * global.grav);
    scrRecoverJumps();
    audio_play_sound(sndJump, 0, false);
    scrEarnAchievement(0);
} else if (jumpsLeft > 0 || place_meeting(x, y + global.grav, objWater2) || jumps == -1) {
    vspeed = -(jumpsHeight[1] * global.grav);
    sprite_index = sprPlayerJump;

    if (!place_meeting(x, y + global.grav, objWater3)) {
        if (jumpsLeft > 0) {
            jumpsLeft--;
        }
    } else {
        scrRecoverJumps();
    }
    
    audio_play_sound(sndDoubleJump, 0, false);
    scrEarnAchievement(0);
}
