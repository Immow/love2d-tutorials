local button = {
	x = 100,
	y = 400,
	width = 200,
	height = 75,
	hover = false,
	text = "myButton"
}

local function isMouseOnButton(button, mx, my)
	if button.x <= mx and button.x + button.width >= mx and button.y <= my and button.y + button.height >= my then
		return true
	else
		return false
	end
end

function love.draw()
	if button.hover then
		love.graphics.setColor(1,0,0)
	else
		love.graphics.setColor(1,1,1)
	end
	love.graphics.rectangle("line", button.x, button.y, button.width, button.height)
	love.graphics.print(button.text, button.x, button.y)
end

function love.update(dt)
	local mx, my = love.mouse.getPosition()
	if isMouseOnButton(button, mx, my) then
		button.hover = true
	else
		button.hover = false
	end
end

function love.mousepressed(mx,my,mouseButton)
	if button ~= 1 then return end
	local hovered = isMouseOnButton(button, mx, my)
	if hovered and mouseButton then
		print("clicked")
	end
end