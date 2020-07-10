---------- MENU ----------

local KillsayWINDOW = gui.Window("CUSTOM_KILLSAY","Custom KIllsay Gui",100,100,200,190);
local KillsayGroupBox = gui.Groupbox(KillsayWINDOW,"Killsay Groupbox",15,10,170,200);
local KillsayCheckBox = gui.Checkbox(KillsayGroupBox,"KillsayCheckBox","Kill Say",false);
local KillsayText = gui.Editbox(KillsayGroupBox,"KillsayTextBox","Killsay Text");
KillsayWINDOW:SetOpenKey(45);

---------- KIllsay ----------

local Kill_String = " ";
local function CHAT_KillSay(Event)
   if (Event:GetName() == "player_death" and KillsayCheckBox:GetValue()) then
       local ME = client.GetLocalPlayerIndex();
       local INT_ATTACKER = Event:GetInt("attacker");
       local NAME_Victim = client.GetPlayerNameByUserID(INT_UID);
       local INDEX_Attacker = client.GetPlayerIndexByUserID(INT_ATTACKER);
       if (INDEX_Attacker == ME and INDEX_Victim ~= ME) then
           client.ChatSay(KillsayText:GetValue());
       end
   end
end
client.AllowListener("player_death");
callbacks.Register("FireGameEvent","AWKS",CHAT_KillSay);

-- Thanks To "LeoDeveloper" For Helping Me, Rep +1 Pls
-- https://aimware.net/forum/user/277153
