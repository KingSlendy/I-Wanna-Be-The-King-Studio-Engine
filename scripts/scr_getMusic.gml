///scr_getMusic()
switch (room) {
    case rm_title:
    case rm_files:
    case rm_options:
    case rm_diffs:
    case rm_test:
        song = bgm_guyRock;
        break;
        
    default: song = -1; break;
}

if (song != -2)
    scr_playMusic(song, true);
