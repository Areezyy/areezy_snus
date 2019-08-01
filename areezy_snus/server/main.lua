ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('snus', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local snus = xPlayer.getInventoryItem('snus')
	
		if snus.count > 0 then
			xPlayer.removeInventoryItem('snus', 1)
			TriggerClientEvent('esx_snus:startSnus', source)
		else
			TriggerClientEvent('esx:showNotification', source, ('Du har få snus kvar! Köp mera!'))
		end
end)
