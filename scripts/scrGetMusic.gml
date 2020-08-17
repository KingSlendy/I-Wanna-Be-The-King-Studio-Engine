///scrGetMusic()
global.restartMusic = false;

switch (room) {
    case rTitle:
    case rFiles:
    case rOptions:
    case rDiffs:
    case rTest:
        song = bgmGuyRock;
        break;
        
    default: song = -1; break;
}

if (song != -2) {
    scrPlayMusic(song, true);
}
