local ChooseMount = LibStub("AceAddon-3.0"):NewAddon("MyAddon")
local group = {}
local LibKeyBount
SLASH_CHOOSEMOUNT1 = "/choosemount"
SLASH_CHOOSEMOUNT2 = "/cm"

function SlashCmdList.CHOOSEMOUNT(msg, editbox)
	if msg == "bind" then
		LibKeyBound:Toggle()
	end
end

ChooseMount.human = {"Black Stallion",
					"Brown Horse",
					"Chestnut Mare",
					"Palomino",
					"Pinto",
					"Swift Brown Steed",
					"Swift Palomino",
					"Swift White Steed",
					"White Stallion"}

ChooseMount.orc = {"Black Wolf",
				  "Brown Wolf",
				  "Dire Wolf",
				  "Red Wolf",
				  "Swift Brown Wolf",
				  "Swift Gray Wolf",
				  "Swift Timber Wolf",
				  "Timber Wolf",
				  "Winter Wolf"}

ChooseMount.dwarf = {"Black Ram",
					"Brown Ram",
					"Frost Ram",
					"Gray Ram",
					"Swift Brown Ram",
					"Swift Gray Ram",
					"Swift White Ram",
					"White Ram"}

ChooseMount.scourge = {"Black Skeletal Horse",
					 "Blue Skeletal Horse",
					 "Brown Skeletal Horse",
					 "Green Skeletal Warhorse",
					 "Ochre Skeletal Warhorse",
					 "Purple Skeletal Warhorse",
					 "Red Skeletal Horse"}

ChooseMount.nightElf = {"Ancient Frostsaber",
					   "Black Nightsaber",
					   "Spotted Frostsaber",
					   "Striped Dawnsaber",
					   "Striped Frostsaber",
					   "Striped Nightsaber",
					   "Swift Frostsaber",
					   "Swift Mistsaber",
					   "Swift Stormsaber"}

ChooseMount.tauren = {"Brown Kodo",
					 "Gray Kodo",
					 "Great Brown Kodo",
					 "Great Gray Kodo",
					 "Great White Kodo",
					 "Green Kodo",
					 "Teal Kodo",
					 "White Kodo"}

ChooseMount.gnome = {"Blue Mechanostrider",
					"Green Mechanostrider",
					"Icy Blue Mechanostrider Mod A",
					"Red Mechanostrider",
					"Swift Green Mechanostrider",
					"Swift White Mechanostrider",
					"Swift Yellow Mechanostrider",
					"Unpainted Mechanostrider",
					"White Mechanostrider Mod B"}

ChooseMount.troll = {"Emerald Raptor",
					"Ivory Raptor",
					"Mottled Red Raptor",
					"Swift Blue Raptor",
					"Swift Olive Raptor",
					"Swift Orange Raptor",
					"Turquoise Raptor",
					"Violet Raptor"}

ChooseMount.draenei = {"Brown Elekk",
					  "Gray Elekk",
					  "Great Blue Elekk",
					  "Great Green Elekk",
					  "Great Purple Elekk",
					  "Purple Elekk"}

ChooseMount.bloodElf = {"Black Hawkstrider",
					   "Blue Hawkstrider",
					   "Purple Hawkstrider",
					   "Red Hawkstrider",
					   "Swift Green Hawkstrider",
					   "Swift Pink Hawkstrider",
					   "Swift Purple Hawkstrider"}

ChooseMount.worgen = {"Mountain Horse",
					 "Swift Mountain Horse"}

ChooseMount.goblin = {"Goblin Trike",
					 "Goblin Turbo-Trike"}

ChooseMount.pandaren = {"Black Dragon Turtle",
					   "Blue Dragon Turtle",
					   "Brown Dragon Turtle",
					   "Great Black Dragon Turtle",
					   "Great Blue Dragon Turtle",
					   "Great Brown Dragon Turtle",
					   "Great Green Dragon Turtle",
					   "Great Purple Dragon Turtle",
					   "Great Red Dragon Turtle",
					   "Green Dragon Turtle",
					   "Purple Dragon Turtle",
					   "Red Dragon Turtle"}

ChooseMount.paladin = {"Argent Charger",
					  "Argent Warhorse",
					  "Charger",
					  "Warhorse"}

ChooseMount.thalassian = {"Argent Charger",
								"Argent Warhorse",
								"Thalassian Charger",
								"Thalassian Warhorse"}

ChooseMount.exarch = {"Argent Charger",
							"Argent Warhorse",
							"Exarch's Elekk",
							"Great Exarch's Elekk"}

ChooseMount.sunwalker = {"Argent Charger",
							   "Argent Warhorse",
							   "Great Sunwalker Kodo",
							   "Sunwalker Kodo"}

