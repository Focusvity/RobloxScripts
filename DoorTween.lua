-- Created by Focusvity
-- Roblox: darkeagle11221
-- This won't work unless you got the parts set up

local ts = game:GetService("TweenService")
local Door = script.Parent:WaitForChild("Door")
local DoorBar1 = script.Parent:WaitForChild("DoorBar1")
local DoorBar2 = script.Parent:WaitForChild("DoorBar2")

local tweenDoorInfo = TweenInfo.new(
	8,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.Out,
	0,
	false,
	0
)

local tweenBarInfo = TweenInfo.new(
	5,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.Out,
	0,
	false,
	0
)

local openDoorPos = {CFrame = CFrame.new(3, 18, -10)}
local closeDoorPos = {CFrame = CFrame.new(3, 6, -10)}
local openBar1Pos = {CFrame = CFrame.new(14, 2.498, -8.5)}
local closeBar1Pos = {CFrame = CFrame.new(3, 2.498, -8.5)}
local openBar2Pos = {CFrame = CFrame.new(-8, 9.5, -8.5)}
local closeBar2Pos = {CFrame = CFrame.new(3, 9.5, -8.5)}

local openDoor = ts:Create(Door, tweenDoorInfo, openDoorPos)
local closeDoor = ts:Create(Door, tweenDoorInfo, closeDoorPos)
local unlockBar1 = ts:Create(DoorBar1, tweenBarInfo, openBar1Pos)
local unlockBar2 = ts:Create(DoorBar2, tweenBarInfo, openBar2Pos)
local lockBar1 = ts:Create(DoorBar1, tweenBarInfo, closeBar1Pos)
local lockBar2 = ts:Create(DoorBar2, tweenBarInfo, closeBar2Pos)

script.Parent.Detector.Touched:Connect(function(hit)
	wait(1)
	unlockBar1:Play()
	unlockBar2:Play()
	wait(6)
	openDoor:Play()
	wait(14)
	closeDoor:Play()
	wait(9)
	lockBar1:Play()
	lockBar2:Play()
end)
