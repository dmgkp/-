print("反挂机开启")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local LBLG = Instance.new("ScreenGui")
local LBL = Instance.new("TextLabel")
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("死亡时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "综合罗布勒斯脚本", HidePremium = false, SaveConfig = true, IntroText = "综合脚本 - 结合多个脚本功能", ConfigFolder = "综合脚本"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "综合罗布勒斯脚本"; Text ="欢迎使用综合罗布勒斯脚本"; Duration = 4; })

local about = Window:MakeTab({
    Name = "作者信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("作者: 综合脚本团队")
about:AddParagraph("此脚本结合了多个开源脚本的功能")
about:AddParagraph("仅供娱乐和学习使用")

local playerInfo = Window:MakeTab({
    Name = "玩家信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

playerInfo:AddParagraph("您的用户名:", " "..game.Players.LocalPlayer.Name.."")
playerInfo:AddParagraph("您的注入器:", " "..identifyexecutor().."")
playerInfo:AddParagraph("您当前服务器的ID", " "..game.GameId.."")

local announcement = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

announcement:AddParagraph("此脚本为免费缝合脚本")
announcement:AddParagraph("仅供娱乐和学习使用")
announcement:AddParagraph("请勿用于非法用途")
announcement:AddParagraph("使用本脚本造成的任何后果由使用者自行承担")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 450, 0, 350)
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BackgroundTransparency = 0.1
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = MainUI

local BorderFrame = Instance.new("Frame")
BorderFrame.Name = "BorderFrame"
BorderFrame.Size = UDim2.new(1, 0, 1, 0)
BorderFrame.Position = UDim2.new(0, 0, 0, 0)
BorderFrame.BackgroundTransparency = 1
BorderFrame.BorderSizePixel = 2
BorderFrame.BorderColor3 = Color3.fromRGB(80, 80, 80)
BorderFrame.Parent = MainFrame

local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 35)
TitleBar.Position = UDim2.new(0, 0, 0, 0)
TitleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TitleBar.BackgroundTransparency = 0.2
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.Size = UDim2.new(1, -90, 1, 0)
TitleLabel.Position = UDim2.new(0, 15, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "综合罗布勒斯脚本 v3.5.0"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextStrokeTransparency = 0.5
TitleLabel.Font = Enum.Font.SourceSansSemibold
TitleLabel.TextSize = 18
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 2.5)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.BackgroundTransparency = 0.3
CloseButton.BorderSizePixel = 0
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 16
CloseButton.AutoButtonColor = false
CloseButton.Parent = TitleBar

CloseButton.MouseEnter:Connect(function()
    CloseButton.BackgroundTransparency = 0
end)

CloseButton.MouseLeave:Connect(function()
    CloseButton.BackgroundTransparency = 0.3
end)

CloseButton.MouseButton1Click:Connect(function()
    MainUI:Destroy()
end)

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -70, 0, 2.5)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
MinimizeButton.BackgroundTransparency = 0.3
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Font = Enum.Font.SourceSansBold
MinimizeButton.TextSize = 16
MinimizeButton.AutoButtonColor = false
MinimizeButton.Parent = TitleBar

MinimizeButton.MouseEnter:Connect(function()
    MinimizeButton.BackgroundTransparency = 0
end)

MinimizeButton.MouseLeave:Connect(function()
    MinimizeButton.BackgroundTransparency = 0.3
end)

local ContentFrame = Instance.new("Frame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Size = UDim2.new(1, 0, 1, -35)
ContentFrame.Position = UDim2.new(0, 0, 0, 35)
ContentFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ContentFrame.BackgroundTransparency = 0.1
ContentFrame.BorderSizePixel = 0
ContentFrame.Parent = MainFrame

local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 130, 1, 0)
Sidebar.Position = UDim2.new(0, 0, 0, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Sidebar.BackgroundTransparency = 0.2
Sidebar.BorderSizePixel = 0
Sidebar.Parent = ContentFrame

local SidebarBorder = Instance.new("Frame")
SidebarBorder.Name = "SidebarBorder"
SidebarBorder.Size = UDim2.new(0, 2, 1, 0)
SidebarBorder.Position = UDim2.new(1, -2, 0, 0)
SidebarBorder.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SidebarBorder.BorderSizePixel = 0
SidebarBorder.Parent = Sidebar

local MainContent = Instance.new("Frame")
MainContent.Name = "MainContent"
MainContent.Size = UDim2.new(1, -130, 1, 0)
MainContent.Position = UDim2.new(0, 130, 0, 0)
MainContent.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainContent.BackgroundTransparency = 0.15
MainContent.BorderSizePixel = 0
MainContent.Parent = ContentFrame

local ContentScrolling = Instance.new("ScrollingFrame")
ContentScrolling.Name = "ContentScrolling"
ContentScrolling.Size = UDim2.new(1, -15, 1, -15)
ContentScrolling.Position = UDim2.new(0, 5, 0, 5)
ContentScrolling.BackgroundTransparency = 1
ContentScrolling.BorderSizePixel = 0
ContentScrolling.CanvasSize = UDim2.new(0, 0, 0, 0)
ContentScrolling.ScrollBarThickness = 8
ContentScrolling.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)
ContentScrolling.Parent = MainContent

local TabButtons = Instance.new("Frame")
TabButtons.Name = "TabButtons"
TabButtons.Size = UDim2.new(1, 0, 1, -15)
TabButtons.Position = UDim2.new(0, 0, 0, 5)
TabButtons.BackgroundTransparency = 1
TabButtons.Parent = Sidebar



local isMinimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    ContentFrame.Visible = not isMinimized
    MinimizeButton.Text = isMinimized and "+" or "-"
    MainFrame.Size = isMinimized and UDim2.new(0, 400, 0, 30) or UDim2.new(0, 400, 0, 300)
end)





local LBLG = Instance.new("ScreenGui", game.CoreGui)
local LBL = Instance.new("TextLabel", game.CoreGui)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = {}

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("综合脚本 "..os.date("%H").."时"..os.date("%M").."分"..os.date("%S").."秒")
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local Enhanced = Window:MakeTab({
    Name = "增强功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Enhanced:AddButton({
    Name = "FPS提升",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
    end    
})

Enhanced:AddButton({
    Name = "光影效果",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))()
    end
})

Enhanced:AddButton({
    Name = "光影效果_2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
    end
})

Enhanced:AddButton({
    Name = "超高画质",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
    end
})

Enhanced:AddButton({
    Name = "旋转效果",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
    end
})

Enhanced:AddButton({
    Name = "转起来效果",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
    end
})

Enhanced:AddButton({
    Name = "踏空行走",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
    end
})

Enhanced:AddButton({
    Name = "电脑键盘",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
    end    
})

Enhanced:AddButton({
    Name = "飞车效果",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
    end
})

Enhanced:AddButton({
    Name = "动作效果",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})

