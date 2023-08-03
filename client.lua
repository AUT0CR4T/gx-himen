local QBCore = exports['qb-core']:GetCoreObject()
local spawned = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "himen" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent("gx-himen:client:Service", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)


-- Blips
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(491.21, -1536.72, 29.27)
    
    SetBlipSprite (blip, 96)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.9)
    SetBlipColour (blip, 59)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Himen')
    EndTextCommandSetBlipName(blip)
end)

RegisterNetEvent('gx-himen:client:ShopMenu', function()
    if Config.UsePed == true then
    exports['qb-menu']:openMenu({
        {
            header = "Ingredients",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Water",
            txt = "Price: 10x per 5$",
            params = {
                event = "gx-himen:client:BuyWater",
            }
        },
        {
            header = "Pint Glass",
            txt = "Price: 10x per 10$",
            params = {
                event = "gx-himen:client:BuyPintGlass",
            }
        },
        {
            header = "Yeast",
            txt = "Price: 10x per 5$",
            params = {
                event = "gx-himen:client:BuyYeast",
            }
        },
        {
            header = "Beer Glass",
            txt = "Price: 10x per 10$",
            params = {
                event = "gx-himen:client:BuyBeerGlass",
            }
        }, 
        {
            header = "Whiskey Glass",
            txt = "Price: 10x per 10$",
            params = {
                event = "gx-himen:client:BuyWhiskeyGlass",
            }
        },
        {
            header = "Sugar",
            txt = "Price: 10x per 5$",
            params = {
                event = "gx-himen:client:BuySugar",
            }
        },
        {
            header = "Potato",
            txt = "Price: 10x per 5$",
            params = {
                event = "gx-himen:client:BuyPotato",
            }
        },
        {
            header = "Rum",
            txt = "Price: 10x per 10$",
            params = {
                event = "gx-himen:client:BuyRum",
            }
        },
        {
            header = "Coke",
            txt = "Price: 10x per 10$",
            params = {
                event = "gx-himen:client:BuyCoke",
            }
        }, 
        {
            header = "Trimming Scissors",
            txt = "Price: 1x per 1$",
            params = {
                event = "gx-himen:client:BuyTrimmers",
            }
        },
    })
    end
end)

RegisterNetEvent('gx-himen:client:WeedPlantMenu', function() 
    exports['qb-menu']:openMenu({
        {
            header = "weed himen",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Harvest Weed",
            txt = "Requirements: <br> - 1 Trimming scissors",
            params = {
                event = "gx-himen:client:HarvestWeed",
            }
        },
    })
end)

RegisterNetEvent('gx-himen:client:WeedMenu', function() 
    exports['qb-menu']:openMenu({
        {
            header = "weeds himen",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Make Weed",
            txt = "Requirements: <br> - 4 Weed Leaf",
            params = {
                event = "gx-himen:client:MakeWeed",
            }
        },
    })
end)

