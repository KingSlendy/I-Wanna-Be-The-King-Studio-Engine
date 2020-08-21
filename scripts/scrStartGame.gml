///scrStartGame(diff)
var diff = argument[0];
var save = scrSaveName(global.saveNum);

if (diff == array_length_1d(global.difficultyNames) - 1) {
    if (file_exists(save)) {
        scrLoadGame(true);
    } else {
        scrKillPlayer();
    }
} else {
    if (diff < 0 || diff >= array_length_1d(global.difficultyNames)) { //To prevent giving an invalid difficulty
        show_message("Invalid difficulty!");
        game_end();
    }

    if (file_exists(save)) {
        file_delete(save);
    }
        
    global.gameStarted = true;
    global.autosave = true;
    global.difficulty = diff;

    instance_destroy(objPlayer);
    room_goto(global.startRoom);
}
