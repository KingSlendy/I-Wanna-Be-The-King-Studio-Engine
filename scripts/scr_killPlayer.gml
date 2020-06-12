///scr_killPlayer()
if (instance_exists(obj_player)) {
    with (obj_player) {
        instance_create(x,y,obj_bloodEmitter);
        instance_destroy();
    }
    
    instance_create(0, 0, obj_gameOver);
    global.deaths++; 
    scr_saveGame(false);
}