ChooseMount.warlock = {"Dreadsteed",
					  "Felsteed"}

ChooseMount.deathKnight = {"Acherus Deathcharger",
						  "Crimson Deathcharger",
						  "Winged Steed of the Ebon Blade"}
						  
ChooseMount.demonHunter = {"Felsaber"}

ChooseMount.allianceGround = {"Armored Brown Bear",
							 "Armored Irontusk",
							 "Black Battlestrider",
							 "Black War Bear",
							 "Black War Elekk",
							 "Black War Mammoth",
							 "Black War Ram",
							 "Black War Steed",
							 "Black War Tiger",
							 "Champion's Treadblade",
							 "Crusader's White Warhorse",
							 "Darnassian Nightsaber",
							 "Dusty Rockhide",
							 "Exodar Elekk",
							 "Gnomeregan Mechanostrider",
							 "Golden King",
							 "Golden Primal Direhorn",
							 "Grand Black War Mammoth",
							 "Grand Ice Mammoth",
							 "Great Red Elekk",
							 "Ice Mammoth",
							 "Ironforge Ram",
							 "Mekgineer's Chopper",
							 "Pale Thorngrazer",
							 "Prestigious War Steed",
							 "Quel'dorei Steed",
							 "Spectral Steed",
							 "Stormpike Battle Charger",
							 "Stormwind Steed",
							 "Swift Alliance Steed",
							 "Swift Brewfest Ram",
							 "Swift Gray Steed",
							 "Swift Moonsaber",
							 "Swift Violet Ram",
							 "Traveler's Tundra Mammoth",
							 "Turbostrider",
							 "Vicious Gilnean Warhorse",
							 "Vicious War Elekk",
							 "Vicious War Mechanostrider",
							 "Vicious War Ram",
							 "Vicious War Steed",
							 "Vicious Warsaber",
							 "Winterspring Frostsaber",
							 "Wooly Mammoth"}

ChooseMount.hordeGround = {"Armored Brown Bear",
						  "Black War Bear",
						  "Black War Kodo",
						  "Black War Mammoth",
						  "Black War Raptor",
						  "Black War Wolf",
						  "Breezestrider Stallion",
						  "Crimson Primal Direhorn",
						  "Crusader's Black Warhorse",
						  "Darkspear Raptor",
						  "Forsaken Warhorse",
						  "Frostwolf Howler",
						  "Grand Black War Mammoth",
						  "Grand Ice Mammoth",
						  "Great Brewfest Kodo",
						  "Great Golden Kodo",
						  "Ice Mammoth",
						  "Ironside Warwolf",
						  "Kor'kron Annihilator",
						  "Mechano-Hog",
						  "Orgrimmar Wolf",
						  "Prestigious War Wolf",
						  "Red Skeletal Warhorse",
						  "Silvermoon Hawkstrider",
						  "Spectral Wolf",
						  "Sunreaver Hawkstrider",
						  "Swift Burgundy Wolf",
						  "Swift Frostwolf",
						  "Swift Horde Wolf",
						  "Swift Purple Raptor",
						  "Swift Red Hawkstrider",
						  "Swift Warstrider",
						  "Thunder Bluff Kodo",
						  "Traveler's Tundra Mammoth",
						  "Venomhide Ravasaur",
						  "Vicious Skeletal Warhorse",
						  "Vicious War Kodo",
						  "Vicious War Raptor",
						  "Vicious War Trike",
						  "Vicious War Wolf",
						  "Vicious Warstrider",
						  "Warlord's Deathwheel",
						  "White Skeletal Warhorse",
						  "Wooly Mammoth"}

