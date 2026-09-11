-----------------
---- AUTOSTART ----
-----------------

-- exec-once became hl.on("hyprland.start", fn). This event only fires once
-- when Hyprland actually starts, not on every `hyprctl reload` — matching
-- what exec-once used to do.
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
    hl.exec_cmd("systemctl --user restart hyprpolkitagent")
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("awww-daemon & awww img /home/rainy/Pictures/nix-d-nord-aurora.jpg")
    -- hl.exec_cmd("hyprctl output create headless Fake-Display")
    hl.exec_cmd("bash -c 'while true; do waybar; sleep 1; done'")
    hl.exec_cmd("hyprctl setcursor miku-cursor-linux 32")
    hl.exec_cmd("pwsp-daemon")
    hl.exec_cmd("dex --autostart --environment hyprland")
end)
