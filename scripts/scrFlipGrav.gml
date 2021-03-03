///scrFlipGrav(jumps)
var jumps = true;

if (argument_count >= 1) {
    jumps = argument[0];
}

global.grav *= -1;

if (instance_exists(objPlayer)) {
    with (objPlayer) {
        var prevJumps = jumpsLeft;
        vspeed = 0;
        
        if (!global.dotKid) {
            y += 4 * global.grav;
        }
        
        gravity *= -1;
        
        if (jumps) {
            scrRecoverJumps();
        }
    }
}
