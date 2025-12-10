--[[
    Author: TheMakarik
    Under MIT
]]

---Game configuration
Conf = {};

--Snake game's area width
Conf.GAME_WIDTH = 64;

--Snake game's area height
Conf.GAME_HEIGHT= 32;

---Snake game's space char
Conf.SPACE_CHAR = "@";

---Snake game's space color
Conf.SPACE_COLOR = Colors.white;

---Snake game's snake's head char
Conf.SNAKE_HEAD_CHAR = "*";

---Snake game's snake's body
Conf.SNAKE_BODY_CHAR = "0";

---Snake game's snake's color
Conf.SNAKE_COLOR = Colors.green;

---Snake game's apple char
Conf.APPLE_CHAR = "^";

---Snake game's apple's color
Conf.APPLE_COLOR = Colors.red;

---Snake game's snake start length
Conf.SNAKE_LENGTH = 3;

---Seconds to wait for updating snake output
Conf.SECONDS_TO_UPDATE = 0.3;

---Key that users need to click to exit the game
Conf.EXIT_KEY = "q";