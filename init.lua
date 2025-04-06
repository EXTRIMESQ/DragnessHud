-- Загружаем WindUI
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/main.lua"))()

-- Создаём окно
local Window = WindUI:CreateWindow("DragnessHud | PTS99")

-- Вкладки
local Tabs = {
    Home = Window:CreateTab("Home"),
    Farm = Window:CreateTab("Farm"),
    Mining = Window:CreateTab("Mining"),
    Events = Window:CreateTab("Events"),
    Developer = Window:CreateTab("Developer")
}

-- Отображение активной вкладки (опционально)
local currentTab = Tabs.Home
local function setActiveTab(tab)
    currentTab = tab
end

-- Пример кнопки
Tabs.Home:CreateLabel("Добро пожаловать в DragnessHud!")
Tabs.Home:CreateButton("Перейти во вкладку Farm", function()
    setActiveTab(Tabs.Farm)
    print("Открыта вкладка Farm")
end)
