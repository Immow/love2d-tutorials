local State = {}
local scene = {}
local currentScene = nil

function State:load()
	State.setScene("mainMenu")
end

function State:update(dt)
	if scene.update then scene:update(dt) end
end

function State:draw()
	if scene.draw then scene:draw() end
end

function State:mousepressed(x,y,button,istouch,presses)
	if scene.mousepressed then scene:mousepressed(x,y,button,istouch,presses) end
end

function State.setScene(nextScene)
	scene = require(nextScene)
	currentScene = nextScene
	if scene.load then scene:load() end
end

function State.getScene()
	if currentScene then
		return currentScene
	else
		error("No scene found")
	end
end

return State