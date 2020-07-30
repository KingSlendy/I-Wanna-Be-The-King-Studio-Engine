///scrLoadGame(normal)
var normal = argument[0];

if (instance_exists(objPlayer)) {
    with (objPlayer) {
        instance_destroy();
    } 
}

var saveMap = ds_map_secure_load(scrSaveName(global.saveNum));

global.savingX = saveMap[? "SavingX"];
global.savingY = saveMap[? "SavingY"];
global.grav = saveMap[? "Grav"];

global.difficulty = saveMap[? "Difficulty"];
global.deaths = saveMap[? "Deaths"];
global.time = saveMap[? "Time"];

for (var i = 0; i < global.totalItems; i++) {
    global.items[i] = saveMap[? string_interp("Items[{0}]", i)];
}
    
for (var i = 0; i < global.totalBossItems; i++) {
    global.bossItems[i] = saveMap[? string_interp("BossItems[{0}]", i)];
}
    
for (var i = 0; i < global.totalAchievements; i++) {
    global.achievements[i] = saveMap[? string_interp("Achievements[{0}]", i)]
}
    
global.clear = saveMap[? "Clear"];

if (normal) {
    global.gameStarted = true;
    global.autosave = false;
    instance_create(global.savingX, global.savingY, objPlayer);
    room_goto(saveMap[? "CurrentRoom"]);
}
