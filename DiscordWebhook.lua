-- Created by Focusvity
-- Roblox: darkeagle11221
-- Requires HttpService to be enabled

local http = game:GetService("HttpService")
local url = "Discord Webhook Link"
local data = {
	['username'] = "Name", -- What you already named it
	['content'] = "This seems to be functioning" -- Message you want to send
}

data = http:JSONEncode(data)
http:PostAsync(url, data)
