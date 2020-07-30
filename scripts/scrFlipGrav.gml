///scrFlipGrav(flip)
var flip = argument[0];

if (flip)
    global.grav *= -1;

if (instance_exists(objPlayer)) {
    var nowX = objPlayer.x;
    var nowY = objPlayer.y;
    
    with (objPlayer) {
        instance_destroy();
    }
        
    if (flip) {
        nowY += 4 * global.grav;
    } else {
        nowY++;
    }
    
    instance_create(nowX, nowY, objPlayer);
}

with (objSave) {
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
