///scr_startGame(diff)
var diff = argument[0];
var save = scr_saveName(global.saveNum);

if (diff == array_length_1d(global.difficultyNames) - 1) {
    if (file_exists(save)) {
        scr_loadGame(true);
    } else {
        scr_killPlayer();
    }
} else {
    if (diff < 0 || diff >= array_length_1d(global.difficultyNames)) { //To prevent giving an invalid difficulty
        show_message("Invalid difficulty!");
        game_end();
    }

    if (file_exists(save))
        file_delete(save);
        
    global.gameStarted = true;
    global.autosave = true;
    global.difficulty = diff;
    
    with (obj_player)
        instance_destroy();

    room_goto(global.startRoom);
}
