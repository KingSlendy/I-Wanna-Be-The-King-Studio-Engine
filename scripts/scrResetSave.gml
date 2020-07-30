///scrResetSave()
global.grav = 1;
global.deaths = 0;
global.time = 0;

for (var i = 0; i < global.totalItems; i++) {
    global.items[i] = false;
}
    
for (var i = 0; i < global.totalBossItems; i++) {
    global.bossItems[i] = false;
}
    
for (var i = 0; i < global.totalAchievements; i++) {
    global.achievements[i] = false;
}

global.clear = false;
