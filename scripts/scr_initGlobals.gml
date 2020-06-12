///scr_initGlobals()
scr_defaultControls();

global.gameStarted = true;
global.roomCaptionLast = "";
global.saveNum = 0;
global.deaths = 0;
global.time = 0;
global.difficulty = 0;
global.autosave = true;

scr_initOptions();

//Saving variables
global.savingRoom = 0;
global.savingX = 0;
global.savingY = 0;
