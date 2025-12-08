--[[
    Author: TheMakarik
    Under MIT
]]

package.path = package.path .. ";map/?.lua;" .. "map/init.lua;";

require "colors";
require "conf";
require "cords";
require "map";
require "elements.snake";


Map.load();
Snake.generate();
Map.draw();