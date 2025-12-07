local cord = {};

function cord.ctor(x, y, title)
    assert(type(x) == 'number', "x must be number");
    assert(type(y) == 'number', "y must be number");

    return {
        title = title;
        x = x;
        y = y;
        is_frozen = false,
        espace_seq_color = _G.colors.white;
        freeze = function(self)
            self.is_frozen = true;
        end;
        can_move_left = function (self)
            local pre_result = self.x > 0 and self.x <= _G.conf.width;
            if not pre_result then
                return false;
            end
            local left_cord = _G.map.get(x - 1, y);
            return not(left_cord.is_frozen or left_cord.title == _G.conf.snake_char )
        end;
        can_move_rigth = function (self)
            
        end;
        can_move_up = function (self)
            
        end;
        can_move_dowm = function (self)
            
        end;
        ove_left = function (self)
            
        end;
        move_rigth = function (self)
            
        end;
        move_up = function (self)
            
        end;
        move_dowm = function (self)
            
        end;
    }
end

return cord;