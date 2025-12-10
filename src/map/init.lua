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
    
    if y > Conf.GAME_HEIGHT then
        return;
    end;
    
    local x = 1;
    while x <= Conf.GAME_WIDTH do
        local cord = Cords.ctor(x, y, Conf.SPACE_CHAR);
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
    
    if x < 1 or x > Conf.GAME_WIDTH or y < 1 or y > Conf.GAME_HEIGHT then
        return nil;
    end;
    
    local index = (y - 1) * Conf.GAME_WIDTH + x;
    return Map.area[index];
end;

--Draw the map area
function Map.draw()
    os.execute("clear");
    local output = "";
    
    for y = 1, Conf.GAME_HEIGHT do
        for x = 1, Conf.GAME_WIDTH do
            local cord = Map.get(x, y);
                output = output .. cord.color .. cord.title .. Colors.reset;
        end;
        output = output .. "\\n";
    end;
    os.execute("echo '" .. output .. "'");
    

end;

return Map;