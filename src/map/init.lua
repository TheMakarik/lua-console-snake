--[[
    Author: TheMakarik
    Under MIT
]]

---Default table that representing snake map
---@class Map
Map = {};
Map.area = {};

--- Loading Map.area
function Map.load(rec_y)
    assert(rec_y == nil or type(rec_y) == "number");
    
    local y = rec_y or 1;
    
    if y > Conf.height then
        return;
    end;
    
    local x = 1;
    while x <= Conf.width do
        local cord = Cords.ctor(x, y, Conf.space);
        cord.color = Colors.white;
        table.insert(Map.area, cord);
        x = x + 1;
    end;
    
    Map.load(y + 1);
end;

--- Getting coordinate
function Map.get(x, y)
    assert(type(x) == "number");
    assert(type(y) == "number");
    
    if x < 1 or x > Conf.width or y < 1 or y > Conf.height then
        return nil;
    end;
    
    local index = (y - 1) * Conf.width + x;
    return Map.area[index];
end;

--Draw the map area
function Map.draw()
    os.execute("clear");
    local output = "";
    
    for y = 1, Conf.height do
        for x = 1, Conf.width do
            local cord = Map.get(x, y);
            if cord then
                output = output .. cord.color .. cord.title .. Colors.reset;
            else
                output = output .. " ";
            end;
        end;
        output = output .. "\\n";
    end;
    os.execute("echo '" .. output .. "'");
    

end;

return Map;