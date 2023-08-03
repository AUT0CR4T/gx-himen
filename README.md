# gx-himen
gx-himen is a bar script that uses the Himen MLO In south los santos With its own Custom Drinks.

# Preview
Preview Coming Soon

# Dependencies
https://www.gta5-mods.com/maps/mlo-hi-men-bar-add-on-sp-fivem
qb-core

Add Items To shared/items.lua

Add Job To Shared/jobs.lua

# Join The Discord
https://discord.gg/Cbb2Mb62hd

# Items.lua
    ['pintglass']                           = {['name'] = 'pintglass',                             ['label'] = 'Pint Glass',                     ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'pintglass.png',                   ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'Glass For Ya Pints Laddy!'},
    ['yeast']                               = {['name'] = 'yeast',                                 ['label'] = 'yeast',                          ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'flour.png',                       ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'Dont use Too Much!'},
    ['beerglass']                           = {['name'] = 'beerglass',                             ['label'] = 'Beer Glass',                     ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'pbeerglass.png',                  ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'Glass For Ya Beer Laddy!'},
    ['whiskeyglass']                        = {['name'] = 'whiskeyglass',                          ['label'] = 'Whiskey Glass',                  ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'pwhiskeyglass.png',               ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'Glass For Ya Whiskey Laddy!'},
    ['cocktailglass']                       = {['name'] = 'cocktailglass',                         ['label'] = 'Cocktail Glass',                 ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'cocktailglass.png',               ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'Glass For Ya Cocktails Laddy!'},
    ['hulkcocktail']                        = {['name'] = 'hulkcocktail',                          ['label'] = 'Hulk Cocktail',                  ['weight'] = 500,       ['type'] = 'item',         ['image'] = 'hulkcocktail.png',                ['unique'] = false,         ['useable'] = true,       ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'This Cocktail Is a Bit Too Green!'},
    ['blue_hawaiian']                       = {['name'] = 'blue_Hawaiian',                         ['label'] = 'Blue Hawaiian',                  ['weight'] = 500,       ['type'] = 'item',         ['image'] = 'marvelcocktail.png',              ['unique'] = false,         ['useable'] = true,       ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'This Cocktail Is a Bit Too Green!'},
    ['vodka']                               = {['name'] = 'vodka',                                 ['label'] = 'Vodka',                          ['weight'] = 500,       ['type'] = 'item',         ['image'] = 'vodka.png',                       ['unique'] = false,         ['useable'] = true,       ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
    ['pint_beer']                           = {['name'] = 'pint_beer',                             ['label'] = 'Pint Beer',                      ['weight'] = 500,       ['type'] = 'item',         ['image'] = 'beerglass.png',                   ['unique'] = false,         ['useable'] = true,       ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'Nothing like a good cold beer!'},
    ['whiskey']                             = {['name'] = 'whiskey',                               ['label'] = 'Whiskey',                        ['weight'] = 500,       ['type'] = 'item',         ['image'] = 'whiskey.png',                     ['unique'] = false,         ['useable'] = true,       ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
    ["trimming_scissors"] 		 	        = {["name"] = "trimming_scissors",           	       ["label"] = "Trimming Scissors",	 	         ["weight"] = 1500, 	 ["type"] = "item", 		["image"] = "trimming_scissors.png", 	       ["unique"] = false, 	       ["useable"] = false, 	 ["shouldClose"] = false,      ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Very Sharp Trimming Scissors"},
    ['ground_weed']                         = {['name'] = 'ground_weed',                           ['label'] = 'Weed',                           ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'ground-weed.png',                 ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'Whats this Green Stuff!'},
    ['sugar']                               = {['name'] = 'sugar',                                 ['label'] = 'Sugar',                          ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'sugar.png',                       ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'The Legal White Stuff!'},
    ['potato']                              = {['name'] = 'potato',                                ['label'] = 'Potato',                         ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'potato.png',                      ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'The Thing What Makes Chips!'},
    ['rum']                                 = {['name'] = 'rum',                                   ['label'] = 'Rum',                            ['weight'] = 0,         ['type'] = 'item',         ['image'] = 'rum.png',                         ['unique'] = false,         ['useable'] = true,       ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'RUMM!'},
    ['coke']                                = {['name'] = 'coke',                                  ['label'] = 'Cola',                           ['weight'] = 500,       ['type'] = 'item',         ['image'] = 'cocacola.png',                    ['unique'] = false,         ['useable'] = true,       ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
    ['weed_leaf']                           = {['name'] = 'weed_leaf',                              ['label'] = 'Weed Leaf',                      ['weight'] = 0,         ['type'] = 'item',        ['image'] = 'cocaineleaf.png',                 ['unique'] = false,         ['useable'] = false,      ['shouldClose'] = false,      ['combinable'] = nil,   ['description'] = 'A Different Type Of Leaf!'},

# Jobs.lua
    ['weedshop'] = { label = 'Weedshop', defaultDuty = true, offDutyPay = false, grades = { ['0'] = { name = 'Recruit', payment = 50 }, ['1'] = { name = 'Employee', payment = 75 }, ['2'] = { name = 'Manager', isboss = true, payment = 150 }, }, },
