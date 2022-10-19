State = require("state")

function love.load()
	State:load()
end

function love.mousepressed(mx, my, mouseButton)
	State:mousepressed(mx, my, mouseButton)
end

function love.draw()
	State:draw()
end

function love.update(dt)
	State:update(dt)
end