ChooseMount.ground = {"Amani Battle Bear",
					 "Amani War Bear",
					 "Amber Primordial Direhorn",
					 "Amber Scorpion",
					 "Arcadian War Turtle",
					 "Arcanist's Manasaber",
					 "Armored Frostboar",
					 "Armored Frostwolf",
					 "Armored Razorback",
					 "Armored Razzashi Raptor",
					 "Ashhide Mushan Beast",
					 "Azure Riding Crane",
					 "Azure Water Strider",
					 "Big Battle Bear",
					 "Big Blizzard Bear",
					 "Black Primal Raptor",
					 "Black Riding Goat",
					 "Blacksteel Battleboar",
					 "Blonde Riding Yak",
					 "Bloodfang Widow",
					 "Bloodhoof Bull",
					 "Blue Shado-Pan Riding Tiger",
					 "Bone-White Primal Raptor",
					 "Brawler's Burly Mushan Beast",
					 "Brewfest Ram",
					 "Brilliant Direbeak",
					 "Bristling Hellboar",
					 "Brown Riding Camel",
					 "Brown Riding Goat",
					 "Challenger's War Yeti",
					 "Coalfist Gronnling",
					 "Cobalt Primordial Direhorn",
					 "Cobalt Riding Talbuk",
					 "Cobalt War Talbuk",
					 "Core Hound",
					 "Crimson Water Strider",
					 "Dark Riding Talbuk",
					 "Dark War Talbuk",
					 "Darkmoon Dancing Bear",
					 "Deathtusk Felboar",
					 "Domesticated Razorback",
					 "Fathom Dweller",
					 "Felblaze Infernal",
					 "Fiery Warhorse",
					 "Flametalon of Alysrazor",
					 "Fossilized Raptor",
					 "Frostplains Battleboar",
					 "Garn Nighthowl",
					 "Garn Steelmaw",
					 "Giant Coldsnout",
					 "Golden Riding Crane",
					 "Gorestrider Gronnling",
					 "Grand Expedition Yak",
					 "Great Greytusk",
					 "Green Primal Raptor",
					 "Green Shado-Pan Riding Tiger",
					 "Grey Riding Camel",
					 "Grey Riding Yak",
					 "Grove Defiler",
					 "Hellfire Infernal",
					 "Illidari Felstalker",
					 "Infernal Direwolf",
					 "Ironbound Wraithcharger",
					 "Ironhoof Destroyer",
					 "Ivory Hawkstrider",
					 "Jade Primordial Direhorn",
					 "Kor'kron Juggernaut",
					 "Kor'kron War Wolf",
					 "Llothien Prowler",
					 "Magic Rooster",
					 "Midnight",
					 "Minion of Grumpus",
					 "Mosshide Riverwallow",
					 "Mottled Meadowstomper",
					 "Mudback Riverbeast",
					 "Predatory Bloodgazer",
					 "Prestigious Bronze Courser",
					 "Prestigious Ivory Courser",
					 "Primal Gladiator's Felblood Gronnling",
					 "Ratstallion",
					 "Raven Lord",
					 "Red Primal Raptor",
					 "Red Shado-Pan Riding Tiger",
					 "Regal Riding Crane",
					 "Rivendare's Deathcharger",
					 "Rockspine Basilisk",
					 "Rocktusk Battleboar",
					 "Sapphire Riverbeast",
					 "Savage Raptor",
					 "Shadowhide Pearltusk",
					 "Shadowmane Charger",
					 "Silver Riding Talbuk",
					 "Silver War Talbuk",
					 "Slate Primordial Direhorn",
					 "Smoky Direwolf",
					 "Snowfeather Hunter",
					 "Son of Galleon",
					 "Spawn of Horridon",
					 "Spectral Tiger",
					 "Spirit of Eche'ro",
					 "Sunhide Gronnling",
					 "Swift Breezestrider",
					 "Swift Forest Strider",
					 "Swift Lovebird",
					 "Swift Razzashi Raptor",
					 "Swift Shorestrider",
					 "Swift Spectral Tiger",
					 "Swift Springstrider",
					 "Swift White Hawkstrider",
					 "Swift Zhevra",
					 "Swift Zulian Panther",
					 "Swift Zulian Tiger",
					 "Tan Riding Camel",
					 "Tan Riding Talbuk",
					 "Tan War Talbuk",
					 "Trained Icehoof",
					 "Trained Meadowstomper",
					 "Trained Riverwallow",
					 "Trained Rocktusk",
					 "Trained Silverpelt",
					 "Trained Snarler",
					 "Tundra Icehoof",
					 "Viridian Sharptalon",
					 "Voidtalon of the Dark Star",
					 "Warmongering Gladiator's Felblood Gronnling",
					 "Warsong Direfang",
					 "White Polar Bear",
					 "White Riding Camel",
					 "White Riding Goat",
					 "White Riding Talbuk",
					 "White War Talbuk",
					 "Wild Gladiator's Felblood Gronnling",
					 "Wild Goretusk",
					 "Witherhide Cliffstomper",
					 "Wooly White Rhino"}

ChooseMount.allianceFlying = {"Armored Blue Dragonhawk",
							 "Armored Snowy Gryphon",
							 "Blue Dragonhawk",
							 "Ebon Gryphon",
							 "Golden Gryphon",
							 "Grand Armored Gryphon",
							 "Grand Gryphon",
							 "Pandaren Kite",
							 "Silver Covenant Hippogryph",
							 "Snowy Gryphon",
							 "Spectral Gryphon",
							 "Swift Blue Gryphon",
							 "Swift Green Gryphon",
							 "Swift Purple Gryphon",
							 "Swift Red Gryphon"}

