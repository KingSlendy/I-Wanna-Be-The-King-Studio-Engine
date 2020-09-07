#define scrLoadGame
///scrLoadGame(load_position)
var loadPosition = argument[0];

if (instance_exists(objPlayer)) {
    instance_destroy(objPlayer);
}

var file = file_text_open_read(scrSaveName(global.saveNum));
var saveMap = ds_map_create();
ds_map_read(saveMap, scrDecrypt(file_text_read_string(file)));

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

if (loadPosition) {
    global.gameStarted = true;
    global.autosave = false;
    instance_create(global.savingX, global.savingY, objPlayer);
    room_goto(global.savingRoom);
}

ds_map_destroy(saveMap);
file_text_close(file);

#define scrDecompress
///scrDecompress(text)
var text = argument[0];
var decompressed = "";
var sections = string_split(text, "-");

for (var i = 0; i < array_length_1d(sections); i += 2) {
    var count = real(sections[i]);
    var chars = sections[i + 1];
    
    for (var j = 1; j <= string_length(chars); j++) {
        repeat (count) {
            decompressed += string_char_at(chars, j);
        }
    }
}

return decompressed;

#define scrDecrypt
///scrDecrypt(text)
var text = base64_decode(argument[0]);
var decrypted = "";
var length = string_length(global.savePassword);
var pass = 0;
var encoded = string_split(text, "_");

for (var i = 0; i < array_length_1d(encoded); i++) {
    var decoded = chr(real(encoded[i]) - ord(string_char_at(global.savePassword, pass + 1)));
    pass = (pass + 1) % length;
    decrypted += decoded;
}

return scrDecompress(decrypted);