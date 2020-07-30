///scrOutsideRoom()
if (!instance_exists(objPlayer)) {
    return false;
} else {
    return (objPlayer.x < 0 || objPlayer.x > room_width || objPlayer.y < 0 || objPlayer.y > room_height);
}