ChooseMount.hordeFlying = {"Armored Blue Wind Rider",
						  "Armored Red Dragonhawk",
						  "Blue Wind Rider",
						  "Grand Armored Wyvern",
						  "Grand Wyvern",
						  "Green Wind Rider",
						  "Pandaren Kite",
						  "Red Dragonhawk",
						  "Spectral Wind Rider",
						  "Sunreaver Dragonhawk",
						  "Swift Green Wind Rider",
						  "Swift Purple Wind Rider",
						  "Swift Red Wind Rider",
						  "Swift Yellow Wind Rider",
						  "Tawny Wind Rider"}

ChooseMount.flying = {"Albino Drake",
					 "Amani Dragonhawk",
					 "Argent Hippogryph",
					 "Armored Bloodwing",
					 "Armored Dread Raven",
					 "Armored Skyscreamer",
					 "Ashen Pandaren Phoenix",
					 "Ashes of Al'ar",
					 "Astral Cloud Serpent",
					 "Azure Cloud Serpent",
					 "Azure Drake",
					 "Azure Netherwing Drake",
					 "Big Love Rocket",
					 "Black Drake",
					 "Black Proto-Drake",
					 "Blazing Drake",
					 "Blazing Hippogryph",
					 "Bloodbathed Frostbrood Vanquisher",
					 "Blue Drake",
					 "Blue Proto-Drake",
					 "Blue Riding Nether Ray",
					 "Bronze Drake",
					 "Brutal Nether Drake",
					 "Cataclysmic Gladiator's Twilight Drake",
					 "Celestial Steed",
					 "Cenarion War Hippogryph",
					 "Cindermane Charger",
					 "Clutch of Ji-Kun",
					 "Cobalt Netherwing Drake",
					 "Corrupted Dreadwing",
					 "Corrupted Fire Hawk",
					 "Corrupted Hippogryph",
					 "Crimson Cloud Serpent",
					 "Crimson Pandaren Phoenix",
					 "Cruel Gladiator's Storm Dragon",
					 "Dark Phoenix",
					 "Deadly Gladiator's Frost Wyrm",
					 "Drake of the East Wind",
					 "Drake of the North Wind",
					 "Drake of the South Wind",
					 "Drake of the West Wind",
					 "Dread Raven",
					 "Eclipse Dragonhawk",
					 "Emerald Drake",
					 "Emerald Hippogryph",
					 "Emerald Pandaren Phoenix",
					 "Enchanted Fey Dragon",
					 "Experiment 12-B",
					 "Fearless Gladiator's Storm Dragon",
					 "Feldrake",
					 "Felfire Hawk",
					 "Felsteel Annihilator",
					 "Ferocious Gladiator's Storm Dragon",
					 "Flameward Hippogryph",
					 "Furious Gladiator's Frost Wyrm",
					 "Ghastly Charger",
					 "Golden Cloud Serpent",
					 "Green Proto-Drake",
					 "Green Riding Nether Ray",
					 "Grievous Gladiator's Cloud Serpent",
					 "Grinning Reaver",
					 "Grove Warden",
					 "Headless Horseman's Mount",
					 "Heart of the Aspects",
					 "Hearthsteed",
					 "Heavenly Azure Cloud Serpent",
					 "Heavenly Crimson Cloud Serpent",
					 "Heavenly Golden Cloud Serpent",
					 "Heavenly Onyx Cloud Serpent",
					 "Icebound Frostbrood Vanquisher",
					 "Imperial Quilen",
					 "Infinite Timereaver",
					 "Invincible",
					 "Iron Skyreaver",
					 "Ironbound Proto-Drake",
					 "Jade Cloud Serpent",
					 "Jade Pandaren Kite",
					 "Leyfeather Hippogryph",
					 "Life-Binder's Handmaiden",
					 "Long-Forgotten Hippogryph",
					 "Malevolent Gladiator's Cloud Serpent",
					 "Mechanized Lumber Extractor",
					 "Merciless Nether Drake",
					 "Mimiron's Head",
					 "Mottled Drake",
					 "Mystic Runesaber",
					 "Obsidian Nightwing",
					 "Onyx Cloud Serpent",
					 "Onyx Netherwing Drake",
					 "Onyxian Drake",
					 "Phosphorescent Stone Drake",
					 "Plagued Proto-Drake",
					 "Prideful Gladiator's Cloud Serpent",
					 "Pureblood Fire Hawk",
					 "Purple Netherwing Drake",
					 "Purple Riding Nether Ray",
					 "Red Drake",
					 "Red Flying Cloud",
					 "Red Proto-Drake",
					 "Red Riding Nether Ray",
					 "Relentless Gladiator's Frost Wyrm",
					 "Rusted Proto-Drake",
					 "Ruthless Gladiator's Twilight Drake",
					 "Silver Riding Nether Ray",
					 "Sky Golem",
					 "Smoldering Ember Wyrm",
					 "Soaring Skyterror",
					 "Solar Spirehawk",
					 "Spawn of Galakras",
					 "Stormcrow",
					 "Swift Nether Drake",
					 "Swift Windsteed",
					 "Thundering August Cloud Serpent",
					 "Thundering Cobalt Cloud Serpent",
					 "Thundering Jade Cloud Serpent",
					 "Thundering Onyx Cloud Serpent",
					 "Thundering Ruby Cloud Serpent",
					 "Time-Lost Proto-Drake",
					 "Twilight Drake",
					 "Twilight Harbinger",
					 "Tyrael's Charger",
					 "Tyrannical Gladiator's Cloud Serpent",
					 "Vengeful Nether Drake",
					 "Veridian Netherwing Drake",
					 "Vicious Gladiator's Twilight Drake",
					 "Vindictive Gladiator's Storm Dragon",
					 "Violet Netherwing Drake",
					 "Violet Pandaren Phoenix",
					 "Violet Proto-Drake",
					 "Vitreous Stone Drake",
					 "Volcanic Stone Drake",
					 "Warforged Nightmare",
					 "Winged Guardian",
					 "Wrathful Gladiator's Frost Wyrm",
					 "X-51 Nether-Rocket",
					 "X-51 Nether-Rocket X-TREME",
					 "X-53 Touring Rocket"}

