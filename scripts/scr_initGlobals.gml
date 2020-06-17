///scr_initGlobals()
scr_loadConfig();
scr_initOptions();

global.gameStarted = false;
global.roomCaptionLast = "";

global.saveNum = 0;
global.difficulty = 3;
global.autosave = false;
global.savingX = 0;
global.savingY = 0;
scr_resetSave();

global.soundVolume = 1;
global.currentSong = -1;
