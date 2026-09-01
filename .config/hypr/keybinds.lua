---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal      = "kitty"
local fileManager   = "dolphin"
local menu          = "hyprlauncher"
local browser       = "zen-browser"
local music         = "spotify-launcher"
local mail          = "betterbird"
local notes         = "obsidian"

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen()) 
hl.bind(mainMod .. " + G", hl.dsp.layout("togglesplit"))    -- dwindle only
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(mail))    -- dwindle only
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(music)) 
hl.bind(mainMod .. " + V", function()
  local w = hl.get_active_window()
  if w and w.floating then
    hl.dispatch(hl.dsp.focus({ window = "tiled" }))
  else
    hl.dispatch(hl.dsp.focus({ window = "floating" }))
  end
end)
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(notes))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("pkill hyprpaper && hyprpaper &"))
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("hyprctl switchxkblayout current next"))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd("pkill hypridle && hypridle &"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("pkill waybar && waybar &"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + H",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J",  hl.dsp.window.move({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
-- for i = 1, 10 do
--     local key = i % 10 -- 10 maps to key 0
--     hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
--     hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
-- end
hl.bind(mainMod .. " + DOLLAR", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + BRACKETLEFT", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + BRACELEFT", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + PARENLEFT", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + NUMBERSIGN", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + ASCIICIRCUM", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + PARENRIGHT", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + BRACERIGHT", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + BRACKETRIGHT", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + ASTERISK", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT + DOLLAR", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + BRACKETLEFT", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + BRACELEFT", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + PARENLEFT", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + NUMBERSIGN", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + ASCIICIRCUM", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + PARENRIGHT", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + BRACERIGHT", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + BRACKETRIGHT", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + ASTERISK", hl.dsp.window.move({ workspace = 10 }))

-- Example special workspace (scratchpad)
-- hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
-- hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

