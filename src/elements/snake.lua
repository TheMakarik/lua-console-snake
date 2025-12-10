--[[
    Author: TheMakarik
    Under MIT
]]

---The players entity
Snake = {};

---Conrdinates that contains the snake
Snake._cords = {};

--Current snake direction
Snake._direction = "up";

---Change snake direction to left
function Snake.go_left()
    Snake._direction = "left";
end

---Change snake direction to rigth
function Snake.go_rigth()
    Snake._direction = "rigth";
end

---Change snake direction to down
function Snake.go_down()
    Snake._direction = "down";
end

---Change snake direction to up
function Snake.go_up()
    Snake._direction = "up";
end

--Generates the snake at the map
function Snake.generate()
    local center_x = math.floor(Conf.GAME_WIDTH / 2);
    local start_y = Conf.GAME_HEIGHT - 10;

    local head = Map.get(center_x, start_y);
    head.title = Conf.SNAKE_HEAD_CHAR;
    head.color = Conf.SNAKE_COLOR;
    head._direction = Snake._direction;
    table.insert(Snake._cords, head)

    local body_count = 1;
    while body_count <= Conf.SNAKE_LENGTH do
        local body = Map.get(center_x, start_y + body_count);
        body.title = Conf.SNAKE_BODY_CHAR;
        body.color = Conf.SNAKE_COLOR;
        body._direction = Snake._direction;
        body_count = body_count + 1;
        table.insert(Snake._cords, body);
    end

end
