///scrInitGlobals()
scrDefaultControls();
scrLoadConfig();
scrInitOptions();

global.gameStarted = false;
global.gamePaused = false;
global.roomCaptionLast = "";

global.saveNum = 0;
global.difficulty = 0;
global.autosave = false;
global.savingRoom = noone;
global.savingX = noone;
global.savingY = noone;
global.savingGrav = 1;
global.lastxScale = 1;
scrResetSave();

global.currentMusic = -1;
global.restartMusic = false;

global.currentAvoidance = noone;

randomize();