ChooseMount.alchemy = {"Sandstone Drake"}

ChooseMount.blacksmithing = {"Steelbound Devourer"}

ChooseMount.engineering = {"Depleted-Kyparium Rocket",
						  "Flying Machine",
						  "Geosynchronous World Spinner",
						  "Turbo-Charged Flying Machine"}

ChooseMount.jewelcrafting = {"Jade Panther",
							"Jeweled Onyx Panther",
							"Ruby Panther",
							"Sapphire Panther",
							"Sunstone Panther"}

ChooseMount.leatherworking = {"Dustmane Direwolf",
							 "Great Northern Elderhorn"}

ChooseMount.tailoring = {"Creeping Carpet",
						"Flying Carpet",
						"Frosty Flying Carpet",
						"Magnificent Flying Carpet"}

ChooseMount.aquatic = {"Abyssal Seahorse",
					  "Brinedeep Bottom-Feeder",
					  "Darkwater Skate",
					  "Riding Turtle",
					  "Sea Turtle",
					  "Subdued Seahorse"}

ChooseMount.qiraji = {"Black Qiraji Battle Tank",
					 "Blue Qiraji Battle Tank",
					 "Green Qiraji Battle Tank",
					 "Red Qiraji Battle Tank",
					 "Ultramarine Qiraji Battle Tank",
					 "Yellow Qiraji Battle Tank"}

ChooseMount.raceIcons = {["Human"] = "Interface/ICONS/Ability_Mount_RidingHorse",
						["Orc"] = "Interface/ICONS/Ability_Mount_BlackDireWolf",
						["Dwarf"] = "Interface/ICONS/Ability_Mount_MountainRam",
						["Scourge"] = "Interface/ICONS/Ability_Mount_Undeadhorse",
						["NightElf"] = "Interface/ICONS/Ability_Mount_WhiteTiger",
						["Tauren"] = "Interface/ICONS/Ability_Mount_Kodo_01",
						["Gnome"] = "Interface/ICONS/Ability_Mount_MechaStrider",
						["Troll"] = "Interface/ICONS/Ability_Mount_Raptor",
						["Draenei"] = "Interface/ICONS/Ability_Mount_RidingElekk_Purple",
						["BloodElf"] = "Interface/ICONS/Ability_Mount_CockatriceMount",
						["Worgen"] = "Interface/ICONS/Ability_Mount_RidingHorse",
						["Goblin"] = "Interface/ICONS/INV_Misc_Key_03",
						["Pandaren"] = "Interface/ICONS/Ability_Mount_PandaranMountGreen"}

ChooseMount.classIcons = {["PALADIN"] = "Interface/ICONS/Spell_Nature_Swiftness",
						 ["THALASSIAN"] = "Interface/ICONS/Spell_Nature_Swiftness",
						 ["EXARCH"] = "Interface/ICONS/Spell_Nature_Swiftness",
						 ["SUNWALKER"] = "Interface/ICONS/Ability_Mount_Kodo_03",
						 ["WARLOCK"] = "Interface/ICONS/Spell_Nature_Swiftness",
						 ["DEATH KNIGHT"] = "Interface/ICONS/Spell_DeathKnight_SummonDeathCharger",
						 ["DEMON HUNTER"] = "Interface/ICONS/INV_DHMount"}

