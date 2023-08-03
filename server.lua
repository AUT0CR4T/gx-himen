local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('gx-himen:server:HarvestWeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local trimmingscissors = Player.Functions.GetItemByName('trimming_scissors')

    if trimmingscissors ~= nil then

        Player.Functions.AddItem('weed_leaf', 4)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weed_leaf"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('gx-himen:server:MakeWeed', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local weedleaf = Player.Functions.GetItemByName('weed_leaf')

    if weedleaf ~= nil then

        Player.Functions.RemoveItem('weed_leaf', 4)
        Player.Functions.AddItem('ground_weed', 4)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["ground_weed"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('gx-himen:server:BrewWhiskey', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local whiskeyglass = Player.Functions.GetItemByName('whiskeyglass')
    local water = Player.Functions.GetItemByName('water_bottle')
    local yeast = Player.Functions.GetItemByName('yeast')

    if whiskeyglass ~= nil and water ~= nil and yeast ~= nil then

        Player.Functions.RemoveItem('whiskeyglass', 1)
        Player.Functions.RemoveItem('water_bottle', 2)
        Player.Functions.RemoveItem('yeast', 1)
        Player.Functions.AddItem('whiskey', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["whiskey"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('gx-himen:server:BrewBeer', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local beerglass = Player.Functions.GetItemByName('beerglass')
    local water = Player.Functions.GetItemByName('water_bottle')
    local yeast = Player.Functions.GetItemByName('yeast')

    if beerglass ~= nil and water ~= nil and yeast ~= nil then

        Player.Functions.RemoveItem('beerglass', 1)
        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('yeast', 2)
        Player.Functions.AddItem('pint_beer', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["pint_beer"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('gx-himen:server:BrewHulk', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cocktailglass = Player.Functions.GetItemByName('cocktailglass')
    local water = Player.Functions.GetItemByName('water_bottle')
    local yeast = Player.Functions.GetItemByName('yeast')
    local weed = Player.Functions.GetItemByName('ground_weed')

    if cocktailglass ~= nil and water ~= nil and yeast ~= nil and weed ~= nil then

        Player.Functions.RemoveItem('cocktailglass', 1)
        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('yeast', 1)
        Player.Functions.RemoveItem('ground_weed', 1)
        Player.Functions.AddItem('hulkcocktail', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["hulkcocktail"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('gx-himen:server:BrewVodka', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local potato = Player.Functions.GetItemByName('potato')
    local water = Player.Functions.GetItemByName('water_bottle')
    local yeast = Player.Functions.GetItemByName('yeast')
    local sugar = Player.Functions.GetItemByName('sugar')

    if potato ~= nil and water ~= nil and yeast ~= nil and sugar ~= nil then

        Player.Functions.RemoveItem('potato', 1)
        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('yeast', 1)
        Player.Functions.RemoveItem('potato', 1)
        Player.Functions.AddItem('vodka', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["vodka"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('gx-himen:server:BrewBlueH', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cocktailglass = Player.Functions.GetItemByName('cocktailglass')
    local water = Player.Functions.GetItemByName('water_bottle')
    local sugar = Player.Functions.GetItemByName('sugar')
    local rum = Player.Functions.GetItemByName('rum')
    local vodka = Player.Functions.GetItemByName('vodka')


    if cocktailglass ~= nil and water ~= nil and sugar ~= nil and rum ~= nil and vodka ~= nil then
       
        Player.Functions.RemoveItem('cocktailglass', 1)
        Player.Functions.RemoveItem('water_bottle', 1)
        Player.Functions.RemoveItem('vodka', 1)
        Player.Functions.RemoveItem('sugar', 1)
        Player.Functions.RemoveItem('rum', 1)
        Player.Functions.AddItem('blue_hawaiian', 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["blue_hawaiian"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

--|Money
RegisterNetEvent('gx-himen:server:Take1Dollars', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('bank', 1)
end)

RegisterNetEvent('gx-himen:server:Take5Dollars', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('bank', 5)
end)

RegisterNetEvent('gx-himen:server:Take10Dollars', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('bank', 10)
end)

RegisterNetEvent('gx-himen:server:Take20Dollars', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('bank', 20)
end)

RegisterNetEvent('gx-himen:server:Take30Dollars', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveMoney('bank', 30)
end)

-- Drinks
QBCore.Functions.CreateUseableItem("pint_beer", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('gx-himen:client:DrinkBeer', source)
        Player.Functions.RemoveItem('pint_beer', 1)
    end
end)

QBCore.Functions.CreateUseableItem("hulkcocktail", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('gx-himen:client:DrinkHulk', source)
        Player.Functions.RemoveItem('hulkcocktail', 1)
    end
end)

QBCore.Functions.CreateUseableItem("blue_hawaiian", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('gx-himen:client:DrinkBlueH', source)
        Player.Functions.RemoveItem('blue_hawaiian', 1)
    end
end)

QBCore.Functions.CreateUseableItem("coke", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('gx-himen:client:DrinkCoke', source)
        Player.Functions.RemoveItem('coke', 1)
    end
end)

QBCore.Functions.CreateUseableItem("rum", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('gx-himen:client:DrinkRum', source)
        Player.Functions.RemoveItem('rum', 1)
    end
end)

-- Bill Player
RegisterServerEvent("gx-himen:server:BillPlayer")
AddEventHandler("gx-himen:server:BillPlayer", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'himen' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname,
                            ['@sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must be a number above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You can not bill yourself...', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'The player is not online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No access', 'error')
        end
end)

RegisterNetEvent('gx-himen:Server:AddItem', function(item, amount)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.AddItem(item, amount)
end)
