local Knit = require(game:GetService("ReplicatedStorage").Knit)


local MyService2 = Knit.CreateService {
	Name = "MyService2";
	Client = {};
}


function MyService2:GetMessage()
	return "Hello from MyService2 (server)"
end


function MyService2:KnitStart()
	print(self.Name .. " started")
end


function MyService2:KnitInit()
	print(self.Name .. " initialized")
end


return MyService2