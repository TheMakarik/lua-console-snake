_G.conf = require "conf";
_G.colors = require "colors"
_G.map = require "objects.map";
_G.area_painter = require "utils.area_painter";
_G.cord = require "entites/cord";

map.load();
area_painter.paint();
