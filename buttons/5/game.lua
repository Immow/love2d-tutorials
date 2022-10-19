local Game = {}
local Button = require("button")

function Game:load()
	Button.new({x = 100, y = 100, text = "Main Menu", state = "game", fn = function () State.setScene("mainMenu") end})
	Button.new({x = 100, y = 200, text = "gameButton1", state = "game"})
end

function Game:mousepressed(mx, my, mouseButton)
	Button:mousepressed(mx, my, mouseButton)
end

function Game:draw()
	Button:draw()
end

function Game:update(dt)
	Button:update(dt)
end

return Game