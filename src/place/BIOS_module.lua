--Module script at game.workspace.BIOS.BIOS.ModuleScript
local module = {}

pressed = nil

function module.passKeyPress(keyNum)
	pressed = keyNum
end

function module.getKeyPress(keyNum)
	return pressed
end

function module.accepted()
	pressed = nil
end

return module
