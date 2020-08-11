///scrEarnAchievement(num)
var num = argument[0];

if (global.useAchievements && !global.achievements[num]) {
    var a = instance_create(0, 0, objAchievement);
    a.num = num;
    a.info = global.achievementInfo[num];
    global.achievements[num] = true;
    
    if (global.autosaveAchievements) {
        scrSaveGame(false);
    }
}
