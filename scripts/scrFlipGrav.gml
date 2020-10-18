///scrFlipGrav(jumps)
var jumps = false;

if (argument_count >= 1) {
    jumps = argument[0];
}

if (instance_exists(objPlayer)) {
    global.grav *= -1;
    var nowX = objPlayer.x;
    var nowY = objPlayer.y;

    with (objPlayer) {
        var prevJumps = jumpsLeft;
        vspeed = 0;
        
        if (!global.dotKid) {
            y += 4 * global.grav;
        }
        
        gravity *= -1;
        
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
