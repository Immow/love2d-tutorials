local button = {
	x = 100,
	y = 400,
	width = 200,
	height = 75,
}

local function isMouseOnButton(button)
	local mx, my = love.mouse.getPosition()
	if button.x <= mx and button.x + button.width >= mx and button.y <= my and button.y + button.height >= my then
		return true
	else
		return false
	end
end

function love.draw()
	if isMouseOnButton(button) then
		love.graphics.setColor(1,0,0)
	else
		love.graphics.setColor(1,1,1)
	end
	love.graphics.rectangle("line", button.x, button.y, button.width, button.height)
end