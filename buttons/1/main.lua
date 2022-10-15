local button = {
	x = 100,
	y = 400,
	width = 200,
	height = 75
}

local function isMouseOnButton(b)
	local mx, my = love.mouse.getPosition()
	if b.x <= mx and b.x + b.width >= mx and b.y <= my and b.y + b.height >= my then
		return true
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