RegisterNetEvent('gx-himen:client:BrewWhiskey', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('brewwhiskey', 'BREWING WHISKEY...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('gx-himen:server:BrewWhiskey')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('gx-himen:client:BrewBeer', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('brewbeer', 'BREWING BEER...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('gx-himen:server:BrewBeer')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('gx-himen:client:BrewHulk', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('brewhulk', 'BREWING HULK...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('gx-himen:server:BrewHulk')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('gx-himen:client:BrewVodka', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('brewvodka', 'BREWING Vodka...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('gx-himen:server:BrewVodka')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('gx-himen:client:BrewBlueH', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('brewblueh', 'BREWING BLUE H...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('gx-himen:server:BrewBlueH')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)


RegisterNetEvent('gx-himen:client:DrinkMenu', function() 
    exports['qb-menu']:openMenu({
        {
            header = "weeds himen",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Whiskey",
            txt = "Requirements: <br> - 1 Whiskey Glass <br> - 2 Water <br> - 1 Yeast",
            params = {
                event = "gx-himen:client:BrewWhiskey",
            }
        },
        {
            header = "Beer",
            txt = "Requirements: <br> - 1 Beer Glass <br> - 1 Water <br> - 2 Yeast",
            params = {
                event = "gx-himen:client:BrewBeer",
            }
        },
        {
            header = "Hulk Cocktail",
            txt = "Requirements: <br> - 1 Weed <br> - 1 Water <br> - 1 Yeast",
            params = {
                event = "gx-himen:client:BrewHulk",
            }
        },
        {
            header = "Vodka",
            txt = "Requirements: <br> - 1 Water <br> - 1 Sugar <br> - 1 Yeast <br>, 1 Potato",
            params = {
                event = "gx-himen:client:BrewVodka",
            }
        },
        {
            header = "Blue Hawaiian",
            txt = "Requirements: <br> - 1 Vodka <br> - 1 Sugar <br>, 1 Water <br>, 1 Rum",
            params = {
                event = "gx-himen:client:BrewBlueH",
            }
        },
    })
end)

RegisterNetEvent('gx-himen:client:HarvestWeed', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic3"})
    QBCore.Functions.Progressbar('weed', 'HARVESTING WEED...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('gx-himen:server:HarvestWeed')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('gx-himen:client:MakeWeed', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('trimweed', 'MAKING WEED...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('gx-himen:server:MakeWeed')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('gx-himen:client:StorageIngredients', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "himenstorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "himenstorage", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent('gx-himen:client:RefrigeratorIngredients', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "refrigeratoringredients")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "refrigeratoringredients", {
        maxweight = 500000,
        slots = 40,
    })
end)

RegisterNetEvent('gx-himen:client:Counter', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "counterhimen")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "counterhimen", {
        maxweight = 10000,
        slots = 40,
    })
end)

RegisterNetEvent('gx-himen:client:board1', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "himenboard1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "himenboard1", {
        maxweight = 20000,
        slots = 10,
    })
end)

RegisterNetEvent('gx-himen:client:board2', function() 
    TriggerEvent("inventory:client:SetCurrentStash", "himenboard2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "himenboard2", {
        maxweight = 20000,
        slots = 10,
    })
end)

function DoRequestAnimSet(anim)
	RequestAnimDict(anim)
	while not HasAnimDictLoaded(anim) do
		Citizen.Wait(1)
	end
end

RegisterNetEvent('gx-himen:client:DrinkBeer', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"beer"})
    QBCore.Functions.Progressbar('pintbeer', 'DRINKING A Beer ...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 40))
    end)
end)

RegisterNetEvent('gx-himen:client:DrinkHulk', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar('hulkcocktail', 'DRINKING A HULK ...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 40))
    end)
end)

RegisterNetEvent('gx-himen:client:DrinkBlueH', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"champagne"})
    QBCore.Functions.Progressbar('bluehawaiian', 'DRINKING A BLUE H ...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 40))
    end)
end)

RegisterNetEvent('gx-himen:client:DrinkCoke', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"drink"})
    QBCore.Functions.Progressbar('coke', 'DRINKING A COLA ...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 40))
    end)
end)

RegisterNetEvent('gx-himen:client:DrinkRum', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"Beer2"})
    QBCore.Functions.Progressbar('rum', 'DRINKING RUM ...', 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + math.random(30, 50))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('hud:server:RelieveStress', math.random(20, 40))
    end)
end)

local IngredientsPed = {
    Config.Ped
}

Citizen.CreateThread(function()
    if Config.UsePed == true then
    for _,v in pairs(IngredientsPed) do
        RequestModel(GetHashKey(v[7]))
        while not HasModelLoaded(GetHashKey(v[7])) do
            Wait(1)
        end
        IngredientsProcPed =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
        SetEntityHeading(IngredientsProcPed, v[5])
        FreezeEntityPosition(IngredientsProcPed, true)
        SetEntityInvincible(IngredientsProcPed, true)
        SetBlockingOfNonTemporaryEvents(IngredientsProcPed, true)
        TaskStartScenarioInPlace(IngredientsProcPed, "WORLD_HUMAN_STAND_MOBILE_UPRIGHT", 0, true) 
        end
    end
end)