Enhanced:AddButton({
    Name = "飞行功能",
    Callback = function()
        loadstring(game:HttpGet("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\5...
    end
})

Enhanced:AddButton({
    Name = "飞行V3",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/飞行V3.lua"))()
    end
})

Enhanced:AddButton({
    Name = "飞行V3",
    Callback = function()

        local BeiFengFlyV3 = Instance.new("ScreenGui")
        local Main = Instance.new("Frame")
        local TopBar = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local Close = Instance.new("ImageButton")
        local Minimize = Instance.new("ImageButton")
        local Content = Instance.new("Frame")
        local Up = Instance.new("TextButton")
        local Down = Instance.new("TextButton")
        local Plus = Instance.new("TextButton")
        local Mine = Instance.new("TextButton")
        local Speed = Instance.new("TextLabel")
        local Fly = Instance.new("TextButton")

        BeiFengFlyV3.Name = "BeiFengFlyV3"
        BeiFengFlyV3.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        BeiFengFlyV3.ResetOnSpawn = false

        Main.Name = "Main"
        Main.Parent = BeiFengFlyV3
        Main.AnchorPoint = Vector2.new(0, 0.5)
        Main.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
        Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Main.BorderSizePixel = 0
        Main.BackgroundTransparency = 1.000
        Main.Position = UDim2.new(0.100000001, 0, 0.449999988, 0)
        Main.Size = UDim2.new(0, 190, 0, 130)

        TopBar.Name = "TopBar"
        TopBar.Parent = Main
        TopBar.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
        TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TopBar.BorderSizePixel = 1
        TopBar.Size = UDim2.new(1, 0, 0, 30)

        Title.Name = "Title"
        Title.Parent = TopBar
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Title.BorderSizePixel = 0
        Title.Size = UDim2.new(0, 115, 0, 30)
        Title.Font = Enum.Font.Ubuntu
        Title.Text = "北风中心-飞行V3"
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextSize = 17.000

        Close.Name = "Close"
        Close.Parent = TopBar
        Close.AnchorPoint = Vector2.new(1, 0)
        Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Close.BackgroundTransparency = 1.000
        Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Close.BorderSizePixel = 0
        Close.Position = UDim2.new(0.968421042, 0, 0.233333334, 0)
        Close.Size = UDim2.new(0, 15, 0, 15)
        Close.Image = "rbxassetid://7072725342"

        Minimize.Name = "Minimize"
        Minimize.Parent = TopBar
        Minimize.AnchorPoint = Vector2.new(1, 0)
        Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Minimize.BackgroundTransparency = 1.000
        Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Minimize.BorderSizePixel = 0
        Minimize.Position = UDim2.new(0.857894719, 0, 0.233333334, 0)
        Minimize.Size = UDim2.new(0, 15, 0, 15)
        Minimize.Image = "rbxassetid://7072719338"

        Content.Name = "Content"
        Content.Parent = Main
        Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Content.BackgroundTransparency = 1.000
        Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Content.BorderSizePixel = 0
        Content.Position = UDim2.new(0, 0, 0.230769232, 0)
        Content.Size = UDim2.new(1, 0, 1, -30)

        Up.Name = "Up"
        Up.Parent = Content
        Up.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        Up.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Up.BorderSizePixel = 1
        Up.Size = UDim2.new(0, 50, 0, 50)
        Up.Font = Enum.Font.Ubuntu
        Up.Text = "上升"
        Up.TextColor3 = Color3.fromRGB(255, 255, 255)
        Up.TextSize = 18.000

        Down.Name = "Down"
        Down.Parent = Content
        Down.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        Down.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Down.BorderSizePixel = 1
        Down.Position = UDim2.new(0, 0, 0.5, 0)
        Down.Size = UDim2.new(0, 50, 0, 50)
        Down.Font = Enum.Font.Ubuntu
        Down.Text = "下降"
        Down.TextColor3 = Color3.fromRGB(255, 255, 255)
        Down.TextSize = 18.000

        Plus.Name = "Plus"
        Plus.Parent = Content
        Plus.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        Plus.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Plus.BorderSizePixel = 1
        Plus.Position = UDim2.new(0.263157904, 0, 0, 0)
        Plus.Size = UDim2.new(0, 50, 0, 50)
        Plus.Font = Enum.Font.Ubuntu
        Plus.Text = "+"
        Plus.TextColor3 = Color3.fromRGB(255, 255, 255)
        Plus.TextSize = 20.000

        Mine.Name = "Mine"
        Mine.Parent = Content
        Mine.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
        Mine.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Mine.BorderSizePixel = 1
        Mine.Position = UDim2.new(0.263157904, 0, 0.5, 0)
        Mine.Size = UDim2.new(0, 50, 0, 50)
        Mine.Font = Enum.Font.Ubuntu
        Mine.Text = "-"
        Mine.TextColor3 = Color3.fromRGB(255, 255, 255)
        Mine.TextSize = 28.000

        Speed.Name = "Speed"
        Speed.Parent = Content
        Speed.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
        Speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Speed.BorderSizePixel = 1
        Speed.Position = UDim2.new(0.526315808, 0, 0, 0)
        Speed.Size = UDim2.new(0, 90, 0, 50)
        Speed.Font = Enum.Font.Cartoon
        Speed.Text = "1"
        Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
        Speed.TextSize = 24.000

        Fly.Name = "Fly"
        Fly.Parent = Content
        Fly.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        Fly.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Fly.BorderSizePixel = 1
        Fly.Position = UDim2.new(0.526315808, 0, 0.5, 0)
        Fly.Size = UDim2.new(0, 90, 0, 50)
        Fly.Font = Enum.Font.Ubuntu
        Fly.Text = "飞"
        Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
        Fly.TextSize = 20.000

        local UserInputService = game:GetService("UserInputService")
        local dragging
        local dragInput
        local dragStart
        local startPos

        local function update(input)
            local delta = input.Position - dragStart
            Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        Main.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = Main.Position

                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)

        Main.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end)

        local Mini = false

        Minimize.MouseButton1Click:Connect(function()
            Mini = not Mini
            if not Mini then
                Minimize.Image = "rbxassetid://7072720870"
            else
                Minimize.Image = "rbxassetid://7072719338"
            end
            Content.Visible = Mini
        end)

        Close.MouseButton1Click:Connect(function()
            BeiFengFlyV3:Destroy()
        end)

        nowe = false
        speeds = 1
        local speaker = game:GetService("Players").LocalPlayer

        Fly.MouseButton1Down:connect(function()
            if nowe == true then
                nowe = false
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
                speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
            else 
                nowe = true
                for i = 1, speeds do
                    spawn(function()
                        local hb = game:GetService("RunService").Heartbeat    
                        tpwalking = true
                        local chr = game.Players.LocalPlayer.Character
                        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                        while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                            if hum.MoveDirection.Magnitude > 0 then
                                chr:TranslateBy(hum.MoveDirection)
                            end
                        end
                    end)
                end

                game.Players.LocalPlayer.Character.Animate.Disabled = true
                local Char = game.Players.LocalPlayer.Character
                local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
                for i,v in next, Hum:GetPlayingAnimationTracks() do
                    v:AdjustSpeed(0)
                end

                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
                speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
                speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
            end

            local plr = game.Players.LocalPlayer
            local UpperTorso = plr.Character.LowerTorso
            local flying = true
            local deb = true
            local ctrl = {f = 0, b = 0, l = 0, r = 0}
            local lastctrl = {f = 0, b = 0, l = 0, r = 0}
            local maxspeed = 50
            local speed = 0
            local bg = Instance.new("BodyGyro", UpperTorso)

            bg.P = 9e4
            bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            bg.cframe = UpperTorso.CFrame
            local bv = Instance.new("BodyVelocity", UpperTorso)
            bv.velocity = Vector3.new(0,0.1,0)
            bv.maxForce = Vector3.new(9e9, 9e9, 9e9)

            if nowe == true then
                plr.Character.Humanoid.PlatformStand = true
            end

            while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
                wait()
                if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                    speed = speed+.5+(speed/maxspeed)

                    if speed > maxspeed then
                        speed = maxspeed
                    end
                elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
                    speed = speed-1

                    if speed < 0 then
                        speed = 0
                    end
                end

                if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                    lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
                elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                    bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
                else
                    bv.velocity = Vector3.new(0,0,0)
                end
                bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
            end

            ctrl = {f = 0, b = 0, l = 0, r = 0}
            lastctrl = {f = 0, b = 0, l = 0, r = 0}
            speed = 0
            bg:Destroy()
            bv:Destroy()
            plr.Character.Humanoid.PlatformStand = false
            game.Players.LocalPlayer.Character.Animate.Disabled = false
            tpwalking = false
        end)

        Up.MouseButton1Down:connect(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
        end)

        Down.MouseButton1Down:connect(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2,0)
        end)

        game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
            wait(0.7)
            game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
            game.Players.LocalPlayer.Character.Animate.Disabled = false
        end)

        Plus.MouseButton1Down:connect(function()
            speeds = speeds + 1
            Speed.Text = speeds
            if nowe == true then
                tpwalking = false

                for i = 1, speeds do
                    spawn(function()
                        local hb = game:GetService("RunService").Heartbeat    
                        tpwalking = true
                        local chr = game.Players.LocalPlayer.Character
                        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                        while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                            if hum.MoveDirection.Magnitude > 0 then
                                chr:TranslateBy(hum.MoveDirection)
                            end
                        end
                    end)
                end
            end
        end)

        Mine.MouseButton1Down:connect(function()
            if speeds == 1 then
                Speed.TextSize = 19.000
                Speed.Text = '速度不能小于1'
                wait(1)
                Speed.TextSize = 24.000
                Speed.Text = speeds
            else
                speeds = speeds - 1
                Speed.Text = speeds
                if nowe == true then
                    tpwalking = false

                    for i = 1, speeds do
                        spawn(function()
                            local hb = game:GetService("RunService").Heartbeat    
                            tpwalking = true
                            local chr = game.Players.LocalPlayer.Character
                            local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                            while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                                if hum.MoveDirection.Magnitude > 0 then
                                    chr:TranslateBy(hum.MoveDirection)
                                end
                            end
                        end)
                    end
                end
            end
        end)
    end
})

