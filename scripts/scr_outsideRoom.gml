///scr_outsideRoom()
if (!instance_exists(obj_player)) {
    return false;
} else {
    return (obj_player.x < 0 || obj_player.x > room_width || obj_player.y < 0 || obj_player.y > room_height);
}
