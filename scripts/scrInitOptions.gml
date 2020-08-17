///scrInitOptions()
global.debugMode = false;
global.encodingNum = 39; //This will decide what encoding number will be applied for encoding saves

global.gameName = "I Wanna Be The King Studio Engine";
global.difficultyNames = new_array("Medium", "Hard", "Very Hard", "Impossible", "Load Game");
global.menuMode = 0; //0: File Selection | 1: Difficulty Selection Room

global.totalSaves = 3;
global.totalItems = 8;
global.totalBossItems = 8;
global.totalAchievements = 2;
global.useAchievements = false;
global.autosaveItems = false;
global.autosaveAchievements = true;
scrInitAchievementInfo();

global.startRoom = rTest;
global.saveKey = global.shootButton;
global.deathMusic = true;
global.totalPauseDelay = 30;
global.timeWhenDead = true;
global.borderKills = true;