ChooseMount.factionGroundIcons = {["Alliance"] = "Interface/ICONS/INV_Mount_AllianceLionG",
								 ["Horde"] = "Interface/ICONS/INV_Mount_HordeScorpionG"}

ChooseMount.groundIcon = "Interface/ICONS/Ability_Mount_PolarBear_White"

ChooseMount.factionFlyingIcons = {["Alliance"] = "Interface/ICONS/INV_Misc_EliteGryphon",
								 ["Horde"] = "Interface/ICONS/INV_Misc_EliteWyvern"}

ChooseMount.flyingIcon = "Interface/ICONS/Ability_Mount_Drake_Blue"

ChooseMount.professionIcons = {["Alchemy"] = "Interface/ICONS/Inv_Misc_StoneDragonOrange",
							  ["Blacksmithing"] = "Interface/ICONS/Inv_Mount_FelCoreHoundMoun",
							  ["Engineering"] = "Interface/ICONS/Ability_Mount_Gyrocoptor",
							  ["Jewelcrafting"] = "Interface/ICONS/Ability_Mount_OnyxPanther",
							  ["Leatherworking"] = "Interface/ICONS/INV_WolfDraenorMountBrown",
							  ["Tailoring"] = "Interface/ICONS/Ability_Mount_FlyingCarpet"}

ChooseMount.aquaticIcon = "Interface/ICONS/ABILITY_MOUNT_SEAHORSE"

ChooseMount.qirajiIcon = "Interface/ICONS/INV_Misc_QirajiCrystal_02"

function ChooseMount:OnInitialize()
	self.frame = CreateFrame("FRAME", nil, UIParent)
	LibKeyBound = LibStub("LibKeyBound-1.0")
	local Masque = LibStub("Masque", true)
	group = Masque:Group("Choose Mount", "Buttons")
	if not chooseMountFrameX then
		chooseMountFrameX = 300
	end
	if not chooseMountFrameY then
		chooseMountFrameY = 300
	end
	self:SetupFrame(self.frame)
	LibKeyBound.RegisterCallback(self, "LIBKEYBOUND_ENABLED")
	LibKeyBound.RegisterCallback(self, "LIBKEYBOUND_DISABLED")
end

function ChooseMount:LIBKEYBOUND_ENABLED()
	print("Choose Mount Key Binding Enabled")
end

function ChooseMount:LIBKEYBOUND_DISABLED()
	print("Choose Mount Key Binding Disabled")
end

function ChooseMount:HasClassMount(class)
	return class == "PALADIN" or class == "WARLOCK" or class == "DEATH KNIGHT" or class == "DEMON HUNTER"
end

function ChooseMount:HasProfessionMount(profession)
	return profession == "Alchemy" or profession == "Blacksmithing" or profession == "Engineering" or profession == "Jewelcrafting" or profession == "Leatherworking" or profession == "Tailoring"
end

function ChooseMount.frameOnEvent(self, event)
	if event == "PLAYER_LOGIN" then
		_, ChooseMount.race = UnitRace("player")
		_, ChooseMount.class = UnitClass("player")
		if ChooseMount.class == "PALADIN" then
			if ChooseMount.race == "BloodElf" then
				ChooseMount.class = "THALASSIAN"
			elseif ChooseMount.race == "Draenei" then
				ChooseMount.class = "EXARCH"
			elseif ChooseMount.race == "Tauren" then
				ChooseMount.class = "SUNWALKER"
			end
		end
		ChooseMount.faction = UnitFactionGroup("player")
		local profession1, profession2 = GetProfessions()
		if profession1 ~= nil then
			ChooseMount.profession1 = GetProfessionInfo(profession1)
		end
		if profession2 ~= nil then
			ChooseMount.profession2 = GetProfessionInfo(profession2)
		end
		ChooseMount:SetupButtons(self)
		group:AddButton(ChooseMount.raceButton)
		if ChooseMount:HasClassMount(ChooseMount.class) then
			group:AddButton(ChooseMount.classButton)
		end
		group:AddButton(ChooseMount.factionGroundButton)
		group:AddButton(ChooseMount.groundButton)
		group:AddButton(ChooseMount.factionFlyingButton)
		group:AddButton(ChooseMount.flyingButton)
		if ChooseMount:HasProfessionMount(ChooseMount.profession1) then
			group:AddButton(ChooseMount.profession1Button)
		end
		if ChooseMount:HasProfessionMount(ChooseMount.profession2) then
			group:AddButton(ChooseMount.profession2Button)
		end
		group:AddButton(ChooseMount.aquaticButton)
		group:AddButton(ChooseMount.qirajiButton)
		self:UnregisterEvent("PLAYER_LOGIN")
	end
