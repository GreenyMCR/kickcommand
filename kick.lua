


RegisterCommand("kick", function(source, args, rawCommand)
    args[1] = tonumber(args[1])
    local badBoi = tonumber(args[1])
    local kickReason = table.concat(args, " ", 2)


    if GetPlayerName(source) == "Greeny" then
        if badBoi then
            if kickReason then
                DropPlayer(badBoi, kickReason)
                TriggerClientEvent("chatMeessage", -1, "^4^*[Player Kicked] ^7" .. GetPlayerName(badBoi) .. " was kicked for:" .. kickReason)
            else
                TriggerClientEvent("chatMessage", source, "^1Invalid Player. Usage /kick ID Reason")
            end
        else
            TriggerClientEvent("chatMessage", source, "^1Invalid Permissions")
        end
    end





end)