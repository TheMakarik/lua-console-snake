--[[
    Author: TheMakarik
    Under MIT
]]

---The player's goal that he need to get at much times as possible 
Apple = {};

---Validates that snake is close for x and y position
---@param x number x position
---@param y number y position
---@return boolean result snake is close to the point
local function snake_is_close(x, y)
    for i = -1, 1, 1 do
        if SnakeValidator.is_snake(x + i, y) then
            return true;
        end
        if SnakeValidator.is_snake(x, y + i) then
            return true;
        end
    end
    return false;
end


---Generates the apple at the Map
---@param max_attempts number|nil maximum attempts to find free position
function Apple.generate(max_attempts)
    max_attempts = max_attempts or 100;
    
    for attempt = 1, max_attempts do
        local x_pos = math.random(1, Conf.GAME_WIDTH);
        local y_pos = math.random(1, Conf.GAME_HEIGHT);
        
        if snake_is_close(x_pos, y_pos) then
            local cord = Map.get(x_pos, y_pos);
            cord.title = Conf.APPLE_CHAR;
            cord.color = Conf.APPLE_COLOR;
            break;
        end;
    end;

end;

---Takes the apple if can, adds the score to user
function Apple.take_if_can()

end;

return Apple;