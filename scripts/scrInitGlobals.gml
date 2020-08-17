///scrInitGlobals()
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
global.lastxScale = 1;
scrResetSave();

global.soundVolume = 1;
global.currentMusic = -1;
global.restartMusic = false;

randomize();
