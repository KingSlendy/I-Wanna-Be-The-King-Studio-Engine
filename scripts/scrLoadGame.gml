#define scrLoadGame
///scr_loadGame(normal)
var normal = argument[0];

if (instance_exists(objPlayer)) {
    with (objPlayer) {
        instance_destroy();
    } 
}

var file = file_text_open_read(scrSaveName(global.saveNum));
var saveMap = ds_map_create();
ds_map_read(saveMap, scrDecrypt(base64_decode(file_text_read_string(file))));

global.savingRoom = saveMap[? "SavingRoom"];
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
    room_goto(global.savingRoom);
}

ds_map_destroy(saveMap);
file_text_close(file);

#define scrDecrypt
///scrDecrypt(text)
var text = argument[0];
var decrypted = "";
var encoded = string_split(text, "_");

for (var i = 0; i < array_length_1d(encoded); i++) {
    var decoded = chr(real(base64_decode(encoded[i])) - global.encodingKey);
    decrypted += decoded
}

return decrypted;