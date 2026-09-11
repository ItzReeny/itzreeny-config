-----------------------------
---- WINDOWS AND WORKSPACES ----
-----------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "hyprquickframe-setup",
    match = { class = "hyprquickframe" },
    float = true,
    center = true,
    pin = true,
})

hl.window_rule({
    name = "gwenview-float",
    match = { class = "org.kde.gwenview" },
    float = true,
    center = true,
    size = "1200 800",
})

hl.window_rule({
    name = "veadotube-float",
    match = { class = "veadotube-mini" },
    float = true,
    center = true,
    size = "800 700",
})

hl.window_rule({
    name = "Resources-float",
    match = { class = "net.nokyan.Resources" },
    float = true,
    center = true,
    size = "850 600",
})

hl.window_rule({
    name = "linux-wallpaperengine-canvas",
    match = { class = "^linux-wallpaperengine$" },
    float = true,
    size = "100% 100%",
    pin = true,
    no_focus = true,
    focus_on_activate = false,
})

hl.window_rule({
    name = "hyprland-share-picker-float",
    match = { class = "^hyprland-share-picker$" },
    float = true,
    center = true,
    size = "500 400",
})

hl.window_rule({
    name = "obs-projector-workspace10",
    match = {
        class = "^com\\.obsproject\\.Studio$",
        title = "^Projector - Preview$",
    },
    workspace = "10 silent",
})
