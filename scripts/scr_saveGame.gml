///scr_saveGame(save_position)
var savePosition = argument[0];

if (savePosition) {
    global.savingRoom = room;
    global.savingX = obj_player.x;
    global.savingY = obj_player.y;
    
    with (obj_player) {
        if (!place_free(floor(global.savingX), global.savingY))
            global.savingX++;
        
        if (!place_free(global.savingX, floor(global.savingY)))
            global.savingY--;
    }
}

var saveMap = ds_map_create();

ds_map_add(saveMap, "SavingRoom", global.savingRoom);
ds_map_add(saveMap, "SavingX", global.savingX);
ds_map_add(saveMap, "SavingY", global.savingY);

ds_map_add(saveMap, "Deaths", global.deaths);
ds_map_add(saveMap, "Time", global.time);

ds_map_secure_save(saveMap, string_interp("SaveData{0}", global.saveNum + 1));
ds_map_destroy(saveMap);
