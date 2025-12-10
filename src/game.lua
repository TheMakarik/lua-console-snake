

Game = {};

function Game.start()
    Map.load();
    Snake.generate();
    Apple.generate();
    
    local running = true;
    local game_loop = coroutine.create(function()
        local last_update = os.clock();
        
        while true do
            local current_time = os.clock();
            
            if current_time - last_update >= Conf.seconds_to_update then
                Map.draw();
                
                last_update = current_time;
                
               
            end;
            coroutine.yield();
        end;
        
    
    end);
    
    
    while running and coroutine.status(game_loop) ~= "dead" do
        coroutine.resume(game_loop);
        Game.sleep(Conf.seconds_to_update);
    end;
end;


function Game.sleep(seconds)
    local start = os.clock();
    while os.clock() - start < seconds do end;
end;

return Game;