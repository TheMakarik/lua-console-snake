--[[
    Author: TheMakarik
    Under MIT
]]

---Standart util for reading key 
KeyReader = {};

os.execute("stty -g > /tmp/stty_backup");
os.execute("stty raw -echo");

---Stop reading keys
function KeyReader.stop()
    os.execute("stty $(cat /tmp/stty_backup)");
    os.execute("rm /tmp/stty_backup");
end

---Reads the key
---@return string char readed charecter
function KeyReader.read()
    return io.read(1);
end