ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(player)
    local steam = ""
    if Config.Log then
        for i = 0, GetNumPlayerIdentifiers(player) - 1 do
            local id = GetPlayerIdentifier(player, i)
            if string.find(id, "steam") then
                steam = id
            end
        end
        print("Syncing permissions to "..GetPlayerName(player).." with identifiers "..steam..".")
    end
    if IsPlayerAceAllowed(player, "esx_acesync.superadmin") then
        if ESX.GetGroup(player) != "superadmin" then
            if Config.Log then
                print("Syncing superadmin to "..steam.." previously ranked "..ESX.GetGroup(player)..".")
            end
            ExecuteCommand("setgroup "..player.." superadmin")
        end
    elseif IsPlayerAceAllowed(player, "esx_acesync.admin") then
        if ESX.GetGroup(player) != "admin" and (ESX.GetGroup(player) != "superadmin" or Config.SyncLowerPerms) then
            if Config.Log then
                print("Syncing admin to "..steam.." previously ranked "..ESX.GetGroup(player)..".")
            end
            ExecuteCommand("setgroup "..player.." admin")
        end
    elseif IsPlayerAceAllowed(player, "esx_acesync.mod") then
        if ESX.GetGroup(player) != "mod" and (ESX.GetGroup(player) != "user" or Config.SyncLowerPerms) then
            if Config.Log then
                print("Syncing mod to "..steam.." previously ranked "..ESX.GetGroup(player)..".")
            end
            ExecuteCommand("setgroup "..player.." mod")
        end
    else
        if ESX.GetGroup(player) != "user" and Config.SyncLowerPerms then
            if Config.Log then
                print("Syncing user to "..steam.." previously ranked "..ESX.GetGroup(player)..".")
            end
            ExecuteCommand("setgroup "..player.." user")
        end
    end
end)