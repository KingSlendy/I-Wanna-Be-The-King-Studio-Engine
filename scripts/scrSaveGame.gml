#define scrSaveGame
///scrSaveGame(save_position)
var savePosition = argument[0];

if (savePosition) {
    global.savingRoom = room;
    global.savingX = objPlayer.x;
    global.savingY = objPlayer.y;
    
    with (objPlayer) {
        if (!place_free(floor(global.savingX), global.savingY)) {
            global.savingX++;
        }
        
        if (!place_free(global.savingX, floor(global.savingY))) {
            global.savingY++;
        }
    }
}

var saveMap = ds_map_create();

saveMap[? "SavingRoom"] = global.savingRoom;
saveMap[? "SavingX"] = global.savingX;
saveMap[? "SavingY"] = global.savingY;
saveMap[? "Grav"] = global.grav;

saveMap[? "Difficulty"] = global.difficulty;
saveMap[? "Deaths"] = global.deaths;
saveMap[? "Time"] = global.time;

for (var i = 0; i < global.totalItems; i++) {
    saveMap[? string_interp("Items[{0}]", i)] = global.items[i];
}
    
for (var i = 0; i < global.totalBossItems; i++) {
    saveMap[? string_interp("BossItems[{0}]", i)] = global.bossItems[i];
}
    
for (var i = 0; i < global.totalAchievements; i++) {
    saveMap[? string_interp("Achievements[{0}]", i)] = global.achievements[i];
}

saveMap[? "Clear"] = global.clear;

var file = file_text_open_write(scrSaveName(global.saveNum));
file_text_write_string(file, scrEncrypt(ds_map_write(saveMap)));
ds_map_destroy(saveMap);
file_text_close(file);

#define scrCompress
///scrCompress(text)
var text = argument[0];
var compressed = "";
var prev = "";
var count = 0;

for (var i = 1; i <= string_length(text); i++) {
    var char = string_char_at(text, i);
    
    if (prev != "" && char != prev) {
        if (count > 1) {
            compressed += string_interp("{0}{1}", prev, chr(70 + count - 1));
        } else {
            compressed += prev;
        }
        
        count = 0;
    }
    
    prev = char;
    count++;
    
    if (i == string_length(text)) {
        compressed += prev;
    }
}

return compressed;

#define scrEncrypt
///scrEncrypt(text)
var text = scrCompress(argument[0]);
var encrypted;
var length = string_length(global.savePassword);
var pass = 0;

for (var i = 1; i <= string_length(text); i++) {
    var n = ord(string_char_at(text, i));
    var encoded = string(n + ord(string_char_at(global.savePassword, pass + 1)));
    pass += (length + 1) % length;
    encrypted[i - 1] = encoded;
}

return base64_encode(string_join(encrypted, "_"));
