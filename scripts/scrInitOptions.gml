///scrInitOptions()
//Game options
global.gameName = "I Wanna Be The King Studio Engine"; //Name that will be displayed on the game window
global.difficultyNames = new_array("Medium", "Hard", "Very Hard", "Impossible", "Load Game"); //Names and difficulties the game will have (PS: Load Game is always the last difficulty and always keep at least 2 difficulties)
global.menuMode = 0; //0: File Selection | 1: Difficulty Selection Room

//Save related options
global.savePassword = "iwbtkse123456789"; //This will decide what password will be applied for encoding saves, the longer the password is the encryption will be more secure
global.totalSaves = 3; //The number of save slots you wanna use
global.totalItems = 8; //The number of items your game may have
global.totalBossItems = 8; //The number of boss items your game may have
global.totalAchievements = 2; //The number of achievements your game may have 
global.useAchievements = false; //If you want to use achievements in your game, if this is set to false the scrEarnAchievement will do nothing
global.autosaveItems = false; //If this is set to true the items will be saved upon getting them
global.autosaveAchievements = true; //If this is set to true the achievement will be saved upon getting it
scrInitAchievementInfo(); //This is the info for each individual achievement

//Misc. options
global.startRoom = rTest; //The room where the game will start
global.useClearRoom = false; //If you wanna use the clear room (like a portal room) set this to true
global.clearRoom = rTest; //The room you wanna be sent to as a clear room
global.clearButton = ord("E"); //The button you wanna use to return to the clear room
global.deathMusic = true; //If the death music should play when dying
global.noPause = false; //If this is set to true you won't be able to pause the game
global.totalPauseDelay = 30; //Total of frames that should pass before the game lets you pause again
global.timeWhenDead = true; //Decides if it should continue running the timer when The Kid is dead
global.borderKills = true; //If the room border should kill you
global.dotKid = false; //Whether you wanna use Dot Kid instead of The Kid

scrInitDebug(); //Initializes all the debug options
