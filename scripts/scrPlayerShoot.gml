///scrPlayerShoot()
if (!global.dotKid && instance_number(objBullet) < 4) {
    instance_create(x, y, objBullet);
    audio_play_sound(sndShoot, 0, false);
    scrEarnAchievement(1);
}
