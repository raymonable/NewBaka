NLS([[
    local StarterGui = game:GetService("StarterGui")
    
    StarterGui:SetCore("ResetButtonCallback", false)
    
    owner.PlayerGui:FindFirstChild("ScriptHubGUI"):Destroy()
    
    local emojis = {
        flushed = function() return utf8.char(0x1f633) end,
        plead = function() return utf8.char(0x1f97A) end
    }

    print('u hav ben uwuified!!!1!')
    print('tere is no escpe...... '..emojis.plead())

    local ChatBar = owner.PlayerGui:FindFirstChild("ChatBar", true)
    local OutputBar = owner.PlayerGui:FindFirstChild("InputBar", true)

    ChatBar.FocusLost:Connect(function(Entered)
        if Entered then
            if ChatBar.Text:sub(1,1) == "@" then
                ChatBar.Text = ChatBar.Text:sub(2)
                return
            end
            if string.find(ChatBar.Text:lower(), 'g/') or string.find(ChatBar.Text:lower(), 'get/') then
                ChatBar.Text = "aww, you know theres really no escape~!"
            else
                local text = string.split(ChatBar.Text:lower(), ' ')
local ntext = {}
local emojis = {
    function() return utf8.char(0x1f633) end,
    function() return utf8.char(0x1f629) end,
    function() return utf8.char(0x1f97A) end,
    function() return utf8.char(0x1f60F) end
}
local texts = {"mmmh~", "ah~", "nya~"}
for _, t in pairs(text) do
    if t == "" or t == " " then
    else
        local amount = math.random(0, 7)
        if amount >= 5 then
            amount = amount - 5
        else
            amount = 0
        end
        local a = ""
        local i = 0
        repeat
            if amount ~= 0 then
                a = t:sub(1, 1) .. '-' .. a
                i = i + 1
            end
        until i >= amount
        local ok = false
        repeat
            local l = t:sub(#t)
            if l == "." or l == "?" or l == "!" or l == "," or l == " " then
                t = t:sub(1, #t - 1)
            else
                ok = true
            end
        until ok
        ntext[#ntext + 1] = a .. t
    end
end
local parsed = table.concat(ntext, " ")
local operations = {
    function(a) return a .. "~" end,
    --function(a) return a:gsub('r', 'w'):gsub('l', 'w') end
}
for _, operation in pairs(operations) do parsed = operation(parsed) end
local e = math.random(0, 6)
if e >= 6 - #texts + 1 then
    e = e - (6 - #texts)
    parsed = parsed .. ' ' .. texts[e]
end
local e = math.random(0, 6)
if e >= 6 - #texts + 1 then
    e = e - (6 - #texts)
    parsed = texts[e] .. ' ' .. parsed
end
local e = math.random(0, 10)
if e >= 10 - #emojis + 1 then
    e = e - (10 - #emojis)
    parsed = parsed .. ' ' .. emojis[e]()
end
                ChatBar.Text = parsed
            end
        end
    end)
    
    OutputBar.FocusLost:Connect(function(Entered)
        if Entered then
            OutputBar.Text = ""
            print('told u there\'s no escape~')
            game.ReplicatedStorage.DefaultChatSystemChatEvents['SB_10']:FireServer('told u there\'s no escape~', 'SERVER')
        end
    end)
]], owner.PlayerGui)
