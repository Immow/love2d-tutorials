local buttons = {}

local function makeButton(x, y, width, height, text)
	table.insert(buttons, {
						x = x,
						y = y,
						width = width,
						height = height,
						hover = false,
						text = text
					}
				)
end

local function isMouseOnButton(button, mx, my)
	if button.x <= mx and button.x + button.width >= mx and button.y <= my and button.y + button.height >= my then
		return true
	else
		return false
	end
end

function love.load()
	makeButton(100, 100, 200, 75, "button1")
	makeButton(100, 200, 200, 75, "button2")
	makeButton(100, 300, 200, 75, "button3")
	makeButton(100, 400, 200, 75, "button4")
end

local function drawButtons()
	for _, button in ipairs(buttons) do
		if button.hover then
			love.graphics.setColor(1,0,0)
		else
			love.graphics.setColor(1,1,1)
		end
		love.graphics.rectangle("line", button.x, button.y, button.width, button.height)
		love.graphics.print(button.text, button.x, button.y)
	end
end

local function updateButtons()
	local mx, my = love.mouse.getPosition()
	for _, button in ipairs(buttons) do
		if isMouseOnButton(button, mx, my) then
			button.hover = true
		else
			button.hover = false
		end
	end
end

function love.mousepressed(mx,my,mouseButton)
	if mouseButton ~= 1 then return end

	for _, button in ipairs(buttons) do
		local hovered = isMouseOnButton(button, mx, my)
		if hovered then
			print("clicked button: "..button.text)
		end
	end
end

function love.draw()
	drawButtons()
end

function love.update(dt)
	updateButtons()
end