local area_painter = {};

function area_painter.paint(start_y)
    if start_y ~= nil and start_y > conf.height then
        return;
    end

    local y = start_y or 1;
    local x = 1;
    local command = "echo ";
    while x <= _G.conf.width do
        local cord = _G.map.get(x, y);
        command = command .. cord.espace_seq_color
        command = command .. cord.title;
        x = x + 1;
    end
    os.execute(command);
    area_painter.paint(y + 1);
end

return area_painter;