Enhanced:AddButton({
    Name = "DOORS引导之光手电",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Matthew201322/Doors-Scriptee/refs/heads/main/Shakelight.lua"))()
    end
})

Enhanced:AddButton({
    Name = "DOORS控制物品变大",
    Callback = function()
        loadstring(game:HttpGet('https://gist.githubusercontent.com/IdkMyNameLoll/f0178af2301ca90c09895f10f3e7bd4b/raw/46899ccc3626f3485d85f990012f7ef37ae52e5e/resizerDoorsRemake'))()
    end
})

Enhanced:AddButton({
    Name = "DOORS生成巨魔脸",
    Callback = function()
        loadstring(game:HttpGet("https://api.hugebonus.xyz/scripts/TrollFaceSpawner.lua"))()
    end
})

Enhanced:AddButton({
    Name = "DOORS生成giggle",
    Callback = function()
        getgenv().GIGGLE_SPAWN_CONFIG = {
             Damage = 6,
             AttackingTime = math.random(7, 10), -- The time giggle will be attacking for.
             FallSpeed = 3,        -- Speed for when giggle spawns, can be mininum 2 and how high you want
             
             Stunnable = true,    -- If set to true, Giggle will be stunnable with glowstick
             StunTime = 5, -- The time giggle will be stun for
             
             RagdollThrowForce = 50,    -- The Ragdoll's Force when its thrown
             RagdollDissapears = true,  -- If set to true the ragdoll will dissapear once giggle finishes attacking.
           
             RoomSpawning = {
                  Enabled = true   -- If set to false, giggle will spawn around the player.
             },
             
             PlayerSpawning = { -- This table will be used if Room Spawning is Disabled
                  MinRadius = -20,  -- The minimum distance giggle can spawn from the player.
                  MaxRadius = 20.  --  The maximum distance giggle can spawn from the player.
             },
             
             SpawningKey = { -- Key for Spawning
                  Enabled = false,  -- If enabled once the key is pressed, giggle will spawn.
                  Key = "G"    -- Key that is used for spawning giggle
             }
        }
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Test/refs/heads/main/Doors/GiggleSpawn.lua"))()
    end
})

