local MainMenu = {}
local Button = require("button")

function MainMenu:load()
	Button.new({x = 100, y = 100, text = "button1", state = "mainMenu"})
	Button.new({x = 100, y = 200, text = "button2", state = "mainMenu"})
	Button.new({x = 100, y = 300, text = "button3", state = "mainMenu"})
	Button.new({x = 100, y = 400, text = "Load Game", state = "mainMenu", fn = function () State.setScene("game") end})
end

function MainMenu:mousepressed(mx, my, mouseButton)
	Button:mousepressed(mx, my, mouseButton)
end

function MainMenu:draw()
	Button:draw()
end

function MainMenu:update(dt)
	Button:update(dt)
end

return MainMenu