local map = {};

map.cords = {};

function map.ctor_cord(x, y, title)
    assert(type(x) == 'number', "x must be number");
    assert(type(y) == 'number', "y must be number");

    return {
        title = title;
        x = x;
        y = y;
        is_frozen = false,
        freeze = function(self)
            self.is_frozen = true;
        end;
    }
end

function map.load()
    local x = 1;
    local y = 1;

    while y <= _G.conf.height do
        while x <= _G.conf.width do
          local cord = map.ctor_cord(x, y, _G.conf.space_char);
          table.insert(map.cords, cord);
          x = x + 1;
        end

        x = 1;
        y = y + 1;
    end
    

end

function map.get(x, y)
    assert(type(x) == 'number', "x must be number");
    assert(type(y) == 'number', "y must be number");

    assert(x <= _G.conf.width, "x must be lower or equals to " .. _G.conf.width);
    assert(y <= _G.conf.height, "y must be lower or equals to " .. _G.conf.height);

    return map.cords[(y - 1) * _G.conf.width + x]
end


return map;