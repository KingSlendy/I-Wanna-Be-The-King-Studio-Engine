///scr_saveGame(save_position)
var savePosition = argument[0];

if (savePosition) {
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

ds_map_add(saveMap, "CurrentRoom", room);
ds_map_add(saveMap, "SavingX", global.savingX);
ds_map_add(saveMap, "SavingY", global.savingY);

ds_map_add(saveMap, "Difficulty", global.difficulty);
ds_map_add(saveMap, "Deaths", global.deaths);
ds_map_add(saveMap, "Time", global.time);

for (var i = 0; i < global.totalItems; i++)
    ds_map_add(saveMap, string_interp("Items[{0}]", i), global.items[i]);
    
for (var i = 0; i < global.totalBossItems; i++)
    ds_map_add(saveMap, string_interp("BossItems[{0}]", i), global.bossItems[i]);

ds_map_add(saveMap, "Clear", global.clear);
    
ds_map_secure_save(saveMap, string_interp("SaveData{0}", global.saveNum + 1));
ds_map_destroy(saveMap);
