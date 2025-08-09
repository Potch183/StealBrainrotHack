-- Instant Steal UI for Steal a Brainrot
local ScreenGui = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Button.Parent = ScreenGui
Button.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
Button.Size = UDim2.new(0, 150, 0, 50)
Button.Position = UDim2.new(0.5, -75, 0.8, 0)
Button.Text = "Instant Steal"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.Font = Enum.Font.GothamBold

Button.MouseButton1Click:Connect(function()
    local remote = game.ReplicatedStorage:FindFirstChild("RemoteEventNameHere")
    if remote then
        remote:FireServer("FinishSteal") -- Adjust args
    else
        warn("RemoteEvent not found!")
    end
end)
