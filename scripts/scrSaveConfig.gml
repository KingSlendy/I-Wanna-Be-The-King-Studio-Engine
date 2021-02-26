///scrSaveConfig()
ini_open("Config.ini");

ini_write_real("Controls", "LeftButton", global.leftButton);
ini_write_real("Controls", "RightButton", global.rightButton);
ini_write_real("Controls", "JumpButton", global.jumpButton);
ini_write_real("Controls", "ShootButton", global.shootButton);
ini_write_real("Controls", "DownButton", global.downButton);
ini_write_real("Controls", "UpButton", global.upButton);
ini_write_real("Controls", "RestartButton", global.restartButton);
ini_write_real("Controls", "PauseButton", global.pauseButton);
ini_write_real("Controls", "SuicideButton", global.suicideButton);

ini_write_real("System", "SoundVolume", global.soundVolume);
ini_write_real("System", "Fullscreen", global.fullscreenMode);
ini_write_real("System", "VSync", global.vsyncMode);
ini_write_real("System", "SmoothMode", global.smoothMode);

ini_close();
