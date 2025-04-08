-- generate-hyprland-config.lua
local file = io.open(os.getenv("HOME") .. "/.config/hypr/hyprland.conf", "w")

file:write("bind = SUPER, Q, killactive\n")
file:write("exec-once = waybar\n")

-- Add logic to conditionally write config lines
if some_condition then
  file:write("monitor = DP-1, 2560x1440@144, 0x0, 1\n")
end

file:close()