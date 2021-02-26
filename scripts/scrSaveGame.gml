#define scrSaveGame
///scrSaveGame(save_position)
var savePosition = argument[0];

if (savePosition) {
    global.savingRoom = room_get_name(room);
    global.savingX = floor(objPlayer.x);
    global.savingY = floor(objPlayer.y);
    global.savingGrav = global.grav;
    
    with (objPlayer) {
        if (!place_free(global.savingX, global.savingY)) {
            global.savingY++;
        }
    }
}

var saveMap = ds_map_create();

saveMap[? "SavingRoom"] = global.savingRoom;
saveMap[? "SavingX"] = global.savingX;
saveMap[? "SavingY"] = global.savingY;
saveMap[? "SavingGrav"] = global.savingGrav;

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
var prevChar = string_char_at(text, 1);
var count = 0;
var prevCount = 0;
var length = string_length(text);

for (var i = 1; i <= length + 1; i++) {
    var char = string_char_at(text, i);
    
    if (char != prevChar) {
        if (count != prevCount) {
            compressed += string_interp("-{0}-{1}", count, prevChar);
        } else {
            compressed += prevChar;
        }
        
        prevCount = count;
        count = 0;
    }
    
    prevChar = char;
    count += 1;
}

compressed = string_delete(compressed, 1, 1);
return compressed;

#define scrEncrypt
///scrEncrypt(text)
var text = scrCompress(string_copy(argument[0], 9, string_length(argument[0]) - 8));
var encrypted;
var length = string_length(global.savePassword);
var pass = 0;
var strLength = string_length(text);

for (var i = 1; i <= strLength; i++) {
    var n = ord(string_char_at(text, i));
    var encoded = string(n + ord(string_char_at(global.savePassword, pass + 1)));
    pass = (pass + 1) % length;
    encrypted[i - 1] = encoded;
}

return base64_encode(string_join(encrypted, "_"));