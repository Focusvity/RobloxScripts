local http = game:GetService("HttpService")
local url = "Discord Webhook Link"
local data = {
	['username'] = "Name", -- What you already named it
	['content'] = "This seems to be functioning" -- Message you want to sent
}

data = http:JSONEncode(data)
http:PostAsync(url, data)