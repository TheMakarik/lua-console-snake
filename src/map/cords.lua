--[[
    Author: TheMakarik
    Under MIT
]]

---@class Cords
Cords = {};

local cords_mt = {};
cords_mt.__index = function (self, key)
    return Cords[key];
end

---Creates a cord instance
---@param x number - x position,
---@param y number - y position
---@param title string title for position
---@returns Cords instance
function Cords.ctor(x, y, title)
    local cord = {
        x = x;
        y = y;
        title = title;
        color = Colors.white;
    }
    setmetatable(cord, cords_mt);
    return cord;
end
