///scrFlipGrav(flip, jumps)
var flip = argument[0];
var jumps = argument[1];

if (flip) {
    global.grav *= -1;
}

if (instance_exists(objPlayer)) {
    var nowX = objPlayer.x;
    var nowY = objPlayer.y;

    with (objPlayer) {
        var prevJumps = jumpsLeft;
        vspeed = 0;
        
        if (!global.dotKid) {
            if (flip) {
                y += 4 * global.grav;
            }
        }
        
        if (jumps) {
            jumpsLeft = prevJumps;
        }
    }
    
    if (jumps) {
        objPlayer.jumpsLeft = prevJumps;
    } else {
        scrRecoverJumps();
    }
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
