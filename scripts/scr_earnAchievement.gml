///scr_earnAchievement(num)
var num = argument[0];

if (!global.achievements[num]) {
    var a = instance_create(0, 0, obj_achievement);
    a.num = num;
    a.info = global.achievementInfo[num];
    global.achievements[num] = true;
    scr_saveGame(false);
}
