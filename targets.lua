Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("himen-service", vector3(489.53, -1533.54, 29.17), 1, 1.2, {
        name = "himen-service",
        heading = 91,
        debugpoly = false,
        minZ=26.17,
        maxZ=30.17,
    }, {
        options = {
            {  
            event = "gx-himen:client:Service",
            icon = "far fa-clipboard",
            label = "Clock in/out",
            job = "himen",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("counterhimen", vector3(494.21, -1533.15, 29.5), 1.6, 3.6, {
        name="counterhimen",
        heading=89,
        debugpoly = false,
    }, {
        options = {
            {
            event = "gx-himen:client:Counter",
            icon = "far fa-clipboard",
            label = "Counter",
            },
        },
        distance = 3.5
    })

    exports['qb-target']:AddBoxZone("himenboard1", vector3(492.97, -1534.75, 29.37), 0.5, 0.7, {
        name = "himenboard1",
        heading = 87.8,
        debugpoly = false,
    }, {
        options = {
            {
            event = "gx-himen:client:board1",
            icon = "far fa-clipboard",
            label = "Board",
            },
        },
        distance = 1.5
    })

    exports['qb-target']:AddBoxZone("himenstorage", vector3(493.52, -1525.96, 26.59), 1.6, 1, {
        name="himenstorage",
        heading=89.0,
        debugpoly = false,
    }, {
            options = {
                {
                    event = "gx-himen:client:StorageIngredients",
                    icon = "fas fa-laptop",
                    label = "Ingredient Storage",
                    job = "himen",
                },
            },
            distance = 1.0
        })

    exports['qb-target']:AddBoxZone("himen-drinks", vector3(491.14, -1535.52, 29.17), 0.7, 1.5, {
        name="himen-drinks",
        heading=97.15,
        debugPoly=false,

    }, {
            options = {
                {
                    event = "gx-himen:client:DrinkMenu",
                    icon = "fas fa-rocket",
                    label = "DRINK IT UP!",
                    job = "himen",
                },
            },
            distance = 1.5
        })

    exports['qb-target']:AddBoxZone("himen-weed", vector3(497.08, -1527.49, 22.34), 0.7, 1.5, {
        name="himen-weed",
        heading=97.15,
        debugPoly=false,
    
    }, {
            options = {
                {
                    event = "gx-himen:client:WeedMenu",
                    icon = "fas fa-rocket",
                    label = "Get SUM LEF",
                    job = "himen",
                },
            },
            distance = 1.5
        })
    
    exports['qb-target']:AddBoxZone("himen-weedplant", vector3(493.84, -1536.78, 22.34), 0.7, 1.5, {
        name="himen-weedplant",
        heading=97.15,
        debugPoly=false,
        
    }, {
             options = {
                {
                    event = "gx-himen:client:WeedPlantMenu",
                    icon = "fas fa-rocket",
                    label = "Get SUM WED",
                    job = "himen",
                },
            },
            distance = 1.5
        })

    exports['qb-target']:AddBoxZone("himen-menu1", vector3(497.73, -1528.87, 29.37), 0.5, 0.4, {
        name="himen-menu1",
        debugpoly = false,
        heading=270,
    }, {
            options = {
                {
                    event = "gx-himen:client:Menu",
                    icon = "fas fa-clipboard",
                    label = "See Menu",
                },
                {
                    event = "gx-himen:client:BillPlayer",
                    icon = "fas fa-clipboard",
                    label = "Bill Player",
                    job = "himen",
                },
            },
            distance = 1.5
        })

    exports['qb-target']:AddBoxZone("himen-clothes", vector3(488.39, -1528.86, 28.37), 1.5, 1, {
        name="himen-clothes",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-clothing:client:openOutfitMenu",
            icon = "far fa-tshirt",
            label = "Change Clothes",
            },
        },
        distance = 1.5
    })
end)
