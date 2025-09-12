-- 综合罗布勒斯脚本
-- 结合逸风Ohio脚本、马牛逼脚本和皮脚本的功能
-- 仅供娱乐，脚本仅供参考

-- 反挂机功能
print("反挂机开启")
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- 创建Orion库界面
local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local Window = OrionLib:MakeWindow({
    Name = "综合罗布勒斯脚本",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "综合脚本",
    IntroText = "综合脚本 - 结合多个脚本功能"
})

-- 显示通知
OrionLib:MakeNotification({
    Name = "综合脚本",
    Content = "欢迎使用综合罗布勒斯脚本！",
    Image = "rbxassetid://4483345998",
    Time = 5
})



-- 创建主界面
local MainUI = Instance.new("ScreenGui")
MainUI.Name = "CustomRobloxUI"
MainUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MainUI.ResetOnSpawn = false
MainUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- 主框架
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

-- 添加边框效果
local BorderFrame = Instance.new("Frame")
BorderFrame.Name = "BorderFrame"
BorderFrame.Size = UDim2.new(1, 0, 1, 0)
BorderFrame.Position = UDim2.new(0, 0, 0, 0)
BorderFrame.BackgroundTransparency = 1
BorderFrame.BorderSizePixel = 2
BorderFrame.BorderColor3 = Color3.fromRGB(80, 80, 80)
BorderFrame.Parent = MainFrame

-- 标题栏
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

-- 关闭按钮
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

-- 关闭按钮悬停效果
CloseButton.MouseEnter:Connect(function()
    CloseButton.BackgroundTransparency = 0
end)

CloseButton.MouseLeave:Connect(function()
    CloseButton.BackgroundTransparency = 0.3
end)

CloseButton.MouseButton1Click:Connect(function()
    MainUI:Destroy()
end)

-- 最小化按钮
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

-- 最小化按钮悬停效果
MinimizeButton.MouseEnter:Connect(function()
    MinimizeButton.BackgroundTransparency = 0
end)

MinimizeButton.MouseLeave:Connect(function()
    MinimizeButton.BackgroundTransparency = 0.3
end)

-- 内容区域
local ContentFrame = Instance.new("Frame")
ContentFrame.Name = "ContentFrame"
ContentFrame.Size = UDim2.new(1, 0, 1, -35)
ContentFrame.Position = UDim2.new(0, 0, 0, 35)
ContentFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ContentFrame.BackgroundTransparency = 0.1
ContentFrame.BorderSizePixel = 0
ContentFrame.Parent = MainFrame

