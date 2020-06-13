///scr_getMusic()
switch (room) {
    case rm_title:
    case rm_menu:
    case rm_selectDif:
    case rm_test:
        song = bgm_guyRock;
        break;
        
    default: song = -1; break;
}

if (song != -2)
    scr_playMusic(song, true);
