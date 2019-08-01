ESX               = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

-----

RegisterNetEvent('esx_snus:startSnus')
AddEventHandler('esx_snus:startSnus', function(source)
	SnusAnimation()
end)

function SnusAnimation()
	local animDict = 'anim@mp_player_intcelebrationmale@nose_pick' --
	local animName = 'nose_pick' 
	local playerPed = GetPlayerPed(-1)

	
	RequestAnimDict(animDict)

	while not HasAnimDictLoaded(animDict) do
		Citizen.Wait(10)
	end

	TaskPlayAnim(GetPlayerPed(-1), animDict, animName, 8.0, -8.0, 1111, 0.1, 0, false, false, false)

	Citizen.Wait(1500) 
end
