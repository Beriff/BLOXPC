--By Beriff, 2020

--Functions for BIOS "API"
--Disk's module script should accept a table of those functions as an only argument

state = "fine"
monitor = false
speaker = false
http = game:GetService('HttpService')
GET = function(url) return http:GetAsync(url) end

HDDmodule = require(game.Workspace.HDD.ModuleScript)
outerBIOSmodule = require(script.Parent.ModuleScript)

function BIOSgetState()
	return state
end

function BIOSconnectDriver(drv_directive, name)
	
	if drv_directive == "monitor" then
		monitor = workspace:FindFirstChild(name)
		return true
	elseif drv_directive == "speaker" then
		speaker = workspace:FindFirstChild(name)
		return true
	else
		return false
	end
end

function BIOSdetectUserInput(maxDelay)
	maxDelay = maxDelay or 0.5
	--[[maxDelay = maxDelay or 0.5
	for i,v in pairs (game.Players:GetChildren()) do
		local negative = v.PlayerGui.screenGUI.TextBox.Text 
		v.PlayerGui.screenGUI.TextBox.TextEditable = true
		local negative = v.PlayerGui.screenGUI.TextBox.Text
		v.PlayerGui.screenGUI.TextBox.TextEditable = true
		while true do
			local var2 = string.gsub(v.PlayerGui.screenGUI.TextBox.Text, negative, "")
			print(v.PlayerGui.screenGUI.TextBox.Text)
			print(negative)
			print(var2)
			if var2 ~= "" then
				v.PlayerGui.screenGUI.TextBox.TextEditable = false
				return string.gsub(v.PlayerGui.screenGUI.TextBox.Text, negative, "")
			end
			wait(0.5)
		end
		while true do
			v.PlayerGui.screenGUI.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
				print('i fired')
				v.PlayerGui.screenGUI.TextBox.TextEditable = false
				return string.gsub(v.PlayerGui.screenGUI.TextBox.Text, negative, "")
			end)
			wait(0.5)
		end
	end]]--
	
	while true do
		if outerBIOSmodule.getKeyPress() ~= nil then
			print('faggot detected')
			--outerBIOSmodule.accepted()
			return outerBIOSmodule.getKeyPress()
		end
		wait(maxDelay)
	end
	
end

function BIOSsendMonitorSignal(command, data)
	local function changeText(text)
		for i,v in pairs (game.Players:GetChildren()) do
			v.PlayerGui.screenGUI.TextBox.Text = text
		end
	end
	
	local function addText(text)
		for i,v in pairs (game.Players:GetChildren()) do
			v.PlayerGui.screenGUI.TextBox.Text = v.PlayerGui.screenGUI.TextBox.Text..text
		end
	end
	
	
	
	if command == "set" then
		changeText(data)
	elseif command == "add" then
		addText(data)
	end
	
end

function BIOSHDDedit(mode, index, data)
	
	if mode == "add" then
		HDDmodule.AddContent(data)
	elseif mode == "overwrite" then
		HDDmodule.exactAddContent(data, index)
	elseif mode == "get" then
		HDDmodule.getContent(index)
	end
	
end


BIOSAPIS = {
	["getState"] = BIOSgetState,
	["connectDriver"] = BIOSconnectDriver,
	["sendMonitorSignal"] = BIOSsendMonitorSignal,
	["HDDedit"] = BIOSHDDedit,
	["detectUserInput"] = BIOSdetectUserInput
}

--Execute boot sector
function execute(part)
	
	part:Remove()
	--print('works')
	if script.Parent.Parent:FindFirstChild('Handle') then
		BIOSsendMonitorSignal('set', ' ')
		local module = require(script.Parent.Parent.Handle.MyModule)
		module.exec(BIOSAPIS)
	else
		local f = loadstring(HDDmodule.getContent(0))
		f()
	end
end

function POST(part)
	if game.Workspace.HDD ~= nil and game.Workspace.videocard ~= nil then
		--thats the POST /shrug
		execute(part)
	end
end

script.Parent.Touched:Connect(POST)
