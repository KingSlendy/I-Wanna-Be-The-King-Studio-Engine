///scr_resetSave()
global.deaths = 0;
global.time = 0;

for (var i = 0; i < global.totalItems; i++)
    global.items[i] = false;
    
for (var i = 0; i < global.totalBosses; i++)
    global.bosses[i] = false;

global.clear = false;
