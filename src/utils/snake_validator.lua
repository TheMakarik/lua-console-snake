
---Utils for
SnakeValidator = {};

---Check that the Cord is snake
---@param x number x cordinate
---@param y number y cordinate
---@return boolean result is the cord snake
function SnakeValidator.is_snake(x, y)
    local cord = Map.get(x, y);
    if cord == nil then
        return false;
    end
    return cord.title ~= Conf.snake_body or cord.title ~= Conf.snake_head;
end