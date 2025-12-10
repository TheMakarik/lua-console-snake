---Game incapsulation for the application
Game = {};

---Starts the game, loading the compontents and set updating timeout
function Game.start()
    Map.load();
    Snake.generate();
    Apple.generate();
    
    local running = true;
    local game_loop = coroutine.create(function()
        local last_update = os.clock();
        
        while true do
            local current_time = os.clock();
            
            if current_time - last_update >= Conf.SECONDS_TO_UPDATE then
                Map.draw();
                
                last_update = current_time;
                
               
            end;
            coroutine.yield();
        end;
    end);
   
    while running and coroutine.status(game_loop) ~= "dead" do
        coroutine.resume(game_loop);
        Game.sleep(Conf.SECONDS_TO_UPDATE);
    end;
end;

---Stop game on specific time
---@param seconds number seconds to wait
function Game.sleep(seconds)
    local start = os.clock();
    while os.clock() - start < seconds do end;
end;

---Stop the game components
function Game.stop()
    KeyReader.stop();
end