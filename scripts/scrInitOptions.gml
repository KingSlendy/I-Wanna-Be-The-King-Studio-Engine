///scrInitOptions()
global.debugMode = false;

global.gameName = "I Wanna Be The King Studio Engine";
global.difficultyNames = new_array("Medium", "Hard", "Very Hard", "Impossible", "Load Game");

global.totalSaves = 3;
global.totalItems = 8;
global.totalBossItems = 8;
global.autosaveItems = false;
global.autosaveAchievements = true;
scrInitAchievements();

global.startRoom = rTest;
global.saveKey = global.shootButton;
global.deathMusic = true;
global.totalPauseDelay = 30;
