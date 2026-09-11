-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/
-- Note: hl.env() sets vars before the display server initializes; syntax
-- differs slightly from the old `env = KEY,VAL` shell-style keyword.

hl.env("WLR_NO_HARDWARE_CURSORS", "1")
hl.env("WLR_RENDERER_ALLOW_SOFTWARE", "1")
hl.env("__NV_DISABLE_EXPLICIT_SYNC", "1")
hl.env("XCURSOR_SIZE", "32")
hl.env("XCURSOR_THEME", "miku-cursor-linux")
hl.env("HYPRCURSOR_SIZE", "32")
hl.env("QT_QPA_PLATFORMTHEME", "kvantum")
