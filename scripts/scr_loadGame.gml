///scr_loadGame(normal)
var normal = argument[0];

if (instance_exists(obj_player)) {
    with (obj_player) {
        instance_destroy();
    } 
}

var saveMap = ds_map_secure_load(string_interp("SaveData{0}", global.saveNum + 1));

global.savingX = saveMap[? "SavingX"];
global.savingY = saveMap[? "SavingY"];

global.difficulty = saveMap[? "Difficulty"];
global.deaths = saveMap[? "Deaths"];
global.time = saveMap[? "Time"];

for (var i = 0; i < global.totalItems; i++)
    global.items[i] = saveMap[? string_interp("Items{0}", i)];
    
for (var i = 0; i < global.totalItems; i++)
    global.bosses[i] = saveMap[? string_interp("Bosses{0}", i)];
    
global.clear = saveMap[? "Clear"];

if (normal) {
    global.gameStarted = true;
    global.autosave = false;
    instance_create(global.savingX, global.savingY, obj_player);
    room_goto(saveMap[? "CurrentRoom"]);
}
