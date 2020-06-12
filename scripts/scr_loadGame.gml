///scr_loadGame(load_file)
var loadFile = argument[0];

if (loadFile) {
    var saveMap = ds_map_secure_load(string_interp("SaveData{0}", global.saveNum + 1));
    
    global.savingRoom = saveMap[? "SavingRoom"];
    global.savingX = saveMap[? "SavingX"];
    global.savingY = saveMap[? "SavingY"];
    
    global.deaths = saveMap[? "Deaths"];
    global.time = saveMap[? "Time"];
}

if (!instance_exists(obj_player))
    instance_create(0, 0, obj_player);

obj_player.x = global.savingX;
obj_player.y = global.savingY;
obj_player.vspeed = 0;
obj_player.jumpsLeft = obj_player.jumpsNum - 1;

room_goto(global.savingRoom);
