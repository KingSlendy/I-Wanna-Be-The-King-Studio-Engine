///scr_flipGrav(flip)
var flip = argument[0];

if (flip)
    global.grav *= -1;

if (instance_exists(obj_player)) {
    var nowX = obj_player.x;
    var nowY = obj_player.y;
    
    with (obj_player)
        instance_destroy();
        
    if (flip) {
        nowY += 4 * global.grav;
    } else {
        nowY++;
    }
    
    instance_create(nowX, nowY, obj_player);
}

with (obj_save) {
    if (global.grav == -1) {
        image_angle = 180;
        x += 32;
        y += 32;
    } else {
        image_angle = 0;
        x -= 32;
        y -= 32;
    }
}
