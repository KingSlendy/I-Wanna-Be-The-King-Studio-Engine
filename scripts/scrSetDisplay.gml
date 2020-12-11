///scrSetSystem()
window_set_fullscreen(global.fullscreenMode);

if (global.vsyncMode) {
    display_reset(0, global.vsyncMode);
}

texture_set_interpolation(global.smoothMode);
display_set_gui_size(surface_get_width(application_surface), surface_get_height(application_surface));
