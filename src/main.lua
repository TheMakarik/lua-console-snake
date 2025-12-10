--[[
    Author: TheMakarik
    Under MIT
]]

package.path = package.path .. ";map/?.lua;" .. "map/init.lua;" .. "utils/?.lua;";

require "cords";
require "utils.snake_validator";
require "map";
require "colors";
require "conf";
require "elements.snake";
require "elements.apple";
require "game";



Game.start();