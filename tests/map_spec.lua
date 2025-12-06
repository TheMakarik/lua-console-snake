package.path = package.path .. ";../src/?.lua";

describe("objects/map.lua tests", function ()
    it("must load height * width cords, function", function()
      _G.conf = {};
      _G.conf.height = 50;
      _G.conf.width = 50;

      local map = require("objects.map");
      map.load()
      assert.is_equal(#map.cords, _G.conf.height * _G.conf.width);
    end)
end)