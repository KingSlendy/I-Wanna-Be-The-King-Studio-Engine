///scrSetSystem()
window_set_fullscreen(global.fullscreenMode);

if (global.vsyncMode) {
    display_reset(0, global.vsyncMode);
}

texture_set_interpolation(global.smoothMode);
