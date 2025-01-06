Testcase1 = LibStub("AceAddon-3.0"):NewAddon("Testcase1", "AceConsole-3.0", "AceEvent-3.0" );

function Testcase1:OnInitialize()
	self:RegisterChatCommand("testcase", "ShowFrame")
	self:RegisterChatCommand("tc", "ShowFrame")
    self:Print("Testcase is work")
end

function Testcase1:ShowFrame()
    MainFrame:Show()
end


local Count = 0

function Testcase1:ChangeImage(Name) 
    local texture = _G[Name] 
    Count = Count + 1  
    if Count% 2 == 0 then 
        texture:SetTexture("Interface/Addons/Testcase1/resources/placeholder_before") 
    else 
        texture:SetTexture("Interface/Addons/Testcase1/resources/placeholder") 
    end 

    texture:Show()  
end
