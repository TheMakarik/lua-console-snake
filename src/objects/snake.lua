--[[
    Author: TheMakarik
    Under MIT
]]

Snake = {};

Snake._cords = {};
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

function Snake.go_up()
    Snake._direction = "up";
end