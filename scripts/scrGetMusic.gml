///scrGetMusic()
var loop = true;
global.restartMusic = false;

switch (room) {
    case rTitle:
    case rFiles:
    case rOptions:
    case rDiffs:
    case rTest:
        music = bgmGuyRock;
        break;
        
    case rMiku:
        music = bgmMiku;
        loop = false;
        global.restartMusic = true;
        break;
        
    default: music = -1; break;
}

if (music != -2) {
    scrPlayMusic(music, loop);
}