end

function ChooseMount.frameOnDragStart(self)
	if IsShiftKeyDown() then
		self:StartMoving()
	end
end

function ChooseMount.frameOnDragStop(self)
	self:StopMovingOrSizing()
	chooseMountFrameX = self:GetLeft()
	chooseMountFrameY = self:GetBottom()
end

function ChooseMount:SetupFrame(frame)
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(true)
	frame:SetPoint("BOTTOMLEFT", chooseMountFrameX, chooseMountFrameY)
	frame:SetWidth(170)
	frame:SetHeight(80)
	frame:SetFrameStrata("LOW")
	frame:RegisterForDrag("LeftButton")
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:SetScript("OnEvent", ChooseMount.frameOnEvent)
	frame:SetScript("OnDragStart", ChooseMount.frameOnDragStart)
	frame:SetScript("OnDragStop", ChooseMount.frameOnDragStop)
end

function ChooseMount.buttonOnClick(self)
	local mounts = {}
	if self == ChooseMount.raceButton then
		mounts = ChooseMount:SelectRace(ChooseMount.race)
	elseif self == ChooseMount.classButton then
		mounts = ChooseMount:SelectClass(ChooseMount.class)
	elseif self == ChooseMount.factionGroundButton then
		mounts = ChooseMount:SelectFactionGround(ChooseMount.faction)
	elseif self == ChooseMount.groundButton then
		mounts = ChooseMount.ground
	elseif self == ChooseMount.factionFlyingButton then
		mounts = ChooseMount:SelectFactionFlying(ChooseMount.faction)
	elseif self == ChooseMount.flyingButton then
		mounts = ChooseMount.flying
	elseif self == ChooseMount.profession1Button then
		mounts = ChooseMount:SelectProfession(ChooseMount.profession1)
	elseif self == ChooseMount.profession2Button then
		mounts = ChooseMount:SelectProfession(ChooseMount.profession2)
	elseif self == ChooseMount.aquaticButton then
		mounts = ChooseMount.aquatic
	elseif self == ChooseMount.qirajiButton then
		mounts = ChooseMount.qiraji
	end
	ChooseMount:Mount(mounts, table.getn(mounts))
end

function ChooseMount.buttonOnUpdate(self)
	if self == ChooseMount.raceButton then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.raceIcons[ChooseMount.race])
	elseif self == ChooseMount.classButton then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.classIcons[ChooseMount.class])
	elseif self == ChooseMount.factionGroundButton then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.factionGroundIcons[ChooseMount.faction])
	elseif self == ChooseMount.groundButton then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.groundIcon)
	elseif self == ChooseMount.factionFlyingButton then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.factionFlyingIcons[ChooseMount.faction])
	elseif self == ChooseMount.flyingButton then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.flyingIcon)
	elseif self == ChooseMount.profession1Button then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.professionIcons[ChooseMount.profession1])
	elseif self == ChooseMount.profession2Button then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.professionIcons[ChooseMount.profession2])
	elseif self == ChooseMount.aquaticButton then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.aquaticIcon)
	elseif self == ChooseMount.qirajiButton then
		_G[self:GetName().."Icon"]:SetTexture(ChooseMount.qirajiIcon)
	end
	_G[self:GetName().."Icon"]:Show()
end

function ChooseMount.buttonOnEnter(self)
	LibKeyBound:Set(self)
end

function ChooseMount:SelectRace(race)
	local mounts = {}
	if race == "Human" then
		mounts = self.human
	elseif race == "Orc" then
		mounts = self.orc
	elseif race == "Dwarf" then
		mounts = self.dwarf
	elseif race == "Scourge" then
		mounts = self.scourge
	elseif race == "NightElf" then
		mounts = self.nightElf
	elseif race == "Tauren" then
		mounts = self.tauren
	elseif race == "Gnome" then
		mounts = self.gnome
	elseif race == "Troll" then
		mounts = self.troll
	elseif race == "Draenei" then
		mounts = self.draenei
	elseif race == "BloodElf" then
		mounts = self.bloodElf
	elseif race == "Worgen" then
		mounts = self.worgen
	elseif race == "Goblin" then
		mounts = self.goblin
	elseif race == "Pandaren" then
		mounts = self.pandaren
	end
	return mounts
end

function ChooseMount:SelectClass(class)
	local mounts = {}
	if class == "PALADIN" then
		mounts = self.paladin
	elseif class == "THALASSIAN" then
		mounts = self.thalassian
	elseif class == "EXARCH" then
		mounts = self.exarch
	elseif class == "SUNWALKER" then
		mounts = self.sunwalker
	elseif class == "WARLOCK" then
		mounts = self.warlock
	elseif class == "DEATH KNIGHT" then
		mounts = self.deathKnight
	elseif class == "DEMON HUNTER" then
		mounts = self.demonHunter
	end
	return mounts
