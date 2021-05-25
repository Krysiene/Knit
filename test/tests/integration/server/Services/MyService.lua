local Knit = require(game:GetService("ReplicatedStorage").Knit)
local Option = require(Knit.Util.Option)
local MyService2 = Knit.GetServiceInit(game:GetService("ServerScriptService").KnitTest.Services.MyService2)

local MyService = Knit.CreateService {
	Name = "MyService";
	Client = {};
}


function MyService:GetMessage()
	return "Hello from MyService (server)"
end


function MyService.Client:GetMessage(_player)
	return "Hello from MyService"
end


function MyService.Client:MaybeGetRandomNumber(_player)
	local rng = Random.new()
	local num = rng:NextNumber()
	if (num < 0.5) then
		return Option.Some(num)
	else
		return Option.None
	end
end


function MyService:KnitStart()
	print(self.Name .. " started")
	print(MyService2:GetMessage())
end


function MyService:KnitInit()
	print(self.Name .. " initialized")
end


return MyService