local textBox = script.Parent
local debounce = false
local numbersolved = game.Workspace:WaitForChild("NumberSolved")
local correctsound = script.Parent.Parent:FindFirstChild("CorrectSound")
local wrongsound = script.Parent.Parent:FindFirstChild("WrongSound")

local function onEntered(enterPressed)
	if enterPressed then
		if debounce == false then
			debounce = true
			if textBox.Text == "12345" then
				textBox.Text = "Correct"
				numbersolved.Value = numbersolved.Value + 1
				correctsound:Play() 
			else
				local player = game.Players.LocalPlayer
				textBox.Text = "Wrong"
				wrongsound:Play()
				wait(3)
				player:Kick("Your such a noob") -- Delete this if you want to
				
			end
		end
	end
end

textBox.FocusLost:Connect(onEntered) 