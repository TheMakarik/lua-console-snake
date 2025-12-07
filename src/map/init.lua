--[[
    Author: TheMakarik
    Under MIT
]]

---Default table that representing snake map
---@class Map
Map = {};

---Area of Cords 
Map.area = {};

---Loading Map.area, must be 
---@param rec_y number|nil y for x positions, do not use, only for recurvice invokings
function Map.load(rec_y)
    assert(rec_y == nil or type(rec_y) == "number")

    local y = rec_y or 1;
    local x = 1;

    if y > Conf.height then
        return;
    end
    
    
    while x < Conf.width do
        table.insert(Map.area, Cords.ctor(x, y, Conf.space));
        x = x + 1;
    end
    Map.load(y + 1);
end

---Print area to console using echo
---@param rec_y number|nil y for x positions, do not use, only for recurvice invokings
---@param rec_command string|nil command to execute, do not use, only for recurvice invokings
function Map.draw(rec_y, rec_command)
    assert(rec_y == nil or type(rec_y) == "number");
    assert(rec_command == nil or type(rec_command) == "string");

    local y = rec_y or 1;
    local x = 1;

    if y > Conf.height then
        os.execute(rec_command .. "\n\"");
        return;
    end

    local command = rec_command or "echo \""
    while x < Conf.width do
        local cord = Map.get(x, y);
        command = command .. cord.color .. cord.title .. Colors.reset;
        x = x + 1;
    end
    command = command .. "\n"
    Map.draw(y + 1, command);
end

---Getting the cordinate
---@param x number x position,
---@param y number y position
---@return Cords instance with __nexindex, that changes the valua at the area
function Map.get(x, y)
    assert(type(x) == "number");
    assert(type(y) == "number");

    local cord_mt = {};
    cord_mt.__nexindex = function(self, key, value)
        self[key] = value;
        Map.area[self.x * self.y] = self;
    end;

    local cord = Map.area[x * y];
    setmetatable(cord, cord_mt);
    return cord;
end