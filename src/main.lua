--[[
    Author: TheMakarik
    Under MIT
]]

package.path = package.path .. ";map/?.lua;" .. "map/init.lua";

require "colors";
require "conf";
require "cords";
require "map";

Map.load();
Map.draw();