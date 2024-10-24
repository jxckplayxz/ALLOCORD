local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ProfilePicture = Instance.new("ImageLabel")
local UsernameLabel = Instance.new("TextLabel")
local MinimizeButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local OpenButton = Instance.new("TextButton")

-- Create the ScreenGui and add it to the player's PlayerGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame and add it to the ScreenGui
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Frame.Position = UDim2.new(0.5, -400, 0.5, -150)
Frame.Size = UDim2.new(0, 700, 0, 400)

-- Create the Title and add it to the Frame
Title.Parent = Frame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 20)
Title.Size = UDim2.new(1, 0, 0, 20)
Title.Font = Enum.Font.SourceSans
Title.Text = "My GUI"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true

-- Create the ProfilePicture and add it to the Frame
ProfilePicture.Parent = Frame
ProfilePicture.BackgroundTransparency = 1
ProfilePicture.Position = UDim2.new(0, 0, 1, 0)
ProfilePicture.Size = UDim2.new(0, 50, 0, 50)
ProfilePicture.Image = "rbxassetid://0" -- Replace with your profile picture asset ID

-- Create the UsernameLabel and add it to the Frame
UsernameLabel.Parent = Frame
UsernameLabel.BackgroundTransparency = 1
UsernameLabel.Position = UDim2.new(0, 0, 0, 375)
UsernameLabel.Size = UDim2.new(0, 100, 0, 20)
UsernameLabel.Font = Enum.Font.SourceSans
UsernameLabel.Text = game.Players.LocalPlayer.Name
UsernameLabel.TextColor3 = Color3.new(1, 1, 1)
UsernameLabel.TextScaled = true

-- Create the MinimizeButton and add it to the Frame
MinimizeButton.Parent = Frame
MinimizeButton.Position = UDim2.new(0.5, -25, 0, 0)
MinimizeButton.Size = UDim2.new(0, 50, 0, 50)
MinimizeButton.Text = "Minimize"
MinimizeButton.TextColor3 = Color3.new(1, 1, 1)
MinimizeButton.TextScaled = true
MinimizeButton.Font = Enum.Font.SourceSans
MinimizeButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)

-- Create the CloseButton and add it to the Frame
CloseButton.Parent = Frame
CloseButton.Position = UDim2.new(1, -50, 0, 0)
CloseButton.Size = UDim2.new(0, 50, 0, 50)
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextScaled = true
CloseButton.Font = Enum.Font.SourceSans
CloseButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)

-- Create the OpenButton and add it to the Frame
OpenButton.Parent = Frame
OpenButton.Position = UDim2.new(0.5, -75, 0, 0)
OpenButton.Size = UDim2.new(0, 50, 0, 50)
OpenButton.Text = "Open"
OpenButton.TextColor3 = Color3.new(1, 1, 1)
OpenButton.TextScaled = true
OpenButton.Font = Enum.Font.SourceSans
OpenButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)

-- Event listener for the Frame position changes
Frame.Changed:Connect(function()
    UsernameLabel.Position = Frame.Position + UDim2.new(0, 0, 0, 375)
end)

-- Event listener for the MinimizeButton click
MinimizeButton.MouseButton1Click:Connect(function()
    if Frame.Visible then
        Frame.Size = UDim2.new(0, 400, 0, 200)
        Title.Size = UDim2.new(1, 0, 0, 20)
        MinimizeButton.Text = "Maximize"
        MinimizeButton.BackgroundColor3 = Color3.new(0, 0, 0)
    else
        Frame.Size = UDim2.new(0, 700, 0, 400)
        Title.Size = UDim2.new(1, 0, 0, 20)
        MinimizeButton.Text = "Minimize"
        MinimizeButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
    end
    Frame.Visible = not Frame.Visible
end)

-- Event listener for the OpenButton click
OpenButton.MouseButton1Click:Connect(function()
    if not Frame.Visible then
        Frame.Size = UDim2.new(0, 700, 0, 400)
        Title.Size = UDim2.new(1, 0, 0, 20)
        Frame.Visible = true
    end
end)

-- Event listener for the CloseButton click
CloseButton.MouseButton1Click:Connect(function()
    Frame:Destroy()
end)