Enhanced:AddButton({
    Name = "DOORS杰夫毛绒玩具",
    Callback = function()
        local tool = game:GetObjects("rbxassetid://13069619857")[1]
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

Enhanced:AddButton({
    Name = "DOORS变成杰夫杀手",
    Callback = function()
        _G.ThirdPerson = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkbutiampoggers/JeffTheKillerMorphV2/main/Source.lua"))()
    end
})

Enhanced:AddButton({
    Name = "DOORS金色手摇",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/aadyian9000/the-thing/main/GoldenGummyFlashlight.lua"),true))()
    end
})

Enhanced:AddButton({
    Name = "DOORS召唤肘击王",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Mode-Remakes/refs/heads/main/PandemoniumProtected.lua"))()
    end
})

Enhanced:AddButton({
    Name = "DOORS万圣节糖果透视",
    Callback = function()
        local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
        
        local OwO = library:Window("万圣节糖果透视🎃")
        
        local candyEspEnabled = false
        local showDistance = false
        local connections = {}
        
        OwO:Toggle("🍬糖果透视", false, function(enabled)
            candyEspEnabled = enabled
        
            local function addEspToCandy(candy)
                if not candy:FindFirstChild("CandyESP") then
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "CandyESP"
                    billboardGui.Size = UDim2.new(4, 0, 3, 0) -- Larger size for better visibility
                    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Parent = candy
        
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Text = "糖果"
                    textLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    textLabel.TextColor3 = Color3.new(1, 0, 1) -- Pink color for "Candy Root"
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextSize = 35 -- Font size
                    textLabel.Font = Enum.Font.SourceSansBold
                    textLabel.Parent = billboardGui
        
                    local distanceLabel = Instance.new("TextLabel")
                    distanceLabel.Name = "距离"
                    distanceLabel.Size = UDim2.new(1, 0, 0.3, 0)
                    distanceLabel.Position = UDim2.new(0, 0, 0.7, 0) -- Positioned farther below the "Candy Root" label
                    distanceLabel.TextColor3 = Color3.new(1, 1, 1) -- White color for distance
                    distanceLabel.BackgroundTransparency = 1
                    distanceLabel.TextSize = 25 -- Font size for distance
                    distanceLabel.Font = Enum.Font.SourceSansBold
                    distanceLabel.Parent = billboardGui
        
                    game:GetService("RunService").RenderStepped:Connect(function()
                        if candyEspEnabled and showDistance then
                            local player = game.Players.LocalPlayer
                            local distance = (candy.Position - player.Character.HumanoidRootPart.Position).Magnitude
                            distanceLabel.Text = string.format("距离: %.1f", distance)
                        else
                            distanceLabel.Text = ""
                        end
                    end)
                end
            end
        
            local function findAllCandyRoots()
                for _, descendant in ipairs(workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") and descendant.Name == "CandyRoot" then
                        addEspToCandy(descendant)
                    end
                end
            end
        
            if candyEspEnabled then
                findAllCandyRoots()
        
                connections.candyRootAdded = workspace.DescendantAdded:Connect(function(descendant)
                    if descendant:IsA("BasePart") and descendant.Name == "CandyRoot" then
                        addEspToCandy(descendant)
                    end
                end)
            else
                for _, descendant in ipairs(workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") and descendant:FindFirstChild("CandyESP") then
                        descendant.CandyESP:Destroy()
                    end
                end
        
                if connections.candyRootAdded then
                    connections.candyRootAdded:Disconnect()
                    connections.candyRootAdded = nil
                end
            end
        end)
        
        OwO:Toggle("糖果距离", false, function(enabled)
            showDistance = enabled
        end)
    end
})

local Home = Window:MakeTab({
    Name = "用户信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Home:AddParagraph("用户名:", " "..game.Players.LocalPlayer.Name.."")
Home:AddParagraph("注入器:", " "..identifyexecutor().."")
Home:AddParagraph("服务器ID:", " "..game.GameId.."")
Home:AddParagraph("时间:", " "..os.date("%Y-%m-%d %H:%M:%S").."")

local Universal = Window:MakeTab({
    Name = "通用功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Universal:AddToggle({
    Name = "夜视",
    Default = false,
    Callback = function(Value)
        if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
})

Universal:AddToggle({
    Name = "无限跳跃",
    Default = false,
    Callback = function(Value)
        _G.InfJump = Value
        if Value then
            local oldJump
            oldJump = hookmetamethod(game, "__namecall", function(self, ...)
                local args = {...}
                local method = getnamecallmethod()
                if method == "Jump" and self == game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
                    return oldJump(self, ...)
                end
                return oldJump(self, ...)
            end)
        end
    end
})

Universal:AddTextbox({
    Name = "重力设置",
    Default = "196.2",
    TextDisappear = false,
    Callback = function(Value)
        game.Workspace.Gravity = tonumber(Value) or 196.2
    end
})

Universal:AddTextbox({
    Name = "移动速度",
    Default = "16",
    TextDisappear = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Value) or 16
    end
})

Universal:AddTextbox({
    Name = "跳跃高度",
    Default = "7.2",
    TextDisappear = false,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Value) or 7.2
    end
})

Universal:AddSlider({
    Name = "移动速度",
    Min = 16,
    Max = 200,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "数值",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

Universal:AddSlider({
    Name = "跳跃高度",
    Min = 50,
    Max = 200,
    Default = 50,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "数值",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
})

Universal:AddTextbox({
    Name = "重力设置",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end
})

Universal:AddToggle({
    Name = "飞行",
    Default = false,
    Callback = function(Value)
        _G.Flying = Value
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:FindFirstChild("HumanoidRootPart")
        
        if Value then
            humanoid.PlatformStand = true
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bodyVelocity.Velocity = Vector3.new(0, 0, 0)
            bodyVelocity.Parent = rootPart
            
            local bodyGyro = Instance.new("BodyGyro")
            bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            bodyGyro.P = 1000
            bodyGyro.D = 100
            bodyGyro.Parent = rootPart
            
            _G.BodyVelocity = bodyVelocity
            _G.BodyGyro = bodyGyro
            
            _G.FlyConnection = game:GetService("RunService").Stepped:Connect(function()
                if _G.Flying and _G.BodyVelocity and _G.BodyGyro then
                    local camera = workspace.CurrentCamera
                    local moveDirection = Vector3.new(0, 0, 0)
                    local speed = 50
                    
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
                        moveDirection = moveDirection + camera.CFrame.LookVector
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
                        moveDirection = moveDirection - camera.CFrame.LookVector
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
                        moveDirection = moveDirection - camera.CFrame.RightVector
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
                        moveDirection = moveDirection + camera.CFrame.RightVector
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
                        moveDirection = moveDirection + Vector3.new(0, 1, 0)
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                        moveDirection = moveDirection - Vector3.new(0, 1, 0)
                    end
                    
                    _G.BodyVelocity.Velocity = moveDirection * speed
                    _G.BodyGyro.CFrame = camera.CFrame
                end
            end)
        else
            if _G.BodyVelocity then
                _G.BodyVelocity:Destroy()
                _G.BodyVelocity = nil
            end
            if _G.BodyGyro then
                _G.BodyGyro:Destroy()
                _G.BodyGyro = nil
            end
            if _G.FlyConnection then
                _G.FlyConnection:Disconnect()
                _G.FlyConnection = nil
            end
            humanoid.PlatformStand = false
        end
    end
})

Universal:AddToggle({
    Name = "增强飞行",
    Default = false,
    Callback = function(Value)
        _G.EnhancedFlying = Value
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        if Value then
            humanoid.PlatformStand = true
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bodyVelocity.Velocity = Vector3.new(0, 0, 0)
            bodyVelocity.Parent = rootPart
            
            local bodyGyro = Instance.new("BodyGyro")
            bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            bodyGyro.D = 1000
            bodyGyro.P = 10000
            bodyGyro.Parent = rootPart
            
            _G.EnhancedBodyVelocity = bodyVelocity
            _G.EnhancedBodyGyro = bodyGyro
            
            _G.EnhancedFlyConnection = game:GetService("RunService").RenderStepped:Connect(function()
                if _G.EnhancedFlying and _G.EnhancedBodyVelocity and _G.EnhancedBodyGyro then
                    local camera = workspace.CurrentCamera
                    local moveDirection = Vector3.new(0, 0, 0)
                    local speed = 100 -- 更高的速度
                    
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
                        moveDirection = moveDirection + camera.CFrame.LookVector
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
                        moveDirection = moveDirection - camera.CFrame.LookVector
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
                        moveDirection = moveDirection - camera.CFrame.RightVector
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
                        moveDirection = moveDirection + camera.CFrame.RightVector
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then
                        moveDirection = moveDirection + Vector3.new(0, 1, 0)
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then
                        moveDirection = moveDirection - Vector3.new(0, 1, 0)
                    end
                    if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
                        speed = 200 -- 冲刺模式
                    end
                    
                    _G.EnhancedBodyVelocity.Velocity = moveDirection * speed
                    _G.EnhancedBodyGyro.CFrame = camera.CFrame
                end
            end)
        else
            if _G.EnhancedBodyVelocity then
                _G.EnhancedBodyVelocity:Destroy()
                _G.EnhancedBodyVelocity = nil
            end
            if _G.EnhancedBodyGyro then
                _G.EnhancedBodyGyro:Destroy()
                _G.EnhancedBodyGyro = nil
            end
            if _G.EnhancedFlyConnection then
                _G.EnhancedFlyConnection:Disconnect()
                _G.EnhancedFlyConnection = nil
            end
            humanoid.PlatformStand = false
        end
    end    
})

Universal:AddToggle({
    Name = "夜视",
    Default = false,
    Callback = function(Value)
        if Value then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
})

Universal:AddToggle({
    Name = "穿墙",
    Default = false,
    Callback = function(Value)
        if Value then
            Noclip = true
            Stepped = game.RunService.Stepped:Connect(function()
                if Noclip == true then
                    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
                else
                    Stepped:Disconnect()
                end
            end)
        else
            Noclip = false
        end
    end
})

Universal:AddToggle({
    Name = "无击倒",
    Default = false,
    Callback = function(Value)
        if Value then
            game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
            game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        else
            game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
            game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
        end
    end    
})

Universal:AddToggle({
    Name = "超级跳跃",
    Default = false,
    Callback = function(Value)
        _G.SuperJump = Value
        game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
            if input.KeyCode == Enum.KeyCode.Space and _G.SuperJump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                wait(0.1)
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 100, 0)
            end
        end)
    end    
})

Universal:AddButton({
    Name = "点击传送工具",
    Callback = function()
        mouse = game.Players.LocalPlayer:GetMouse() 
        tool = Instance.new("Tool") 
        tool.RequiresHandle = false 
        tool.Name = "[FE] TELEPORT TOOL" 
        tool.Activated:connect(function() 
            local pos = mouse.Hit+Vector3.new(0,2.5,0) 
            pos = CFrame.new(pos.X,pos.Y,pos.Z) 
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos 
        end) 
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
})

Teleports:AddButton({
    Name = "增强传送工具",
    Callback = function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        
        local marker = Instance.new("Part")
        marker.Name = "TeleportMarker"
        marker.Size = Vector3.new(2, 0.5, 2)
        marker.Anchored = true
        marker.CanCollide = false
        marker.Material = Enum.Material.Neon
        marker.BrickColor = BrickColor.new("Bright blue")
        marker.Shape = Enum.PartType.Cylinder
        marker.TopSurface = Enum.SurfaceType.Smooth
        marker.BottomSurface = Enum.SurfaceType.Smooth
        
        local markerGui = Instance.new("BillboardGui")
        markerGui.Name = "TeleportMarkerGUI"
        markerGui.Adornee = marker
        markerGui.Size = UDim2.new(0, 100, 0, 50)
        markerGui.StudsOffset = Vector3.new(0, 2, 0)
        
        local markerText = Instance.new("TextLabel")
        markerText.Name = "TeleportMarkerText"
        markerText.Size = UDim2.new(1, 0, 1, 0)
        markerText.BackgroundTransparency = 1
        markerText.Text = "传送点"
        markerText.TextColor3 = Color3.new(1, 1, 1)
        markerText.TextStrokeTransparency = 0
        markerText.Font = Enum.Font.SourceSansBold
        markerText.TextSize = 20
        markerText.Parent = markerGui
        
        markerGui.Parent = marker
        marker.Parent = workspace
        
        local mouseMoveConnection
        mouseMoveConnection = mouse.Move:Connect(function()
            local target = mouse.Target
            if target then
                local position = target.Position + Vector3.new(0, target.Size.Y/2 + 1, 0)
                marker.CFrame = CFrame.new(position)
            end
        end)
        
        local mouseClickConnection
        mouseClickConnection = mouse.Button1Down:Connect(function()
            local target = mouse.Target
            if target then
                local position = target.Position + Vector3.new(0, target.Size.Y/2 + 5, 0)
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                
                mouseMoveConnection:Disconnect()
                mouseClickConnection:Disconnect()
                marker:Destroy()
                
                OrionLib:MakeNotification({
                    Name = "传送完成",
                    Content = "已传送到目标位置",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        end)
        
        OrionLib:MakeNotification({
            Name = "增强传送工具",
            Content = "移动鼠标选择位置，左键点击传送",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

Universal:AddButton({
    Name = "无敌",
    Callback = function()
        local lp = game:GetService "Players".LocalPlayer
        if lp.Character:FindFirstChild "Head" then
            local char = lp.Character
            char.Archivable = true
            local new = char:Clone()
            new.Parent = workspace
            lp.Character = new
            wait(2)
            local oldhum = char:FindFirstChildWhichIsA "Humanoid"
            local newhum = oldhum:Clone()
            newhum.Parent = char
            newhum.RequiresNeck = false
            oldhum.Parent = nil
            wait(2)
            lp.Character = char
            new:Destroy()
            wait(1)
            newhum:GetPropertyChangedSignal("Health"):Connect(
                function()
                    if newhum.Health <= 0 then
                        oldhum.Parent = lp.Character
                        wait(1)
                        oldhum:Destroy()
                    end
                end)
            workspace.CurrentCamera.CameraSubject = char
            if char:FindFirstChild "Animate" then
                char.Animate.Disabled = true
                wait(.1)
                char.Animate.Disabled = false
            end
            lp.Character:FindFirstChild "Head":Destroy()
        end
    end
})

Universal:AddButton({
    Name = "隐身(E键)",
    Callback = function()
        local ScriptStarted = false
        local Keybind = "E"
        local Transparency = true
        local NoClip = false

        local Player = game:GetService("Players").LocalPlayer
        local RealCharacter = Player.Character or Player.CharacterAdded:Wait()

        local IsInvisible = false

        RealCharacter.Archivable = true
        local FakeCharacter = RealCharacter:Clone()
        local Part
        Part = Instance.new("Part", workspace)
        Part.Anchored = true
        Part.Size = Vector3.new(200, 1, 200)
        Part.CFrame = CFrame.new(0, -500, 0)
        Part.CanCollide = true
        FakeCharacter.Parent = workspace
        FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

        for i, v in pairs(RealCharacter:GetChildren()) do
            if v:IsA("LocalScript") then
                local clone = v:Clone()
                clone.Disabled = true
                clone.Parent = FakeCharacter
            end
        end
        if Transparency then
            for i, v in pairs(FakeCharacter:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Transparency = 0.7
                end
            end
        end
        local CanInvis = true
        function RealCharacterDied()
            CanInvis = false
            RealCharacter:Destroy()
            RealCharacter = Player.Character
            CanInvis = true
            isinvisible = false
            FakeCharacter:Destroy()
            workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid

            RealCharacter.Archivable = true
            FakeCharacter = RealCharacter:Clone()
            Part:Destroy()
            Part = Instance.new("Part", workspace)
            Part.Anchored = true
            Part.Size = Vector3.new(200, 1, 200)
            Part.CFrame = CFrame.new(9999, 9999, 9999)
            Part.CanCollide = true
            FakeCharacter.Parent = workspace
            FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

            for i, v in pairs(RealCharacter:GetChildren()) do
                if v:IsA("LocalScript") then
                    local clone = v:Clone()
                    clone.Disabled = true
                    clone.Parent = FakeCharacter
                end
            end
            if Transparency then
                for i, v in pairs(FakeCharacter:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.Transparency = 0.7
                    end
                end
            end
            RealCharacter.Humanoid.Died:Connect(function()
                RealCharacter:Destroy()
                FakeCharacter:Destroy()
            end)
            Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
        end
        RealCharacter.Humanoid.Died:Connect(function()
            RealCharacter:Destroy()
            FakeCharacter:Destroy()
        end)
        Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
        local PseudoAnchor
        game:GetService "RunService".RenderStepped:Connect(
            function()
                if PseudoAnchor ~= nil then
                    PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
                end
                if NoClip then
                    FakeCharacter.Humanoid:ChangeState(11)
                end
            end
        )

        PseudoAnchor = FakeCharacter.HumanoidRootPart
        local function Invisible()
            if IsInvisible == false then
                local StoredCF = RealCharacter.HumanoidRootPart.CFrame
                RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
                FakeCharacter.HumanoidRootPart.CFrame = StoredCF
                RealCharacter.Humanoid:UnequipTools()
                Player.Character = FakeCharacter
                workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
                PseudoAnchor = RealCharacter.HumanoidRootPart
                for i, v in pairs(FakeCharacter:GetChildren()) do
                    if v:IsA("LocalScript") then
                        v.Disabled = false
                    end
                end

                IsInvisible = true
            else
                local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
                FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame

                RealCharacter.HumanoidRootPart.CFrame = StoredCF

                FakeCharacter.Humanoid:UnequipTools()
                Player.Character = RealCharacter
                workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
                PseudoAnchor = FakeCharacter.HumanoidRootPart
                for i, v in pairs(FakeCharacter:GetChildren()) do
                    if v:IsA("LocalScript") then
                        v.Disabled = true
                    end
                end
                IsInvisible = false
            end
        end

        game:GetService("UserInputService").InputBegan:Connect(
        function(key, gamep)
            if gamep then
                return
            end
            if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
                if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
                    Invisible()
                end
            end
        end
        )
        local Sound = Instance.new("Sound",game:GetService("SoundService"))
        Sound.SoundId = "rbxassetid://232127604"
        Sound:Play()
        game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "隐身功能已加载",["Text"] = "按 "..Keybind.." 键切换隐身状态",["Duration"] = 20,["Button1"] = "确定"})
    end
})

Universal:AddButton({
    Name = "无限子弹",
    Callback = function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Ammo") then
                v.Ammo.Value = 999
                v.Ammo.Changed:Connect(function()
                    v.Ammo.Value = 999
                end)
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Tool") and v:FindFirstChild("Ammo") then
                v.Ammo.Value = 999
                v.Ammo.Changed:Connect(function()
                    v.Ammo.Value = 999
                end)
            end
        end
        game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "无限子弹",["Text"] = "已激活无限子弹功能",["Duration"] = 10,["Button1"] = "确定"})
    end
})

Universal:AddToggle({
    Name = "基础自瞄",
    Default = false,
    Callback = function(Value)
        _G.AimBot = Value
        if Value then
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local Camera = workspace.CurrentCamera
            
            local function GetClosestPlayer()
                local ClosestPlayer = nil
                local ShortestDistance = math.huge
                
                for i, v in pairs(Players:GetPlayers()) do
                    if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Head") then
                        local Vector, OnScreen = Camera:WorldToViewportPoint(v.Character.Head.Position)
                        if OnScreen then
                            local MouseLocation = game:GetService("UserInputService"):GetMouseLocation()
                            local Distance = (Vector2.new(Vector.X, Vector.Y) - MouseLocation).Magnitude
                            if Distance < ShortestDistance then
                                ClosestPlayer = v
                                ShortestDistance = Distance
                            end
                        end
                    end
                end
                
                return ClosestPlayer
            end
            
            local function AimBotLoop()
                while _G.AimBot do
                    local ClosestPlayer = GetClosestPlayer()
                    if ClosestPlayer and ClosestPlayer.Character and ClosestPlayer.Character:FindFirstChild("Head") then
                        Camera.CFrame = CFrame.new(Camera.CFrame.Position, ClosestPlayer.Character.Head.Position)
                    end
                    wait()
                end
            end
            
            AimBotLoop()
        end
    end
})

Enhanced:AddToggle({
    Name = "高级自瞄",
    Default = false,
    Callback = function(Value)
        if Value then
            local ScreenGui = Instance.new("ScreenGui")
            ScreenGui.Name = "AimbotGUI"
            ScreenGui.Parent = game.CoreGui
            
            local MainFrame = Instance.new("Frame")
            MainFrame.Name = "MainFrame"
            MainFrame.Size = UDim2.new(0, 200, 0, 150)
            MainFrame.Position = UDim2.new(0.5, -100, 0.5, -75)
            MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            MainFrame.BorderSizePixel = 0
            MainFrame.Parent = ScreenGui
            
            local Title = Instance.new("TextLabel")
            Title.Name = "Title"
            Title.Size = UDim2.new(1, 0, 0, 30)
            Title.Position = UDim2.new(0, 0, 0, 0)
            Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Title.Text = "高级自瞄"
            Title.TextColor3 = Color3.new(1, 1, 1)
            Title.Parent = MainFrame
            
            local Status = Instance.new("TextLabel")
            Status.Name = "Status"
            Status.Size = UDim2.new(1, 0, 0, 30)
            Status.Position = UDim2.new(0, 0, 0, 40)
            Status.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            Status.Text = "状态: 运行中"
            Status.TextColor3 = Color3.new(1, 1, 1)
            Status.Parent = MainFrame
            
            local CloseButton = Instance.new("TextButton")
            CloseButton.Name = "CloseButton"
            CloseButton.Size = UDim2.new(1, 0, 0, 30)
            CloseButton.Position = UDim2.new(0, 0, 0, 110)
            CloseButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
            CloseButton.Text = "关闭自瞄"
            CloseButton.TextColor3 = Color3.new(1, 1, 1)
            CloseButton.Parent = MainFrame
            
            CloseButton.MouseButton1Click:Connect(function()
                ScreenGui:Destroy()
                _G.AdvancedAimbot = false
            end)
            
            _G.AdvancedAimbot = true
            spawn(function()
                local Players = game:GetService("Players")
                local LocalPlayer = Players.LocalPlayer
                local Camera = workspace.CurrentCamera
                
                while _G.AdvancedAimbot do
                    local ClosestPlayer = nil
                    local ShortestDistance = math.huge
                    
                    for i, v in pairs(Players:GetPlayers()) do
                        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("Head") then
                            local Vector, OnScreen = Camera:WorldToViewportPoint(v.Character.Head.Position)
                            if OnScreen then
                                local MouseLocation = game:GetService("UserInputService"):GetMouseLocation()
                                local Distance = (Vector2.new(Vector.X, Vector.Y) - MouseLocation).Magnitude
                                if Distance < ShortestDistance then
                                    ClosestPlayer = v
                                    ShortestDistance = Distance
                                end
                            end
                        end
                    end
                    
                    if ClosestPlayer and ClosestPlayer.Character and ClosestPlayer.Character:FindFirstChild("Head") then
                        local TargetPosition = ClosestPlayer.Character.Head.Position
                        local CurrentCFrame = Camera.CFrame
                        local NewCFrame = CFrame.new(CurrentCFrame.Position, TargetPosition)
                        
                        Camera.CFrame = CurrentCFrame:Lerp(NewCFrame, 0.1)
                    end
                    
                    wait(0.05) -- 更高的更新频率
                end
            end)
        else
            _G.AdvancedAimbot = false
            pcall(function()
                game.CoreGui.AimbotGUI:Destroy()
            end)
        end
    end
})

local Teleports = Window:MakeTab({
    Name = "传送功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Teleports:AddSection("基础传送")

Teleports:AddButton({
    Name = "传送到出生点",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 20, 0)
    end    
})

Teleports:AddButton({
    Name = "传送到天空",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000, 0)
    end    
})

Teleports:AddButton({
    Name = "传送到地下",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0)
    end    
})

Teleports:AddSection("位置保存与传送")

local savedPositions = {}
Teleports:AddButton({
    Name = "保存当前位置",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local position = player.Character.HumanoidRootPart.CFrame
            table.insert(savedPositions, {
                name = "位置 #" .. #savedPositions + 1,
                cframe = position
            })
            OrionLib:MakeNotification({
                Name = "位置已保存",
                Content = "已保存当前位置为位置 #" .. #savedPositions,
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

local savedPositionsDropdown = {}
for i = 1, 10 do
    table.insert(savedPositionsDropdown, "保存位置 #" .. i)
end

Teleports:AddDropdown({
    Name = "传送到保存的位置",
    Default = "",
    Options = savedPositionsDropdown,
    Callback = function(Value)
        local index = tonumber(string.sub(Value, -1))
        if savedPositions[index] and savedPositions[index].cframe then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedPositions[index].cframe
        else
            OrionLib:MakeNotification({
                Name = "错误",
                Content = "位置 #" .. index .. " 尚未保存",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Teleports:AddSection("特殊传送")

Teleports:AddButton({
    Name = "特殊传送（远程事件）",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Players = game:GetService("Players")
        
        local launchRemoteExists, launchRemote = pcall(function()
            return ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents"):WaitForChild("Launch")
        end)
        
        local returnRemoteExists, returnRemote = pcall(function()
            return ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents"):WaitForChild("Return")
        end)
        
        if launchRemoteExists and returnRemoteExists then
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            
            launchRemote:FireServer()
            
            task.wait(1)
            
            character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(9000000000e9, 90000000000e9, 9000000000e9)
            
            task.wait(1)
            
            returnRemote:FireServer()
            
            OrionLib:MakeNotification({
                Name = "特殊传送",
                Content = "已完成特殊传送操作",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        else
            OrionLib:MakeNotification({
                Name = "错误",
                Content = "未找到必要的远程事件",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Teleports:AddSection("自定义坐标传送")

Teleports:AddTextbox({
    Name = "X坐标",
    Default = "0",
    TextDisappear = false,
    Callback = function(Value)
        _G.customX = Value
    end
})

Teleports:AddTextbox({
    Name = "Y坐标",
    Default = "0",
    TextDisappear = false,
    Callback = function(Value)
        _G.customY = Value
    end
})

Teleports:AddTextbox({
    Name = "Z坐标",
    Default = "0",
    TextDisappear = false,
    Callback = function(Value)
        _G.customZ = Value
    end
})

Teleports:AddButton({
    Name = "传送到自定义坐标",
    Callback = function()
        local x = tonumber(_G.customX) or 0
        local y = tonumber(_G.customY) or 0
        local z = tonumber(_G.customZ) or 0
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
    end
})

Teleports:AddSection("增强传送工具")

Teleports:AddButton({
    Name = "增强传送工具",
    Callback = function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        
        local marker = Instance.new("Part")
        marker.Name = "TeleportMarker"
        marker.Size = Vector3.new(2, 0.5, 2)
        marker.Anchored = true
        marker.CanCollide = false
        marker.Material = Enum.Material.Neon
        marker.BrickColor = BrickColor.new("Bright blue")
        marker.Shape = Enum.PartType.Cylinder
        marker.TopSurface = Enum.SurfaceType.Smooth
        marker.BottomSurface = Enum.SurfaceType.Smooth
        
        local markerGui = Instance.new("BillboardGui")
        markerGui.Name = "TeleportMarkerGUI"
        markerGui.Adornee = marker
        markerGui.Size = UDim2.new(0, 100, 0, 50)
        markerGui.StudsOffset = Vector3.new(0, 2, 0)
        
        local markerText = Instance.new("TextLabel")
        markerText.Name = "TeleportMarkerText"
        markerText.Size = UDim2.new(1, 0, 1, 0)
        markerText.BackgroundTransparency = 1
        markerText.Text = "传送点"
        markerText.TextColor3 = Color3.new(1, 1, 1)
        markerText.TextStrokeTransparency = 0
        markerText.Font = Enum.Font.SourceSansBold
        markerText.TextSize = 20
        markerText.Parent = markerGui
        
        markerGui.Parent = marker
        marker.Parent = workspace
        
        local mouseMoveConnection
        mouseMoveConnection = mouse.Move:Connect(function()
            local target = mouse.Target
            if target then
                local position = target.Position + Vector3.new(0, target.Size.Y/2 + 1, 0)
                marker.CFrame = CFrame.new(position)
            end
        end)
        
        local mouseClickConnection
        mouseClickConnection = mouse.Button1Down:Connect(function()
            local target = mouse.Target
            if target then
                local position = target.Position + Vector3.new(0, target.Size.Y/2 + 5, 0)
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                
                mouseMoveConnection:Disconnect()
                mouseClickConnection:Disconnect()
                marker:Destroy()
                
                OrionLib:MakeNotification({
                    Name = "传送完成",
                    Content = "已传送到目标位置",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        end)
        
        OrionLib:MakeNotification({
            Name = "增强传送工具",
            Content = "移动鼠标选择位置，左键点击传送",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

local savedPositions = {}
Teleports:AddButton({
    Name = "保存当前位置",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local position = player.Character.HumanoidRootPart.CFrame
            table.insert(savedPositions, {
                name = "位置 #" .. #savedPositions + 1,
                cframe = position
            })
            OrionLib:MakeNotification({
                Name = "位置已保存",
                Content = "已保存当前位置为位置 #" .. #savedPositions,
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

local savedPositionsDropdown = {}
for i = 1, 10 do
    table.insert(savedPositionsDropdown, "保存位置 #" .. i)
end

Teleports:AddDropdown({
    Name = "传送到保存的位置",
    Default = "",
    Options = savedPositionsDropdown,
    Callback = function(Value)
        local index = tonumber(string.sub(Value, -1))
        if savedPositions[index] and savedPositions[index].cframe then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedPositions[index].cframe
        else
            OrionLib:MakeNotification({
                Name = "错误",
                Content = "位置 #" .. index .. " 尚未保存",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Teleports:AddButton({
    Name = "特殊传送（远程事件）",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Players = game:GetService("Players")
        
        local launchRemoteExists, launchRemote = pcall(function()
            return ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents"):WaitForChild("Launch")
        end)
        
        local returnRemoteExists, returnRemote = pcall(function()
            return ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents"):WaitForChild("Return")
        end)
        
        if launchRemoteExists and returnRemoteExists then
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            
            launchRemote:FireServer()
            
            task.wait(1)
            
            character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(9000000000e9, 90000000000e9, 9000000000e9)
            
            task.wait(1)
            
            returnRemote:FireServer()
            
            OrionLib:MakeNotification({
                Name = "特殊传送",
                Content = "已完成特殊传送操作",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        else
            OrionLib:MakeNotification({
                Name = "错误",
                Content = "未找到必要的远程事件",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

Teleports:AddTextbox({
    Name = "X坐标",
    Default = "0",
    TextDisappear = false,
    Callback = function(Value)
        _G.customX = Value
    end
})

Teleports:AddTextbox({
    Name = "Y坐标",
    Default = "0",
    TextDisappear = false,
    Callback = function(Value)
        _G.customY = Value
    end
})

Teleports:AddTextbox({
    Name = "Z坐标",
    Default = "0",
    TextDisappear = false,
    Callback = function(Value)
        _G.customZ = Value
    end
})

Teleports:AddButton({
    Name = "传送到自定义坐标",
    Callback = function()
        local x = tonumber(_G.customX) or 0
        local y = tonumber(_G.customY) or 0
        local z = tonumber(_G.customZ) or 0
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
    end
})

local Ohio = Window:MakeTab({
    Name = "俄亥俄州功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Ohio:AddDropdown({
    Name = "瞬移位置",
    Default = "",
    Options = {
        "银行", "珠宝店", "沙滩", "武器店", "武士刀", "射线枪", 
        "加特林", "锯掉", "沙漠之鹰", "警察局", "AUG", "军事基地"
    },
    Callback = function(Value)
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        
        if Value == "银行" then
            local epoh1 = CFrame.new(1055.94153, 15.11950874, -344.58374)
            epoh3.CFrame = epoh1
        elseif Value == "珠宝店" then
            local epoh1 = CFrame.new(1719.02637, 14.2831011, -714.293091)
            epoh3.CFrame = epoh1
        elseif Value == "沙滩" then
            local epoh1 = CFrame.new(998.4656372070312, 15, 395.9789733886719)
            epoh3.CFrame = epoh1
        elseif Value == "武器店" then
            local epoh1 = CFrame.new(660.5284423828125, 6.4081127643585205, -716.489990234375)
            epoh3.CFrame = epoh1
        elseif Value == "武士刀" then
            local epoh1 = CFrame.new(175.191, 13.937, -132.69)
            epoh3.CFrame = epoh1
        elseif Value == "射线枪" then
            local epoh1 = CFrame.new(148.685471, -90, -529.280945)
            epoh3.CFrame = epoh1
        elseif Value == "加特林" then
            local epoh1 = CFrame.new(364.97076416015625, 0.764974117279053, -1447.3302001953125)
            epoh3.CFrame = epoh1
        elseif Value == "锯掉" then
            local epoh1 = CFrame.new(1179.98523, 40, -436.812683)
            epoh3.CFrame = epoh1
        elseif Value == "沙漠之鹰" then
            local epoh1 = CFrame.new(363.341461, 26.0798492, -259.681396)
            epoh3.CFrame = epoh1
        elseif Value == "警察局" then
            local epoh1 = CFrame.new(603.4676513671875, 25.662811279296875, -922.0442504882812)
            epoh3.CFrame = epoh1
        elseif Value == "AUG" then
            local epoh1 = CFrame.new(1170.500244140625, 48.37138366699219, -772.55859375)
            epoh3.CFrame = epoh1
        elseif Value == "军事基地" then
            local epoh1 = CFrame.new(563.4422607421875, 28.502071380615234, -1472.780517578125)
            epoh3.CFrame = epoh1
        end
    end
})

Ohio:AddToggle({
    Name = "银行刷新提醒",
    Callback = function(Value)
        Bank1 = Value
        if Bank1 then
            Bank2()
        end
    end    
})

Bank2 = function()
    while Bank1 do
        wait(0.1)
        local Bank = game:GetService('Workspace').BankRobbery.BankCash.Cash:FindFirstChild('Bundle')
        if Bank then
            OrionLib:MakeNotification({
                Name = "提示：",
                Content = "银行已刷新！",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(30)
        end
    end
end

Ohio:AddToggle({
    Name = "珠宝店刷新提醒",
    Callback = function(Value)
        Gem1 = Value
        if Gem1 then
            Gem2()
        end
    end    
})

Gem2 = function()
    while Gem1 do
        wait(0.1)
        local Ge = game:GetService('Workspace').GemRobbery:FindFirstChild('Rubble')
        if Ge then
            OrionLib:MakeNotification({
                Name = "提示：",
                Content = "珠宝店已刷新！",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(30)
        end
    end
end

Ohio:AddToggle({
    Name = "自动银行",
    Callback = function(Value)
        AutoBank1 = Value
        if AutoBank1 then
            AutoBank2()
        end
    end    
})

AutoBank2 = function()
    while AutoBank1 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local BankCashs = game:GetService("Workspace").BankRobbery.BankCash
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
           wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        if BankCashs.Cash.Bundle then
            local epoh1 = CFrame.new(1055.872802734375, 10, -344.6944580078125)
            epoh3.CFrame = epoh1
            BankCashs.Main.Attachment.ProximityPrompt.MaxActivationDistance = 16
            if BankCashs.Cash.Bundle then
            BankCashs.Main.Attachment.ProximityPrompt:InputHoldBegin()
            wait(45)
            BankCashs.Main.Attachment.ProximityPrompt:InputHoldEnd()
            local epoh1 = CFrame.new(240.52850341796875, -120, -620)
            epoh3.CFrame = epoh1
            end
        end   
        if not BankCashs.Cash.Bundle then
            local epoh1 = CFrame.new(240.52850341796875, -120, -620)
            epoh3.CFrame = epoh1
        end
    end
end

Ohio:AddToggle({
    Name = "自动金保险箱",
    Callback = function(Value)
        AutoSafe1 = Value
        if AutoSafe1 then
            AutoSafe2()
        end
    end    
})

AutoSafe2 = function()
    while AutoSafe1 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
            wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        local GoldJewelSafes = game:GetService("Workspace").Game.Entities.GoldJewelSafe
        local foundModel = false
        for _, model in pairs(GoldJewelSafes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                epoh3.CFrame = epoh1
                wait(1)
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 16
                if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                    wait(5)
                    model:Destroy()
                    break
                end
            end
        end
        if not foundModel then
            OrionLib:MakeNotification({
                Name = "提示：",
                Content = "金保险箱未刷新！",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            wait(30)
        end
    end
end

local Jailbreak = Window:MakeTab({
    Name = "监狱人生",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Jailbreak:AddButton({
    Name = "警卫室",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
    end
})

Jailbreak:AddButton({
    Name = "监狱室内",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
    end
})

Jailbreak:AddButton({
    Name = "罪犯复活点",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
    end
})

Jailbreak:AddButton({
    Name = "监狱室外",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
    end
})

Jailbreak:AddButton({
    Name = "警察装备库",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(851.8572998046875, 98.95999908447266, 2328.691650390625)
    end
})

Jailbreak:AddButton({
    Name = "罪犯装备库",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-977.8900146484375, 93.09876251220703, 2052.36865234375)
    end
})

Jailbreak:AddButton({
    Name = "银行",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-977.8900146484375, 93.09876251220703, 2052.36865234375)
    end
})

Jailbreak:AddToggle({
    Name = "自动越狱",
    Callback = function(Value)
        AutoEscape = Value
        if AutoEscape then
            AutoEscapeFunc()
        end
    end
})

AutoEscapeFunc = function()
    while AutoEscape do
        wait(1)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        
        if character and humanoid then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local position = rootPart.Position
                if position.X < 0 and position.Z > 2000 then
                    rootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
                end
            end
        end
    end
end

local Doors = Window:MakeTab({
    Name = "DOORS功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Doors:AddButton({
    Name = "夜视仪",
    Callback = function() 
        _G.UpdateStars = false
        loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
    end
})

Doors:AddButton({
    Name = "吸铁石",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
    end
})

Doors:AddButton({
    Name = "神圣炸弹",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
    end
})

Doors:AddButton({
    Name = "自动躲避",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GhzGarage/Doors-Auto-Run/main/Auto%20Run.lua"))()
    end
})

Doors:AddButton({
    Name = "门提示",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Door%20ESP"))()
    end
})

Doors:AddButton({
    Name = "自动收集物品",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/DOORS/AutoCollect.lua"))()
    end
})

Doors:AddButton({
    Name = "反恐惧",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NotDSF/Roblox/main/Doors/AntiAfk.lua"))()
    end
})

Doors:AddButton({
    Name = "自动跳过",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NotDSF/Roblox/main/Doors/Skip.lua"))()
    end
})

Doors:AddButton({
    Name = "自动开门",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NotDSF/Roblox/main/Doors/AutoInteract.lua"))()
    end
})

local OtherGames = Window:MakeTab({
    Name = "其他游戏",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OtherGames:AddButton({
    Name = "墨水游戏OP级脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScripterVaz/InkGameAzure/main/Protected_7974105512464815.lua.txt"))()
    end
})

OtherGames:AddButton({
    Name = "99夜全能脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
    end
})

OtherGames:AddButton({
    Name = "汉化版后门执行器",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/pijiaobenMSJMleng/backdoor/refs/heads/main/backdoor.lua"))()
    end
})

OtherGames:AddButton({
    Name = "后门v6x",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v6x/source.lua"))()
    end
})

OtherGames:AddButton({
    Name = "鹿管脚本汉化版",
    Callback = function()
        getgenv().SARK="汉化撸管脚本QQ群1015083259"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ADL-SARK/SARKVIP-ADL/refs/heads/main/SARKVIP%E6%92%B8%E7%AE%A1%E8%84%9A%E6%9C%AC.lua"))()
    end
})

OtherGames:AddButton({
    Name = "鸭脚本",
    Callback = function()
        loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
    end
})

OtherGames:AddButton({
    Name = "刺客脚本",
    Callback = function()
        CK_V2 = "作者_神罚"
        SheFa = "刺客群637340150"
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/WDQi/SF/main/%E7%9C%8B%E4%BD%A0M.txt')))()
    end
})

OtherGames:AddButton({
    Name = "导管中心",
    Callback = function()
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
    end
})

OtherGames:AddButton({
    Name = "北约中心",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/USA868/114514-55-646-114514-88-61518-618-840-1018-634-10-4949-3457578401-615/main/Protected-36.lua"))()
    end
})

OtherGames:AddButton({
    Name = "脚本中心",
    Callback = function()
        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
    end
})

OtherGames:AddButton({
    Name = "小魔脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaomoNB666/xiaomoNB666/main/666.txt"))()
    end
})

OtherGames:AddButton({
    Name = "小星脚本",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/XhQpcE5m"))()
    end    
})

OtherGames:AddButton({
    Name = "皇脚本",
    Callback = function()
        loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
    end    
})

OtherGames:AddButton({
    Name = "静新脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/Ghfjfhfjejjfbdbdbefbbd/main/Xgvvdhnxcv%20vbbvbb%20mnknbHB"))()  
    end    
})

OtherGames:AddButton({
    Name = "青脚本",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/kkaaccnnbb/money/main/fix'))()
    end    
})

OtherGames:AddButton({
    Name = "林脚本",
    Callback = function()
        lin = "作者林"
        lin ="林QQ群 747623342"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/lin/main/lin"))()
    end
})

OtherGames:AddButton({
    Name = "绿脚本",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Esw6YQKR"))()
    end
})

OtherGames:AddButton({
    Name = "不公平中心(外国缝合)",
    Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()	
    end
})

OtherGames:AddButton({
    Name = "力量传奇",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/UWUBeiFeng/Scripts/main/MuscleLegends.lua"))()
    end
})

OtherGames:AddButton({
    Name = "极速传奇",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/UWUBeiFeng/Scripts/main/LegendsOfSpeed.lua"))()
    end
})

OtherGames:AddButton({
    Name = "吃人的火车爱德华",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/UWUBeiFeng/Scripts/main/EdwardTheMan-EatingTrain.lua"))()
    end
})

OtherGames:AddButton({
    Name = "跟踪玩家",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/跟踪玩家.lua"))()
    end
})

OtherGames:AddButton({
    Name = "最强透视",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
    end    
})

OtherGames:AddButton({
    Name = "DOORS旧版大厅",
    Callback = function()
        local game_id = 110258689672367
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
    end
})

OtherGames:AddButton({
    Name = "自动刷金条",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/max0mind/lua/main/loader.lua"))()
    end
})

OtherGames:AddButton({
    Name = "自动点击",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tp0s-scripts/autoclicker/main/loader.lua"))()
    end
})

OtherGames:AddButton({
    Name = "自动农场",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tp0s-scripts/autofarm/main/loader.lua"))()
    end
})

OtherGames:AddButton({
    Name = "无限跳跃",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tp0s-scripts/infjump/main/loader.lua"))()
    end
})

OtherGames:AddButton({
    Name = "透视",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/vEcPe5z0"))()
    end
})

OtherGames:AddButton({
    Name = "玩家透视",
    Callback = function()
        local FillColor = Color3.fromRGB(175,25,255)
        local DepthMode = "AlwaysOnTop"
        local FillTransparency = 0.5
        local OutlineColor = Color3.fromRGB(255,255,255)
        local OutlineTransparency = 0
        
        local CoreGui = game:FindService("CoreGui")
        local Players = game:FindService("Players")
        local lp = Players.LocalPlayer
        local connections = {}
        
        local Storage = Instance.new("Folder")
        Storage.Parent = CoreGui
        Storage.Name = "Highlight_Storage"
        
        local function Highlight(plr)
            local Highlight = Instance.new("Highlight")
            Highlight.Name = plr.Name
            Highlight.FillColor = FillColor
            Highlight.DepthMode = DepthMode
            Highlight.FillTransparency = FillTransparency
            Highlight.OutlineColor = OutlineColor
            Highlight.OutlineTransparency = 0
            Highlight.Parent = Storage
            
            local plrchar = plr.Character
            if plrchar then
                Highlight.Adornee = plrchar
            end
        
            connections[plr] = plr.CharacterAdded:Connect(function(char)
                Highlight.Adornee = char
            end)
        end
        
        Players.PlayerAdded:Connect(Highlight)
        for i,v in next, Players:GetPlayers() do
            Highlight(v)
        end
        
        Players.PlayerRemoving:Connect(function(plr)
            local plrname = plr.Name
            if Storage[plrname] then
                Storage[plrname]:Destroy()
            end
            if connections[plr] then
                connections[plr]:Disconnect()
            end
        end)
    end
})

OtherGames:AddButton({
    Name = "自动攻击",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/CBF01LY1"))()
    end
})

OtherGames:AddButton({
    Name = "自动拾取",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/ZjgLK0wD"))()
    end
})

local About = Window:MakeTab({
    Name = "关于",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

About:AddParagraph("综合脚本", "此脚本结合了多个流行脚本的功能")
About:AddParagraph("仅供娱乐", "请勿用于非法用途")
About:AddParagraph("脚本仅供参考", "不保证所有功能在所有游戏中都能正常运行")
About:AddParagraph("作者", "综合脚本开发团队")
About:AddParagraph("版本", "v2.0.0")
About:AddParagraph("更新日期", "2025-09-12")



local function createGameNotification(title, message, duration)
    local StarterGui = game:GetService("StarterGui")
    
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = message,
            Duration = duration or 5
        })
    end)
    
    print("[" .. title .. "] " .. message)
end

createGameNotification("综合罗布勒斯脚本", "v3.8.0加载完成！已重新引入Orion库依赖。", 5)
createGameNotification("使用说明", "请查看屏幕上的Orion库界面以访问脚本功能", 5)
createGameNotification("重要提示", "已恢复使用Orion库的悬浮窗UI框架", 5)

local about = Window:MakeTab({
    Name = "作者信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

about:AddParagraph("作者: 综合脚本团队")
about:AddParagraph("此脚本结合了多个开源脚本的功能")
about:AddParagraph("仅供娱乐和学习使用")
about:AddParagraph("请勿用于非法用途")

local playerInfo = Window:MakeTab({
    Name = "玩家信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

playerInfo:AddParagraph("您的用户名:", " "..game.Players.LocalPlayer.Name.."")
playerInfo:AddParagraph("您的注入器:", " "..identifyexecutor().."")
playerInfo:AddParagraph("您当前服务器的ID", " "..game.GameId.."")

local announcement = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

announcement:AddParagraph("此脚本为免费缝合脚本")
announcement:AddParagraph("仅供娱乐和学习使用")
announcement:AddParagraph("请勿用于非法用途")
announcement:AddParagraph("使用本脚本造成的任何后果由使用者自行承担")

local copyInfo = Window:MakeTab({
    Name = "复制作者信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

copyInfo:AddButton({
    Name = "复制作者QQ",
    Callback = function()
        setclipboard("2131869117")
    end
})
