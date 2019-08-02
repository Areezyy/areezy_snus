ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('snus', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local snus = xPlayer.getInventoryItem('snus')
	
		if snus.count > 0 then
			xPlayer.removeInventoryItem('snus', 1)
			TriggerClientEvent('esx_snus:startSnus', source)
			
			TriggerClientEvent("pNotify:SendNotification", source, {text = "Du stoppade upp en prilla!", type = "error", timeout = 2400, layout = "BottomCenter"})
		else
			TriggerClientEvent('esx:showNotification', source, ('Du har få snus kvar! Köp mera!'))
		end
end)

function sendNotification(xSource, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", xSource, {
        text = message,
        type = messageType,
        queue = "kekke",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end
