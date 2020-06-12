///scr_initGlobals()
scr_defaultControls();
scr_initOptions();

global.gameStarted = true;
global.roomCaptionLast = "";
global.saveNum = 0;
global.deaths = 0;
global.time = 0;
global.difficulty = 0;
global.autosave = true;
global.savingX = 0;
global.savingY = 0;

for (var i = 0; i < global.totalItems; i++)
    global.items[i] = false;
    
for (var i = 0; i < global.totalBosses; i++)
    global.bosses[i] = false;

global.clear = false;