-- 侧边栏（用于分类标签）
local Sidebar = Instance.new("Frame")
Sidebar.Name = "Sidebar"
Sidebar.Size = UDim2.new(0, 130, 1, 0)
Sidebar.Position = UDim2.new(0, 0, 0, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Sidebar.BackgroundTransparency = 0.2
Sidebar.BorderSizePixel = 0
Sidebar.Parent = ContentFrame

-- 添加侧边栏边框
local SidebarBorder = Instance.new("Frame")
SidebarBorder.Name = "SidebarBorder"
SidebarBorder.Size = UDim2.new(0, 2, 1, 0)
SidebarBorder.Position = UDim2.new(1, -2, 0, 0)
SidebarBorder.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
SidebarBorder.BorderSizePixel = 0
SidebarBorder.Parent = Sidebar

-- 主内容区域
local MainContent = Instance.new("Frame")
MainContent.Name = "MainContent"
MainContent.Size = UDim2.new(1, -130, 1, 0)
MainContent.Position = UDim2.new(0, 130, 0, 0)
MainContent.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainContent.BackgroundTransparency = 0.15
MainContent.BorderSizePixel = 0
MainContent.Parent = ContentFrame

-- 滚动框用于主内容
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

-- 标签按钮容器
local TabButtons = Instance.new("Frame")
TabButtons.Name = "TabButtons"
TabButtons.Size = UDim2.new(1, 0, 1, -15)
TabButtons.Position = UDim2.new(0, 0, 0, 5)
TabButtons.BackgroundTransparency = 1
TabButtons.Parent = Sidebar

-- 存储标签和内容的表
CustomUI.Tabs = {}
CustomUI.CurrentTab = nil

-- 创建标签的函数
function CustomUI.CreateTab(name)
    local tab = {}
    tab.Name = name
    tab.Content = Instance.new("Frame")
    tab.Content.Name = name .. "Content"
    tab.Content.Size = UDim2.new(1, 0, 0, 0)
    tab.Content.BackgroundTransparency = 1
    tab.Content.Visible = false
    tab.Content.Parent = ContentScrolling
    
    -- 创建标签按钮
    local button = Instance.new("TextButton")
    button.Name = name .. "Button"
    button.Size = UDim2.new(1, -15, 0, 35)
    button.Position = UDim2.new(0, 5, 0, (#CustomUI.Tabs) * 40)
    button.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
    button.BackgroundTransparency = 0.3
    button.BorderSizePixel = 0
    button.Text = name
    button.TextColor3 = Color3.fromRGB(200, 200, 200)
    button.Font = Enum.Font.SourceSansSemibold
    button.TextSize = 15
    button.AutoButtonColor = false
    button.Parent = TabButtons
    
    -- 标签按钮悬停效果
    button.MouseEnter:Connect(function()
        if button.BackgroundColor3 ~= Color3.fromRGB(75, 75, 75) then
            button.BackgroundTransparency = 0.1
        end
    end)
    
    button.MouseLeave:Connect(function()
        if button.BackgroundColor3 ~= Color3.fromRGB(75, 75, 75) then
            button.BackgroundTransparency = 0.3
        end
    end)
    
    -- 标签按钮点击事件
    button.MouseButton1Click:Connect(function()
        -- 隐藏所有标签内容
        for _, t in pairs(CustomUI.Tabs) do
            t.Content.Visible = false
        end
        
        -- 显示当前标签内容
        tab.Content.Visible = true
        CustomUI.CurrentTab = tab
        
        -- 更新按钮颜色
        for _, child in pairs(TabButtons:GetChildren()) do
            if child:IsA("TextButton") then
                child.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
                child.BackgroundTransparency = 0.3
                child.TextColor3 = Color3.fromRGB(200, 200, 200)
            end
        end
        button.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
        button.BackgroundTransparency = 0
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
    end)
    
    tab.Button = button
    CustomUI.Tabs[name] = tab
    
    -- 如果这是第一个标签，自动选择它
    if #CustomUI.Tabs == 1 then
        button.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
        button.BackgroundTransparency = 0
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        tab.Content.Visible = true
        CustomUI.CurrentTab = tab
    end
    
    return tab
end

-- 创建可折叠区域的函数
function CustomUI.CreateSection(tab, name)
    local section = {}
    section.Name = name
    section.Elements = {}
    
    -- 创建折叠按钮
    local foldButton = Instance.new("TextButton")
    foldButton.Name = "FoldButton"
    foldButton.Size = UDim2.new(1, -25, 0, 30)
    foldButton.Position = UDim2.new(0, 10, 0, #tab.Content:GetChildren() * 35)
    foldButton.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    foldButton.BackgroundTransparency = 0.2
    foldButton.BorderSizePixel = 0
    foldButton.Text = "▶ " .. name
    foldButton.TextColor3 = Color3.fromRGB(230, 230, 230)
    foldButton.Font = Enum.Font.SourceSansSemibold
    foldButton.TextSize = 15
    foldButton.TextXAlignment = Enum.TextXAlignment.Left
    foldButton.AutoButtonColor = false
    foldButton.Parent = tab.Content
    
    -- 折叠按钮悬停效果
    foldButton.MouseEnter:Connect(function()
        foldButton.BackgroundTransparency = 0
    end)
    
    foldButton.MouseLeave:Connect(function()
        foldButton.BackgroundTransparency = 0.2
    end)
    
    -- 创建内容容器
    local contentContainer = Instance.new("Frame")
    contentContainer.Name = "ContentContainer"
    contentContainer.Size = UDim2.new(1, -20, 0, 0)
    contentContainer.Position = UDim2.new(0, 10, 0, #tab.Content:GetChildren() * 35 + 35)
    contentContainer.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    contentContainer.BackgroundTransparency = 0.1
    contentContainer.BorderSizePixel = 0
    contentContainer.Visible = false
    contentContainer.Parent = tab.Content
    
    -- 添加内容容器边框
    local ContainerBorder = Instance.new("Frame")
    ContainerBorder.Name = "ContainerBorder"
    ContainerBorder.Size = UDim2.new(1, 0, 1, 0)
    ContainerBorder.Position = UDim2.new(0, 0, 0, 0)
    ContainerBorder.BackgroundTransparency = 1
    ContainerBorder.BorderSizePixel = 1
    ContainerBorder.BorderColor3 = Color3.fromRGB(80, 80, 80)
    ContainerBorder.Parent = contentContainer
    
    -- 折叠状态
    local isFolded = true
    
    -- 折叠按钮点击事件
    foldButton.MouseButton1Click:Connect(function()
        isFolded = not isFolded
        contentContainer.Visible = not isFolded
        foldButton.Text = (isFolded and "▶ " or "▼ ") .. name
        
        -- 更新内容容器大小
        if not isFolded then
            local height = 0
            for _, element in pairs(contentContainer:GetChildren()) do
                if element:IsA("GuiObject") then
                    height = height + element.Size.Y.Offset + 5
                end
            end
            contentContainer.Size = UDim2.new(1, -20, 0, height + 10)
        else
            contentContainer.Size = UDim2.new(1, -20, 0, 0)
        end
        
        -- 更新画布大小
        local canvasHeight = 0
        for _, child in pairs(tab.Content:GetChildren()) do
            if child:IsA("GuiObject") then
                canvasHeight = canvasHeight + child.Size.Y.Offset + child.Position.Y.Offset + 15
            end
        end
        ContentScrolling.CanvasSize = UDim2.new(0, 0, 0, canvasHeight + 50)
    end)
    
    section.FoldButton = foldButton
    section.ContentContainer = contentContainer
    
    return section
end

-- 创建按钮的函数
function CustomUI.CreateButton(section, name, callback)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(1, -15, 0, 35)
    button.Position = UDim2.new(0, 5, 0, #section.ContentContainer:GetChildren() * 40)
    button.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
    button.BackgroundTransparency = 0.2
    button.BorderSizePixel = 0
    button.Text = name
    button.TextColor3 = Color3.fromRGB(245, 245, 245)
    button.Font = Enum.Font.SourceSansSemibold
    button.TextSize = 14
    button.AutoButtonColor = false
    button.Parent = section.ContentContainer
    
    -- 按钮悬停效果
    button.MouseEnter:Connect(function()
        button.BackgroundTransparency = 0
        button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    end)
    
    button.MouseLeave:Connect(function()
        button.BackgroundTransparency = 0.2
        button.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
    end)
    
    -- 按钮点击效果
    button.MouseButton1Down:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
    end)
    
    button.MouseButton1Up:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    end)
    
    button.MouseButton1Click:Connect(function()
        if callback then
            callback()
        end
        wait(0.1)
        button.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
    end)
    
    table.insert(section.Elements, button)
    return button
end

-- 创建切换开关的函数
function CustomUI.CreateToggle(section, name, default, callback)
    local toggle = {}
    
    local frame = Instance.new("Frame")
    frame.Name = name
    frame.Size = UDim2.new(1, -10, 0, 35)
    frame.Position = UDim2.new(0, 0, 0, #section.ContentContainer:GetChildren() * 40)
    frame.BackgroundTransparency = 1
    frame.Parent = section.ContentContainer
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(0.7, 0, 1, 0)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = Color3.fromRGB(225, 225, 225)
    label.Font = Enum.Font.SourceSansSemibold
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame
    
    local switch = Instance.new("Frame")
    switch.Name = "Switch"
    switch.Size = UDim2.new(0, 55, 0, 28)
    switch.Position = UDim2.new(1, -55, 0, 3.5)
    switch.BackgroundColor3 = default and Color3.fromRGB(70, 200, 70) or Color3.fromRGB(150, 150, 150)
    switch.BackgroundTransparency = 0.2
    switch.BorderSizePixel = 0
    switch.Parent = frame
    
    -- 添加开关边框
    local switchBorder = Instance.new("Frame")
    switchBorder.Name = "SwitchBorder"
    switchBorder.Size = UDim2.new(1, 0, 1, 0)
    switchBorder.Position = UDim2.new(0, 0, 0, 0)
    switchBorder.BackgroundTransparency = 1
    switchBorder.BorderSizePixel = 1
    switchBorder.BorderColor3 = Color3.fromRGB(100, 100, 100)
    switchBorder.Parent = switch
    
    local switchButton = Instance.new("Frame")
    switchButton.Name = "SwitchButton"
    switchButton.Size = UDim2.new(0, 22, 0, 22)
    switchButton.Position = UDim2.new(0, default and 30 or 3, 0, 3)
    switchButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    switchButton.BorderSizePixel = 0
    switchButton.Parent = switch
    
    local isToggled = default or false
    
    switch.MouseButton1Click:Connect(function()
        isToggled = not isToggled
        switch.BackgroundColor3 = isToggled and Color3.fromRGB(70, 200, 70) or Color3.fromRGB(150, 150, 150)
        switchButton:TweenPosition(UDim2.new(0, isToggled and 30 or 3, 0, 3), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
        
        if callback then
            callback(isToggled)
        end
    end)
    
    toggle.Frame = frame
    toggle.Value = isToggled
    table.insert(section.Elements, frame)
    
    return toggle
end

-- 创建滑块的函数
function CustomUI.CreateSlider(section, name, min, max, default, callback)
    local slider = {}
    
    local frame = Instance.new("Frame")
    frame.Name = name
    frame.Size = UDim2.new(1, -10, 0, 55)
    frame.Position = UDim2.new(0, 0, 0, #section.ContentContainer:GetChildren() * 40)
    frame.BackgroundTransparency = 1
    frame.Parent = section.ContentContainer
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 0, 22)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = name .. ": " .. tostring(default)
    label.TextColor3 = Color3.fromRGB(225, 225, 225)
    label.Font = Enum.Font.SourceSansSemibold
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame
    
    local sliderBg = Instance.new("Frame")
    sliderBg.Name = "SliderBg"
    sliderBg.Size = UDim2.new(1, 0, 0, 12)
    sliderBg.Position = UDim2.new(0, 0, 0, 28)
    sliderBg.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    sliderBg.BackgroundTransparency = 0.3
    sliderBg.BorderSizePixel = 0
    sliderBg.Parent = frame
    
    -- 添加滑块背景边框
    local sliderBgBorder = Instance.new("Frame")
    sliderBgBorder.Name = "SliderBgBorder"
    sliderBgBorder.Size = UDim2.new(1, 0, 1, 0)
    sliderBgBorder.Position = UDim2.new(0, 0, 0, 0)
    sliderBgBorder.BackgroundTransparency = 1
    sliderBgBorder.BorderSizePixel = 1
    sliderBgBorder.BorderColor3 = Color3.fromRGB(90, 90, 90)
    sliderBgBorder.Parent = sliderBg
    
    local sliderFill = Instance.new("Frame")
    sliderFill.Name = "SliderFill"
    sliderFill.Size = UDim2.new((default - min) / (max - min), 0, 1, 0)
    sliderFill.Position = UDim2.new(0, 0, 0, 0)
    sliderFill.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
    sliderFill.BackgroundTransparency = 0.2
    sliderFill.BorderSizePixel = 0
    sliderFill.Parent = sliderBg
    
    local sliderButton = Instance.new("Frame")
    sliderButton.Name = "SliderButton"
    sliderButton.Size = UDim2.new(0, 18, 0, 18)
    sliderButton.Position = UDim2.new((default - min) / (max - min), -9, 0, -3)
    sliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sliderButton.BorderSizePixel = 0
    sliderButton.Parent = sliderBg
    
    -- 添加滑块按钮边框
    local sliderButtonBorder = Instance.new("Frame")
    sliderButtonBorder.Name = "SliderButtonBorder"
    sliderButtonBorder.Size = UDim2.new(1, 0, 1, 0)
    sliderButtonBorder.Position = UDim2.new(0, 0, 0, 0)
    sliderButtonBorder.BackgroundTransparency = 1
    sliderButtonBorder.BorderSizePixel = 1
    sliderButtonBorder.BorderColor3 = Color3.fromRGB(120, 120, 120)
    sliderButtonBorder.Parent = sliderButton
    
    local value = default or min
    
    -- 滑块拖动功能
    local isDragging = false
    
    sliderButton.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDragging = true
            sliderButton.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
        end
    end)
    
    sliderButton.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            isDragging = false
            sliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
    
    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local mousePos = game:GetService("UserInputService"):GetMouseLocation()
            local relativePos = mousePos.X - sliderBg.AbsolutePosition.X
            local percentage = math.clamp(relativePos / sliderBg.AbsoluteSize.X, 0, 1)
            value = math.floor(min + (max - min) * percentage)
            
            sliderFill:TweenSize(UDim2.new(percentage, 0, 1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
            sliderButton:TweenPosition(UDim2.new(percentage, -9, 0, -3), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
            label.Text = name .. ": " .. tostring(value)
            
            if callback then
                callback(value)
            end
        end
    end)
    
    slider.Frame = frame
    slider.Value = value
    table.insert(section.Elements, frame)
    
    return slider
end

-- 创建文本框的函数
function CustomUI.CreateTextbox(section, name, default, callback)
    local textbox = {}
    
    local frame = Instance.new("Frame")
    frame.Name = name
    frame.Size = UDim2.new(1, -10, 0, 55)
    frame.Position = UDim2.new(0, 0, 0, #section.ContentContainer:GetChildren() * 40)
    frame.BackgroundTransparency = 1
    frame.Parent = section.ContentContainer
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 0, 22)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = Color3.fromRGB(225, 225, 225)
    label.Font = Enum.Font.SourceSansSemibold
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame
    
    local input = Instance.new("TextBox")
    input.Name = "Input"
    input.Size = UDim2.new(1, 0, 0, 28)
    input.Position = UDim2.new(0, 0, 0, 28)
    input.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    input.BackgroundTransparency = 0.2
    input.BorderSizePixel = 0
    input.Text = default or ""
    input.TextColor3 = Color3.fromRGB(250, 250, 250)
    input.Font = Enum.Font.SourceSans
    input.TextSize = 14
    input.ClearTextOnFocus = false
    input.TextXAlignment = Enum.TextXAlignment.Left
    input.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)
    input.Parent = frame
    
    -- 添加文本框边框
    local inputBorder = Instance.new("Frame")
    inputBorder.Name = "InputBorder"
    inputBorder.Size = UDim2.new(1, 0, 1, 0)
    inputBorder.Position = UDim2.new(0, 0, 0, 0)
    inputBorder.BackgroundTransparency = 1
    inputBorder.BorderSizePixel = 1
    inputBorder.BorderColor3 = Color3.fromRGB(90, 90, 90)
    inputBorder.Parent = input
    
    -- 文本框聚焦效果
    input.Focused:Connect(function()
        inputBorder.BorderColor3 = Color3.fromRGB(100, 200, 255)
        inputBorder.BackgroundTransparency = 0.1
    end)
    
    input.FocusLost:Connect(function(enterPressed)
        inputBorder.BorderColor3 = Color3.fromRGB(90, 90, 90)
        inputBorder.BackgroundTransparency = 1
        if callback then
            callback(input.Text, enterPressed)
        end
    end)
    
    textbox.Frame = frame
    textbox.Value = input.Text
    table.insert(section.Elements, frame)
    
    return textbox
end

-- 创建下拉菜单的函数
function CustomUI.CreateDropdown(section, name, options, default, callback)
    local dropdown = {}
    
    local frame = Instance.new("Frame")
    frame.Name = name
    frame.Size = UDim2.new(1, -10, 0, 60)
    frame.Position = UDim2.new(0, 0, 0, #section.ContentContainer:GetChildren() * 40)
    frame.BackgroundTransparency = 1
    frame.Parent = section.ContentContainer
    
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 0, 22)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = Color3.fromRGB(225, 225, 225)
    label.Font = Enum.Font.SourceSansSemibold
    label.TextSize = 14
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = frame
    
    local dropdownButton = Instance.new("TextButton")
    dropdownButton.Name = "DropdownButton"
    dropdownButton.Size = UDim2.new(1, 0, 0, 30)
    dropdownButton.Position = UDim2.new(0, 0, 0, 30)
    dropdownButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    dropdownButton.BackgroundTransparency = 0.2
    dropdownButton.BorderSizePixel = 0
    dropdownButton.Text = default or "选择一个选项"
    dropdownButton.TextColor3 = Color3.fromRGB(245, 245, 245)
    dropdownButton.Font = Enum.Font.SourceSans
    dropdownButton.TextSize = 14
    dropdownButton.TextXAlignment = Enum.TextXAlignment.Left
    dropdownButton.AutoButtonColor = false
    dropdownButton.Parent = frame
    
    -- 添加下拉按钮边框
    local dropdownBorder = Instance.new("Frame")
    dropdownBorder.Name = "DropdownBorder"
    dropdownBorder.Size = UDim2.new(1, 0, 1, 0)
    dropdownBorder.Position = UDim2.new(0, 0, 0, 0)
    dropdownBorder.BackgroundTransparency = 1
    dropdownBorder.BorderSizePixel = 1
    dropdownBorder.BorderColor3 = Color3.fromRGB(90, 90, 90)
    dropdownBorder.Parent = dropdownButton
    
    -- 下拉按钮悬停效果
    dropdownButton.MouseEnter:Connect(function()
        dropdownButton.BackgroundTransparency = 0
        dropdownButton.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
    end)
    
    dropdownButton.MouseLeave:Connect(function()
        dropdownButton.BackgroundTransparency = 0.2
        dropdownButton.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    end)
    
    local dropdownFrame = Instance.new("Frame")
    dropdownFrame.Name = "DropdownFrame"
    dropdownFrame.Size = UDim2.new(1, 0, 0, 0)
    dropdownFrame.Position = UDim2.new(0, 0, 0, 65)
    dropdownFrame.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
    dropdownFrame.BackgroundTransparency = 0.1
    dropdownFrame.BorderSizePixel = 0
    dropdownFrame.Visible = false
    dropdownFrame.Parent = frame
    
    -- 添加下拉框边框
    local dropdownFrameBorder = Instance.new("Frame")
    dropdownFrameBorder.Name = "DropdownFrameBorder"
    dropdownFrameBorder.Size = UDim2.new(1, 0, 1, 0)
    dropdownFrameBorder.Position = UDim2.new(0, 0, 0, 0)
    dropdownFrameBorder.BackgroundTransparency = 1
    dropdownFrameBorder.BorderSizePixel = 1
    dropdownFrameBorder.BorderColor3 = Color3.fromRGB(90, 90, 90)
    dropdownFrameBorder.Parent = dropdownFrame
    
    local selectedValue = default or nil
    
    -- 点击下拉按钮展开/收起选项
    dropdownButton.MouseButton1Click:Connect(function()
        dropdownFrame.Visible = not dropdownFrame.Visible
        local height = dropdownFrame.Visible and (#options * 30) or 0
        dropdownFrame:TweenSize(UDim2.new(1, 0, 0, height), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
    end)
    
    -- 创建选项按钮
    for i, option in ipairs(options) do
        local optionButton = Instance.new("TextButton")
        optionButton.Name = "Option" .. i
        optionButton.Size = UDim2.new(1, 0, 0, 30)
        optionButton.Position = UDim2.new(0, 0, 0, (i - 1) * 30)
        optionButton.BackgroundTransparency = 0.3
        optionButton.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
        optionButton.BorderSizePixel = 0
        optionButton.Text = option
        optionButton.TextColor3 = Color3.fromRGB(240, 240, 240)
        optionButton.Font = Enum.Font.SourceSans
        optionButton.TextSize = 14
        optionButton.AutoButtonColor = false
        optionButton.Parent = dropdownFrame
        
        -- 选项按钮悬停效果
        optionButton.MouseEnter:Connect(function()
            optionButton.BackgroundTransparency = 0
            optionButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        end)
        
        optionButton.MouseLeave:Connect(function()
            optionButton.BackgroundTransparency = 0.3
            optionButton.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
        end)
        
        optionButton.MouseButton1Click:Connect(function()
            selectedValue = option
            dropdownButton.Text = option
            dropdownFrame.Visible = false
            
            if callback then
                callback(option)
            end
        end)
    end
    
    dropdown.Frame = frame
    dropdown.Value = selectedValue
    table.insert(section.Elements, frame)
    
    return dropdown
end

-- 最小化按钮功能
local isMinimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    ContentFrame.Visible = not isMinimized
    MinimizeButton.Text = isMinimized and "+" or "-"
    MainFrame.Size = isMinimized and UDim2.new(0, 400, 0, 30) or UDim2.new(0, 400, 0, 300)
end)



-- 指令功能
local commandsSection = CustomUI.CreateSection(OtherGamesTab, "指令功能")
CustomUI.CreateButton(commandsSection, "无限指令(Yield)", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

-- FPS显示
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

-- 增强功能标签
local Enhanced = Window:MakeTab({
    Name = "增强功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- 来自退休脚本的通用功能
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
        -- Gui to Lua
        -- Version: 3.2

        -- Instances:
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

        --Properties:
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

-- 来自废物APT脚本的DOORS功能
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

-- 更多APT脚本功能
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
                    -- Create BillboardGui
                    local billboardGui = Instance.new("BillboardGui")
                    billboardGui.Name = "CandyESP"
                    billboardGui.Size = UDim2.new(4, 0, 3, 0) -- Larger size for better visibility
                    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
                    billboardGui.AlwaysOnTop = true
                    billboardGui.Parent = candy
        
                    -- Create "Candy Root" TextLabel
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Text = "糖果"
                    textLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    textLabel.TextColor3 = Color3.new(1, 0, 1) -- Pink color for "Candy Root"
                    textLabel.BackgroundTransparency = 1
                    textLabel.TextSize = 35 -- Font size
                    textLabel.Font = Enum.Font.SourceSansBold
                    textLabel.Parent = billboardGui
        
                    -- Create Distance Label (positioned further below the "Candy Root" text)
                    local distanceLabel = Instance.new("TextLabel")
                    distanceLabel.Name = "距离"
                    distanceLabel.Size = UDim2.new(1, 0, 0.3, 0)
                    distanceLabel.Position = UDim2.new(0, 0, 0.7, 0) -- Positioned farther below the "Candy Root" label
                    distanceLabel.TextColor3 = Color3.new(1, 1, 1) -- White color for distance
                    distanceLabel.BackgroundTransparency = 1
                    distanceLabel.TextSize = 25 -- Font size for distance
                    distanceLabel.Font = Enum.Font.SourceSansBold
                    distanceLabel.Parent = billboardGui
        
                    -- Update the distance if showDistance is enabled
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
                -- Search all descendants in Workspace for parts named "CandyRoot"
                for _, descendant in ipairs(workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") and descendant.Name == "CandyRoot" then
                        addEspToCandy(descendant)
                    end
                end
            end
        
            if candyEspEnabled then
                findAllCandyRoots()
        
                -- Listen for new parts being added to Workspace
                connections.candyRootAdded = workspace.DescendantAdded:Connect(function(descendant)
                    if descendant:IsA("BasePart") and descendant.Name == "CandyRoot" then
                        addEspToCandy(descendant)
                    end
                end)
            else
                -- Remove ESP from each candy root when the toggle is off
                for _, descendant in ipairs(workspace:GetDescendants()) do
                    if descendant:IsA("BasePart") and descendant:FindFirstChild("CandyESP") then
                        descendant.CandyESP:Destroy()
                    end
                end
        
                -- Disconnect any connections to prevent memory leaks
                if connections.candyRootAdded then
                    connections.candyRootAdded:Disconnect()
                    connections.candyRootAdded = nil
                end
            end
        end)
        
        -- Second toggle: Show/Hide Distance
        OwO:Toggle("糖果距离", false, function(enabled)
            showDistance = enabled
        end)
    end
})

-- 用户信息标签
local Home = Window:MakeTab({
    Name = "用户信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Home:AddParagraph("用户名:", " "..game.Players.LocalPlayer.Name.."")
Home:AddParagraph("注入器:", " "..identifyexecutor().."")
Home:AddParagraph("服务器ID:", " "..game.GameId.."")
Home:AddParagraph("时间:", " "..os.date("%Y-%m-%d %H:%M:%S").."")

-- 通用功能标签
local Universal = Window:MakeTab({
    Name = "通用功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- 增强的通用功能
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

-- 移动速度控制
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

-- 跳跃高度控制
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

-- 重力控制
Universal:AddTextbox({
    Name = "重力设置",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end
})

-- 飞行功能
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
            
            -- 飞行控制
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

-- 增强飞行功能
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
            
            -- 增强飞行控制
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

-- 夜视功能
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

-- 穿墙功能
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

-- 无击倒功能
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

-- 超级跳跃功能
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

-- 点击传送工具
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

-- 传送工具增强版
Teleports:AddButton({
    Name = "增强传送工具",
    Callback = function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        
        -- 创建一个可视化标记
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
        
        -- 连接鼠标移动事件
        local mouseMoveConnection
        mouseMoveConnection = mouse.Move:Connect(function()
            local target = mouse.Target
            if target then
                local position = target.Position + Vector3.new(0, target.Size.Y/2 + 1, 0)
                marker.CFrame = CFrame.new(position)
            end
        end)
        
        -- 连接鼠标点击事件
        local mouseClickConnection
        mouseClickConnection = mouse.Button1Down:Connect(function()
            local target = mouse.Target
            if target then
                local position = target.Position + Vector3.new(0, target.Size.Y/2 + 5, 0)
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                
                -- 清理标记
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

-- 无敌功能
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

-- 隐身功能
Universal:AddButton({
    Name = "隐身(E键)",
    Callback = function()
        -- Roblox Invisibility Toggle Script
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

-- 无限子弹功能
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

-- 自瞄功能
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

-- 来自小凌自瞄源码的高级自瞄功能
Enhanced:AddToggle({
    Name = "高级自瞄",
    Default = false,
    Callback = function(Value)
        if Value then
            -- 创建自瞄GUI
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
            
            -- 高级自瞄逻辑
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
                        -- 更平滑的瞄准
                        local TargetPosition = ClosestPlayer.Character.Head.Position
                        local CurrentCFrame = Camera.CFrame
                        local NewCFrame = CFrame.new(CurrentCFrame.Position, TargetPosition)
                        
                        -- 使用插值使瞄准更平滑
                        Camera.CFrame = CurrentCFrame:Lerp(NewCFrame, 0.1)
                    end
                    
                    wait(0.05) -- 更高的更新频率
                end
            end)
        else
            _G.AdvancedAimbot = false
            -- 移除GUI
            pcall(function()
                game.CoreGui.AimbotGUI:Destroy()
            end)
        end
    end
})

-- 传送功能标签
local Teleports = Window:MakeTab({
    Name = "传送功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Teleports:AddSection("基础传送")

-- 常用传送位置
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

-- 保存当前位置
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

-- 传送到保存的位置
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

-- 特殊传送功能（基于示例代码）
Teleports:AddButton({
    Name = "特殊传送（远程事件）",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Players = game:GetService("Players")
        
        -- 检查是否存在远程事件
        local launchRemoteExists, launchRemote = pcall(function()
            return ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents"):WaitForChild("Launch")
        end)
        
        local returnRemoteExists, returnRemote = pcall(function()
            return ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents"):WaitForChild("Return")
        end)
        
        if launchRemoteExists and returnRemoteExists then
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            
            -- 触发启动远程事件
            launchRemote:FireServer()
            
            task.wait(1)
            
            -- 将玩家传送到极远位置
            character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(9000000000e9, 90000000000e9, 9000000000e9)
            
            task.wait(1)
            
            -- 触发返回远程事件
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

-- 自定义坐标传送
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

-- 传送工具增强版
Teleports:AddButton({
    Name = "增强传送工具",
    Callback = function()
        local player = game.Players.LocalPlayer
        local mouse = player:GetMouse()
        
        -- 创建一个可视化标记
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
        
        -- 连接鼠标移动事件
        local mouseMoveConnection
        mouseMoveConnection = mouse.Move:Connect(function()
            local target = mouse.Target
            if target then
                local position = target.Position + Vector3.new(0, target.Size.Y/2 + 1, 0)
                marker.CFrame = CFrame.new(position)
            end
        end)
        
        -- 连接鼠标点击事件
        local mouseClickConnection
        mouseClickConnection = mouse.Button1Down:Connect(function()
            local target = mouse.Target
            if target then
                local position = target.Position + Vector3.new(0, target.Size.Y/2 + 5, 0)
                player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
                
                -- 清理标记
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

-- 保存当前位置
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

-- 传送到保存的位置
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

-- 特殊传送功能（基于示例代码）
Teleports:AddButton({
    Name = "特殊传送（远程事件）",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Players = game:GetService("Players")
        
        -- 检查是否存在远程事件
        local launchRemoteExists, launchRemote = pcall(function()
            return ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents"):WaitForChild("Launch")
        end)
        
        local returnRemoteExists, returnRemote = pcall(function()
            return ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("LaunchEvents"):WaitForChild("Return")
        end)
        
        if launchRemoteExists and returnRemoteExists then
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            
            -- 触发启动远程事件
            launchRemote:FireServer()
            
            task.wait(1)
            
            -- 将玩家传送到极远位置
            character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(9000000000e9, 90000000000e9, 9000000000e9)
            
            task.wait(1)
            
            -- 触发返回远程事件
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

-- 自定义坐标传送
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

-- Ohio特定功能标签
local Ohio = Window:MakeTab({
    Name = "俄亥俄州功能",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- 瞬移功能
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

-- 自动功能
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

-- 自动银行功能
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

-- 自动金保险箱功能
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

-- 监狱人生功能标签
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
        
        -- 检查是否在监狱内
        if character and humanoid then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            if rootPart then
                local position = rootPart.Position
                -- 如果在监狱区域内
                if position.X < 0 and position.Z > 2000 then
                    -- 传送到越狱点
                    rootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
                end
            end
        end
    end
end

-- DOORS功能标签
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

-- 其他游戏标签
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

-- 来自退休脚本的更多功能
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

-- 关于标签
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

-- 创建示例标签和功能
local UniversalTab = CustomUI.CreateTab("通用功能")
local TeleportTab = CustomUI.CreateTab("传送功能")
local GameSpecificTab = CustomUI.CreateTab("游戏特定")
local OtherGamesTab = CustomUI.CreateTab("其他游戏")

-- 通用功能示例
local movementSection = CustomUI.CreateSection(UniversalTab, "移动控制")
CustomUI.CreateButton(movementSection, "超级跳跃", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 50
end)

CustomUI.CreateButton(movementSection, "重置跳跃高度", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 7.2
end)

local speedSlider = CustomUI.CreateSlider(movementSection, "移动速度", 16, 100, 16, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

CustomUI.CreateToggle(movementSection, "飞行模式", false, function(value)
    if value then
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
    else
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    end
end)

-- 传送功能增强版
local teleportSection = CustomUI.CreateSection(TeleportTab, "传送功能")

-- 显示当前坐标
local currentPosLabel = Instance.new("TextLabel")
currentPosLabel.Name = "CurrentPosLabel"
currentPosLabel.Size = UDim2.new(1, -10, 0, 30)
currentPosLabel.Position = UDim2.new(0, 0, 0, 0)
currentPosLabel.BackgroundTransparency = 1
currentPosLabel.Text = "当前坐标: (0, 0, 0)"
currentPosLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
currentPosLabel.Font = Enum.Font.SourceSans
currentPosLabel.TextSize = 14
currentPosLabel.TextXAlignment = Enum.TextXAlignment.Left
currentPosLabel.Parent = teleportSection.ContentContainer

-- 更新坐标显示
local function updatePositionDisplay()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local pos = player.Character.HumanoidRootPart.Position
        currentPosLabel.Text = string.format("当前坐标: (%.1f, %.1f, %.1f)", pos.X, pos.Y, pos.Z)
    end
end

-- 每秒更新一次坐标显示
spawn(function()
    while true do
        updatePositionDisplay()
        wait(1)
    end
end)

-- 保存当前位置
local savedPositions = {}
CustomUI.CreateButton(teleportSection, "保存当前位置", function()
    local player = game.Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local position = player.Character.HumanoidRootPart.CFrame
        table.insert(savedPositions, {
            name = "位置 #" .. #savedPositions + 1,
            cframe = position
        })
        print("位置已保存: 已保存当前位置为位置 #" .. #savedPositions)
    end
end)

-- 传送到保存的位置（下拉菜单）
local savedPositionsOptions = {"请选择位置"}
CustomUI.CreateDropdown(teleportSection, "传送到保存的位置", savedPositionsOptions, "请选择位置", function(value)
    if value ~= "请选择位置" then
        local index = tonumber(string.sub(value, -1))
        if savedPositions[index] and savedPositions[index].cframe then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedPositions[index].cframe
            print("已传送到保存的位置 #" .. index)
        else
            print("错误: 位置 #" .. index .. " 尚未保存")
        end
    end
end)

-- 自定义坐标传送
local xCoord = CustomUI.CreateTextbox(teleportSection, "X坐标", "0", function(value)
    -- 可以在这里添加验证逻辑
end)

local yCoord = CustomUI.CreateTextbox(teleportSection, "Y坐标", "0", function(value)
    -- 可以在这里添加验证逻辑
end)

local zCoord = CustomUI.CreateTextbox(teleportSection, "Z坐标", "0", function(value)
    -- 可以在这里添加验证逻辑
end)

CustomUI.CreateButton(teleportSection, "传送到自定义坐标", function()
    local x = tonumber(xCoord.Value) or 0
    local y = tonumber(yCoord.Value) or 0
    local z = tonumber(zCoord.Value) or 0
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
    print("已传送到坐标: (" .. x .. ", " .. y .. ", " .. z .. ")")
end)

-- 基础传送位置
CustomUI.CreateButton(teleportSection, "传送到出生点", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 20, 0)
end)

CustomUI.CreateButton(teleportSection, "传送到天空", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000, 0)
end)

CustomUI.CreateButton(teleportSection, "传送到地下", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -100, 0)
end)

-- 游戏特定功能示例
local doorsSection = CustomUI.CreateSection(GameSpecificTab, "DOORS游戏")
CustomUI.CreateButton(doorsSection, "夜视功能", function()
    game.Lighting.Ambient = Color3.new(1, 1, 1)
end)

CustomUI.CreateButton(doorsSection, "恢复正常光照", function()
    game.Lighting.Ambient = Color3.new(0, 0, 0)
end)

CustomUI.CreateToggle(doorsSection, "穿墙模式", false, function(value)
    game.Players.LocalPlayer.Character.Head.CanCollide = not value
    game.Players.LocalPlayer.Character.UpperTorso.CanCollide = not value
    game.Players.LocalPlayer.Character.LowerTorso.CanCollide = not value
    game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = not value
end)

-- 其他游戏功能示例
local otherGamesSection = CustomUI.CreateSection(OtherGamesTab, "外部脚本")
CustomUI.CreateButton(otherGamesSection, "墨水游戏OP级脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ScripterVaz/InkGameAzure/main/Protected_7974105512464815.lua.txt"))()
end)

CustomUI.CreateButton(otherGamesSection, "99夜全能脚本", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
end)

CustomUI.CreateButton(otherGamesSection, "后门v6x", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v6x/source.lua"))()
end)

-- 创建游戏自带的提示函数
local function createGameNotification(title, message, duration)
    -- 使用游戏的StarterGui来显示通知
    local StarterGui = game:GetService("StarterGui")
    
    -- 显示提示信息
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = message,
            Duration = duration or 5
        })
    end)
    
    -- 同时在控制台打印信息
    print("[" .. title .. "] " .. message)
end

-- 显示脚本加载完成信息
createGameNotification("综合罗布勒斯脚本", "v3.7.0加载完成！已重新引入Orion库依赖。", 5)
createGameNotification("使用说明", "请查看屏幕上的Orion库界面以访问脚本功能", 5)
createGameNotification("重要提示", "已恢复使用Orion库的悬浮窗UI框架", 5)

--[[
    综合罗布勒斯脚本
    版本: v3.7.0
    更新日期: 2025-09-12
    
    功能说明:
    - 用户信息显示
    - 通用功能（移动速度、跳跃高度、重力控制、夜视、穿墙、飞行、隐身、无限子弹、自瞄等）
    - 传送功能（包括常用位置传送、保存位置传送、自定义坐标传送、特殊传送（远程事件）、增强传送工具等）
    - Ohio特定功能（瞬移位置、银行/珠宝店刷新提醒、自动银行、自动金保险箱等）
    - 监狱人生传送位置和自动越狱功能
    - DOORS游戏功能（夜视仪、吸铁石、神圣炸弹、自动躲避、门提示、自动收集物品等）
    - 指令功能（无限指令/Yield等）
    - 增强功能（FPS提升、光影效果、超高画质、旋转效果、踏空行走、电脑键盘、飞车效果、飞行功能等）
    - 其他游戏的实用功能（透视、自动攻击、自动拾取、玩家透视等）
    - 来自多个流行脚本的功能（鸭脚本、刺客脚本、导管中心、北约中心、脚本中心等）
    - 北风中心系列脚本功能（力量传奇、极速传奇、吃人的火车爱德华、跟踪玩家、飞行V3等）
    
    传送功能增强说明:
    - 保存位置传送: 可以保存当前角色位置，并在需要时传送回该位置
    - 自定义坐标传送: 可以输入具体坐标值进行精确传送
    - 特殊传送（远程事件）: 基于远程事件的特殊传送机制
    - 增强传送工具: 提供可视化标记的传送工具，方便精确选择传送位置
    
    新增功能:
    - 反挂机功能：防止游戏检测到挂机
    - 高级自瞄功能：更平滑、更精确的自瞄
    - DOORS增强功能：杰夫毛绒玩具、变成杰夫杀手、金色手摇、召唤肘击王、万圣节糖果透视等
    - 更多透视功能：玩家透视等
    - 更多脚本中心：来自多个流行脚本的功能
    - 北风中心系列脚本：力量传奇、极速传奇、吃人的火车爱德华、跟踪玩家、飞行V3等
    - 更多通用功能：无击倒、超级跳跃、增强飞行等
    - 更多外部脚本链接：墨水游戏、99夜、后门系列、鹿管脚本等
    - 重新引入Orion库依赖：恢复使用Orion库的悬浮窗UI框架
    
    注意事项:
    - 此脚本仅供娱乐使用，仅供参考学习
    - 请勿用于非法用途或违反游戏规则的行为
    - 不保证所有功能在所有游戏中都能正常运行
    - 使用本脚本造成的任何后果由使用者自行承担
    
    版权声明:
    - 本脚本结合了多个开源脚本的功能
    - 部分代码来源于网络公开资源
    - 请勿用于商业用途
--]]