Citizen.CreateThread(function ()
    if Config.UsePed == true then
    exports['qb-target']:AddBoxZone("PedIngredients", Config.PedTargetLoc, 1, 1, {
        name = "PedIngredients",
        heading = 0,
        debugPoly = false,
    }, {
        options = {
            {
                type = "Client",
                event = "gx-himen:client:ShopMenu",
                icon = "fas fa-shopping-bag",
                label = 'Talk with employee'
            },
        },
        distance = 2.5
    })
    end
end)

RegisterNetEvent('gx-himen:client:BuyWater', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_water', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "water_bottle", 10)
        TriggerServerEvent('gx-himen:server:Take5Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuyPintGlass', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_pintglass', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "pintglass", 10)
        TriggerServerEvent('gx-himen:server:Take10Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuyYeast', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_yeast', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "yeast", 10)
        TriggerServerEvent('gx-himen:server:Take5Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuyBeerGlass', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_beerglass', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "beerglass", 10)
        TriggerServerEvent('gx-himen:server:Take10Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuyWhiskeyGlass', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_whiskeyglass', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "whiskeyglass", 10)
        TriggerServerEvent('gx-himen:server:Take10Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuySugar', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_sugar', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "sugar", 10)
        TriggerServerEvent('gx-himen:server:Take5Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuyPotato', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_potato', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "potato", 10)
        TriggerServerEvent('gx-himen:server:Take5Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuyRum', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_rum', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "rum", 10)
        TriggerServerEvent('gx-himen:server:Take10Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuyCoke', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_coke', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "coke", 10)
        TriggerServerEvent('gx-himen:server:Take10Dollars')
    end)
end)

RegisterNetEvent('gx-himen:client:BuyTrimmers', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('buy_blueessence', 'PAYING...', 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('gx-himen:Server:AddItem', "trimming_scissors", 1)
        TriggerServerEvent('gx-himen:server:Take1Dollars')
    end)
end)


RegisterNetEvent("gx-himen:client:Menu", function()
    exports['qb-menu']:openMenu({
        {
            header = "Menu himen",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Drink",
            txt = "See what Drinks are available in our Bar!",
            params = {
                event = "gx-himen:client:DrinksMenu",
            }
        },
    })
end)

RegisterNetEvent('gx-himen:client:DrinksMenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "drink himen",
            isMenuHeader = true,
        },
        {
            header = "< Back",
            txt = "",
            params = {
                event = "gx-himen:client:SeeMenu",
            }
        },
        {
            header = "Whiskey",
            txt = "Price: 8$",
            params = {
                event = "gx-himen:client:DrinksMenu",
            }
        },
        {
            header = "Pint Of Beer",
            txt = "Price: 7$",
            params = {
                event = "gx-himen:client:DrinksMenu",
            }
        },
        {
            header = "Hulk Cocktail",
            txt = "Price: 15$",
            params = {
                event = "gx-himen:client:DrinksMenu",
            }
        },
        {
            header = "Vodka",
            txt = "Price: 5$",
            params = {
                event = "gx-himen:client:DrinksMenu",
            }
        },
        {
            header = "Blue Hawaiian",
            txt = "Price: 10$",
            params = {
                event = "gx-himen:client:DrinksMenu",
            }
        },
        {
            header = "Coke",
            txt = "Price: 4$",
            params = {
                event = "gx-himen:client:DrinksMenu",
            }
        },
        {
            header = "Rum",
            txt = "Price: 4$",
            params = {
                event = "gx-himen:client:DrinksMenu",
            }
        },
    })
end)

RegisterCommand('menu-himen', function()
    TriggerEvent('gx-himen:client:SeeMenu')
end)

RegisterNetEvent("gx-himen:client:BillPlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Bill",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("gx-himen:server:BillPlayer", dialog.id, dialog.amount)
    end
end)