end

function ChooseMount:SelectFactionGround(faction)
	local mounts = {}
	if faction == "Alliance" then
		mounts = self.allianceGround
	elseif faction == "Horde" then
		mounts = self.hordeGround
	end
	return mounts
end

function ChooseMount:SelectFactionFlying(faction)
	local mounts = {}
	if faction == "Alliance" then
		mounts = self.allianceFlying
	elseif faction == "Horde" then
		mounts = self.hordeFlying
	end
	return mounts
end

function ChooseMount:SelectProfession(profession)
	local mounts = {}
	if profession == "Alchemy" then
		mounts = self.alchemy
	elseif profession == "Blacksmithing" then
		mounts = self.blacksmithing
	elseif profession == "Engineering" then
		mounts = self.engineering
	elseif profession == "Jewelcrafting" then
		mounts = self.jewelcrafting
	elseif profession == "Leatherworking" then
		mounts = self.leatherworking
	elseif profession == "Tailoring" then
		mounts = self.tailoring
	end
	return mounts
end

function ChooseMount:Mount(mounts, number)
	local rand
	local usable = false
	for i = 1, number do
		if IsUsableSpell(mounts[i]) then
			usable = true
			break
		end
	end
	if usable then
		repeat
			rand = math.random(1, number)
		until IsUsableSpell(mounts[rand])
		CastSpellByName(mounts[rand])
	elseif (mounts == self.allianceGround or mounts == self.hordeGround) and IsUsableSpell("Summon Chauffeur") then
		CastSpellByName("Summon Chauffeur")
	end
end

function ChooseMount:SetupButton(button, x, y)
	button.GetHotkey = function()
		return GetBindingKey(('CLICK %s:LeftButton'):format(self:GetName()))
	end
	button:Show()
	button:SetWidth(30)
	button:SetHeight(30)
	button:SetPoint("BOTTOMLEFT", x, y)
	button:SetFrameStrata("MEDIUM")
	button:SetAttribute("showgrid", 1);
	button:SetAttribute("action", "0")
	button:SetScript("OnClick", self.buttonOnClick)
	button:SetScript("OnEnter", self.buttonOnEnter)
	button:SetScript("OnUpdate", self.buttonOnUpdate)
end

function ChooseMount:SetupButtons(frame)
	self.raceButton = CreateFrame("CHECKBUTTON", "ChooseMountRaceButton", frame, "ActionBarButtonTemplate")
	self:SetupButton(self.raceButton, 0, 1)
	if self:HasClassMount(self.class) then
		self.classButton = CreateFrame("CHECKBUTTON", "ChooseMountClassButton", frame, "ActionBarButtonTemplate")
		self:SetupButton(self.classButton, 0, 34)
	end
	self.factionGroundButton = CreateFrame("CHECKBUTTON", "ChooseMountFactionGroundButton", frame, "ActionBarButtonTemplate")
	self:SetupButton(self.factionGroundButton, 35, 1)
	self.groundButton = CreateFrame("CHECKBUTTON", "ChooseMountGroundButton", frame, "ActionBarButtonTemplate")
	self:SetupButton(self.groundButton, 35, 34)
	self.factionFlyingButton = CreateFrame("CHECKBUTTON", "ChooseMountFactionFlyingButton", frame, "ActionBarButtonTemplate")
	self:SetupButton(self.factionFlyingButton, 70, 1)
	self.flyingButton = CreateFrame("CHECKBUTTON", "ChooseMountFlyingButton", frame, "ActionBarButtonTemplate")
	self:SetupButton(self.flyingButton, 70, 34)
	if self:HasProfessionMount(self.profession1) then
		self.profession1Button = CreateFrame("CHECKBUTTON", "ChooseMountProfession1Button", frame, "ActionBarButtonTemplate")
		self:SetupButton(self.profession1Button, 105, 0)
	end
	if self:HasProfessionMount(self.profession2) then
		self.profession2Button = CreateFrame("CHECKBUTTON", "ChooseMountProfession2Button", frame, "ActionBarButtonTemplate")
		self:SetupButton(self.profession2Button, 105, 34)
	end
	self.aquaticButton = CreateFrame("CHECKBUTTON", "ChooseMountAquaticButton", frame, "ActionBarButtonTemplate")
	self:SetupButton(self.aquaticButton, 140, 1)
	self.qirajiButton = CreateFrame("CHECKBUTTON", "ChooseMounQirajiBtutton", frame, "ActionBarButtonTemplate")
	self:SetupButton(self.qirajiButton, 140, 34)
end