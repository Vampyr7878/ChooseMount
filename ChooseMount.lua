local ChooseMount = LibStub("AceAddon-3.0"):NewAddon("ChooseMount")
local group = {}
local Masque
local LibKeyBount
SLASH_CHOOSEMOUNT1 = "/choosemount"
SLASH_CHOOSEMOUNT2 = "/cm"

function SlashCmdList.CHOOSEMOUNT(msg, editbox)
	if msg == "bind" then
		LibKeyBound:Toggle()
	end
	if msg == "show" then
		ChooseMount.frame:Show()
	end
	if msg == "hide" then
		ChooseMount.frame:Hide()
	end
end

ChooseMount.human = {470,		--Black Stallion
					 22717,		--Black War Steed
					 458,		--Brown Horse
					 6648,		--Chestnut Mare
					 16082,		--Palomino
					 472,		--Pinto
					 63232,		--Stormwind Steed
					 23229,		--Swift Brown Steed
					 65640,		--Swift Gray Steed
					 23227,		--Swift Palomino
					 23228,		--Swift White Steed
					 468,		--White Stallion
					 100332}	--Vicious War Steed

ChooseMount.orc = {22724,	--Black War Wolf
				   578,		--Black Wolf
				   6654,	--Brown Wolf
				   6653,	--Dire Wolf
				   63640,	--Orgrimmar Wolf
				   579,		--Red Wolf
				   23250,	--Swift Brown Wolf
				   65646,	--Swift Burgundy Wolf
				   23252,	--Swift Gray Wolf
				   23251,	--Swift Timber Wolf
				   580,		--Timber Wolf
				   581,		--Winter Wolf
				   100333}	--Vicious War Wolf

ChooseMount.dwarf = {6896,		--Black Ram
					 22720,		--Black War Ram
					 6899,		--Brown Ram
					 17460,		--Frost Ram
					 6777,		--Gray Ram
					 63636,		--Ironforge Ram
					 23238,		--Swift Brown Ram
					 23239,		--Swift Gray Ram
					 65643,		--Swift Violet Ram
					 23240,		--Swift White Ram
					 6898,		--White Ram
					 171834}	--Vicious War Ram

ChooseMount.scourge = {64977,	--Black Skeletal Horse
					   17463,	--Blue Skeletal Horse
					   17464,	--Brown Skeletal Horse
					   63643,	--Forsaken Warhorse
					   17465,	--Green Skeletal Warhorse
					   66846,	--Ochre Skeletal Warhorse
					   23246,	--Purple Skeletal Warhorse
					   17462,	--Red Skeletal Horse
					   22722,	--Red Skeletal Warhorse
					   146622,	--Vicious Skeletal Warhorse
					   65645}	--White Skeletal Warhorse

ChooseMount.nightElf = {16056,	--Ancient Frostsaber
					    10787,	--Black Nightsaber
					    22723,	--Black War Tiger
					    63637,	--Darnassian Nightsaber
					    10789,	--Spotted Frostsaber
					    66847,	--Striped Dawnsaber
					    8394,	--Striped Frostsaber
					    10793,	--Striped Nightsaber
					    23221,	--Swift Frostsaber
					    23219,	--Swift Mistsaber
					    65638,	--Swift Moonsaber
					    23338,	--Swift Stormsaber
					    146615}	--Vicious Kaldorei Warsaber

ChooseMount.tauren = {22718,	--Black War Kodo
					  18990,	--Brown Kodo
					  18989,	--Gray Kodo
					  23249,	--Great Brown Kodo
					  65641,	--Great Golden Kodo
					  23248,	--Great Gray Kodo
					  23247,	--Great White Kodo
					  18991,	--Green Kodo
					  18992,	--Teal Kodo
					  63641,	--Thunder Bluff Kodo
					  64657,	--White Kodo
					  185052}	--Vicious War Kodo

ChooseMount.gnome = {22719,		--Black Battlestrider
					 10969,		--Blue Mechanostrider
					 63638,		--Gnomeregan Mechanostrider
					 15780,		--Green Mechanostrider
					 17459,		--Icy Blue Mechanostrider Mod A
					 10873,		--Red Mechanostrider
					 23225,		--Swift Green Mechanostrider
					 23223,		--Swift White Mechanostrider
					 23222,		--Swift Yellow Mechanostrider
					 65642,		--Turbostrider
					 17454,		--Unpainted Mechanostrider
					 15779,		--White Mechanostrider Mod B
					 183889}	--Vicious War Mechanostrider

ChooseMount.troll = {22721,		--Black War Raptor
					 63635,		--Darkspear Raptor
					 8395,		--Emerald Raptor
					 10795,		--Ivory Raptor
					 16084,		--Mottled Red Raptor
					 23241,		--Swift Blue Raptor
					 23242,		--Swift Olive Raptor
					 23243,		--Swift Orange Raptor
					 65644,		--Swift Purple Raptor
					 10796,		--Turquoise Raptor
					 10799,		--Violet Raptor
					 171835}	--Vicious War Raptor

ChooseMount.draenei = {48027,	--Black War Elekk
					   34406,	--Brown Elekk
					   63639,	--Exodar Elekk
					   35710,	--Gray Elekk
					   35713,	--Great Blue Elekk
					   35712,	--Great Green Elekk
					   35714,	--Great Purple Elekk
					   65637,	--Great Red Elekk
					   35711,	--Purple Elekk
					   223578}	--Vicious War Elekk

ChooseMount.bloodElf = {35022,	--Black Hawkstrider
						35020,	--Blue Hawkstrider
						370620,	--Elusive Emerald Hawkstrider
						35018,	--Purple Hawkstrider
						34795,	--Red Hawkstrider
						63642,	--Silvermoon Hawkstrider
						35025,	--Swift Green Hawkstrider
						33660,	--Swift Pink Hawkstrider
						35027,	--Swift Purple Hawkstrider
						65639,	--Swift Red Hawkstrider
						35028,	--Swift Warstrider
						223363}	--Vicious Warstrider

ChooseMount.worgen = {103195,	--Mountain Horse
					  103196,	--Swift Mountain Horse
					  223341}	--Vicious Gilnean Warhorse

ChooseMount.goblin = {87090,	--Goblin Trike
					  87091,	--Goblin Turbo-Trike
					  223354}	--Vicious War Trike

ChooseMount.pandaren = {127286,		--Black Dragon Turtle
						127287,		--Blue Dragon Turtle
						127288,		--Brown Dragon Turtle
						127295,		--Great Black Dragon Turtle
						127302,		--Great Blue Dragon Turtle
						127308,		--Great Brown Dragon Turtle
						127293,		--Great Green Dragon Turtle
						127310,		--Great Purple Dragon Turtle
						120822,		--Great Red Dragon Turtle
						120395,		--Green Dragon Turtle
						127289,		--Purple Dragon Turtle
						127290,		--Red Dragon Turtle
						232523}		--Vicious War Turtle

ChooseMount.voidElf = {259202}	--Starcursed Voidstrider

ChooseMount.nightborne = {258845}	--Nightborne Manasaber

ChooseMount.lightforged = {258022}	--Lightforged Felcrusher

ChooseMount.highmountain = {258060}		--Highmountain Thunderhoof

ChooseMount.darkIron = {271646,		--Dark Iron Core Hound
						369666}		--Grimhowl

ChooseMount.maghar = {267274}	--Mag'har Direwolf

ChooseMount.kultiran = {282682}		--Kul Tiran Charger

ChooseMount.zandalari = {263707}	--Zandalari Direhorn

ChooseMount.mechagnome = {305592}	--Mechagon Mechanostrider

ChooseMount.vulpera = {306423}	--Caravan Hyena

ChooseMount.dracthyr = {385131,		--Armored Vorquin Leystrider
						394219,		--Bronze Vorquin
						394216,		--Crimson Vorquin
						384963,		--Guardian Vorquin
						385115,		--Majestic Armored Vorquin
						394220,		--Obsidian Vorquin
						394218,		--Sapphire Vorquin
						385134}		--Swift Armored Vorquin

ChooseMount.earthen = {449415}	--Slatestone Ramolith

ChooseMount.warrior = {229388}	--Battlelord's Bloodthirsty War Wyrm

ChooseMount.paladin = {66906,	--Argent Charger
					   66907,	--Argent Warhorse
					   231435,	--Highlord's Golden Charger
					   231589,	--Highlord's Valorous Charger
					   231587,	--Highlord's Vengeful Charger
					   231588,	--Highlord's Vigilant Charger
					   23214,	--Summon Charger
					   13819}	--Summon Warhorse

ChooseMount.dawnforge = {66906,		--Argent Charger
						66907,		--Argent Warhorse
						231435,		--Highlord's Golden Charger
						231589,		--Highlord's Valorous Charger
						231587,		--Highlord's Vengeful Charger
						231588,		--Highlord's Vigilant Charger
						270564}		--Summon Dawnforge Ram

ChooseMount.thalassian = {66906,	--Argent Charger
						  66907,	--Argent Warhorse
						  231435,	--Highlord's Golden Charger
						  231589,	--Highlord's Valorous Charger
						  231587,	--Highlord's Vengeful Charger
						  231588,	--Highlord's Vigilant Charger
						  34767,	--Summon Thalassian Charger
						  34769}	--Summon Thalassian Warhorse

ChooseMount.exarch = {66906,	--Argent Charger
					  66907,	--Argent Warhorse
					  231435,	--Highlord's Golden Charger
					  231589,	--Highlord's Valorous Charger
					  231587,	--Highlord's Vengeful Charger
					  231588,	--Highlord's Vigilant Charger
					  73629,	--Summon Exarch's Elekk
					  73630}	--Summon Great Exarch's Elekk

ChooseMount.sunwalker = {66906,		--Argent Charger
						 66907,		--Argent Warhorse
						 231435,	--Highlord's Golden Charger
						 231589,	--Highlord's Valorous Charger
						 231587,	--Highlord's Vengeful Charger
						 231588,	--Highlord's Vigilant Charger
						 69826,		--Summon Great Sunwalker Kodo
						 69820}		--Summon Sunwalker Kodo
						
ChooseMount.lightsworn = {66906,	--Argent Charger
						  66907,	--Argent Warhorse
						  231435,	--Highlord's Golden Charger
						  231589,	--Highlord's Valorous Charger
						  231587,	--Highlord's Vengeful Charger
						  231588,	--Highlord's Vigilant Charger
						  363613}	--Lightforged Ruinstrider

ChooseMount.darkforge = {66906,		--Argent Charger
						 66907,		--Argent Warhorse
						 231435,	--Highlord's Golden Charger
						 231589,	--Highlord's Valorous Charger
						 231587,	--Highlord's Vengeful Charger
						 231588,	--Highlord's Vigilant Charger
						 270562}	--Summon Darkforge Ram

ChooseMount.prelate = {66906,	--Argent Charger
					   66907,	--Argent Warhorse
					   290608,	--Crusader's Direhorn
					   231435,	--Highlord's Golden Charger
					   231589,	--Highlord's Valorous Charger
					   231587,	--Highlord's Vengeful Charger
					   231588}	--Highlord's Vigilant Charger

ChooseMount.ordinant = {66906,	--Argent Charger
					   66907,	--Argent Warhorse
					   453785,	--Earthen Ordinant's Ramolith
					   231435,	--Highlord's Golden Charger
					   231589,	--Highlord's Valorous Charger
					   231587,	--Highlord's Vengeful Charger
					   231588}	--Highlord's Vigilant Charger

ChooseMount.hunter = {229439,	--Huntmaster's Dire Wolfhawk
					  229438,	--Huntmaster's Fierce Wolfhawk
					  229386}	--Huntmaster's Loyal Wolfhawk

ChooseMount.rogue = {231524,	--Shadowblade's Baneful Omen
					 231525,	--Shadowblade's Crimson Omen
					 231523,	--Shadowblade's Lethal Omen
					 231434}	--Shadowblade's Murderous Omen

ChooseMount.priest = {229377}	--High Priest's Lightsworn Seeker

ChooseMount.shaman = {231442}	--Farseer's Raging Tempest

ChooseMount.mage = {229376}		--Archmage's Prismatic Disc

ChooseMount.warlock = {23161,	--Dreadsteed
					   5784,	--Felsteed
					   238454,	--Netherlord's Accursed Wrathsteed
					   238452,	--Netherlord's Brimstone Wrathsteed
					   232412}	--Netherlord's Chaotic Wrathsteed

ChooseMount.druid = {189999}	--Grove Warden

ChooseMount.monk = {229385}		--Ban-Lu, Grandmaster's Companion

ChooseMount.deathKnight = {48778,	--Acherus Deathcharger
						   73313,	--Crimson Deathcharger
						   229387,	--Deathlord's Vilebrood Vanquisher
						   54726}	--Winged Steed of the Ebon Blade
						  
ChooseMount.demonHunter = {200175,	--Felsaber
						   229417}	--Slayer's Felbroken Shrieker

ChooseMount.allianceGround = {259213,	--Admiralty Stallion
							  60114,	--Armored Brown Bear
							  171626,	--Armored Irontusk
							  288736,	--Azureshell Krolusk
							  22719,	--Black Battlestrider
							  60118,	--Black War Bear
							  48027,	--Black War Elekk
							  59785,	--Black War Mammoth
							  22720,	--Black War Ram
							  22717,	--Black War Steed
							  22723,	--Black War Tiger
							  171846,	--Champion's Treadblade
							  179245,	--Chauffeured Mekgineer's Chopper
							  68187,	--Crusader's White Warhorse
							  260172,	--Dapple Gray
							  63637,	--Darnassian Nightsaber
							  171625,	--Dusty Rockhide
							  63639,	--Exodar Elekk
							  63638,	--Gnomeregan Mechanostrider
							  90621,	--Golden King
							  140249,	--Golden Primal Direhorn
							  61465,	--Grand Black War Mammoth
							  59802,	--Grand Ice Mammoth
							  65637,	--Great Red Elekk
							  279456,	--Highland Mustang
							  59797,	--Ice Mammoth
							  295386,	--Ironclad Frostclaw
							  63636,	--Ironforge Ram
							  60424,	--Mekgineer's Chopper
							  171833,	--Pale Thorngrazer
							  193695,	--Prestigious War Steed
							  288740,	--Priestess' Moonsaber
							  66090,	--Quel'dorei Steed
							  255695,	--Seabraid Stallion
							  260173,	--Smoky Charger
							  92231,	--Spectral Steed
							  23510,	--Stormpike Battle Charger
							  308250,	--Stormpike Battle Ram
							  63232,	--Stormwind Steed
							  68057,	--Swift Alliance Steed
							  43900,	--Swift Brewfest Ram
							  65640,	--Swift Gray Steed
							  65638,	--Swift Moonsaber
							  65643,	--Swift Violet Ram
							  61424,	--Traveler's Tundra Mammoth
							  65642,	--Turbostrider
							  281887,	--Vicious Black Warsaber
							  223341,	--Vicious Gilnean Warhorse
							  424534,	--Vicious Moonbeast
							  394737,	--Vicious Sabertooth
							  261433,	--Vicious War Basilisk
							  229486,	--Vicious War Bear
							  347256,	--Vicious War Croaker
							  223578,	--Vicious War Elekk
							  242896,	--Vicious War Fox
							  348770,	--Vicious War Gorm
							  229512,	--Vicious War Lion
							  183889,	--Vicious War Mechanostrider
							  171834,	--Vicious War Ram
							  272481,	--Vicious War Riverbeast
							  409034,	--Vicious War Snail
							  327407,	--Vicious War Spider
							  100332,	--Vicious War Steed
							  232523,	--Vicious War Turtle
							  349824,	--Vicious Warstalker
							  146615,	--Vicious Kaldorei Warsaber
							  281888,	--Vicious White Warsaber
							  17229,	--Winterspring Frostsaber
							  59791}	--Wooly Mammoth

ChooseMount.hordeGround = {237287,	--Alabaster Hyena
						   60114,	--Armored Brown Bear
						   60118,	--Black War Bear
						   22718,	--Black War Kodo
						   59785,	--Black War Mammoth
						   22721,	--Black War Raptor
						   22724,	--Black War Wolf
						   295387,	--Bloodflank Charger
						   171832,	--Breezestrider Stallion
						   279457,	--Broken Highland Mustang
						   179244,	--Chauffeured Mechano-Hog
						   140250,	--Crimson Primal Direhorn
						   68188,	--Crusader's Black Warhorse
						   63635,	--Darkspear Raptor
						   63643,	--Forsaken Warhorse
						   23509,	--Frostwolf Howler
						   306421,	--Frostwolf Snarler
						   255696,	--Gilded Ravasaur
						   61465,	--Grand Black War Mammoth
						   59802,	--Grand Ice Mammoth
						   49379,	--Great Brewfest Kodo
						   65641,	--Great Golden Kodo
						   59797,	--Ice Mammoth
						   171839,	--Ironside Warwolf
						   93644,	--Kor'kron Annihilator
						   55531,	--Mechano-Hog
						   63640,	--Orgrimmar Wolf
						   204166,	--Prestigious War Wolf
						   22722,	--Red Skeletal Warhorse
						   288735,	--Rubyshell Krolusk
						   63642,	--Silvermoon Hawkstrider
						   58261,	--Spectral Wolf
						   66091,	--Sunreaver Hawkstrider
						   65646,	--Swift Burgundy Wolf
						   171842,	--Swift Frostwolf
						   68056,	--Swift Horde Wolf
						   65644,	--Swift Purple Raptor
						   65639,	--Swift Red Hawkstrider
						   35028,	--Swift Warstrider
						   63641,	--Thunder Bluff Kodo
						   61424,	--Traveler's Tundra Mammoth
						   64659,	--Venomhide Ravasaur
						   281890,	--Vicious Black Bonesteed
						   424535,	--Vicious Moonbeast
						   394738,	--Vicious Sabertooth
						   146622,	--Vicious Skeletal Warhorse
						   261433,	--Vicious War Basilisk
						   229486,	--Vicious War Bear
						   270560,	--Vicious War Clefthoof
						   347255,	--Vicious War Croaker
						   242896,	--Vicious War Fox
						   185052,	--Vicious War Kodo
						   348769,	--Vicious War Gorm
						   171835,	--Vicious War Raptor
						   230988,	--Vicious War Scorpion
						   409032,	--Vicious War Snail
						   327407,	--Vicious War Spider
						   223354,	--Vicious War Trike
						   232523,	--Vicious War Turtle
						   100333,	--Vicious War Wolf
						   349823,	--Vicious Warstalker
						   223363,	--Vicious Warstrider
						   281889,	--Vicious White Bonesteed
						   171845,	--Warlord's Deathwheel
						   65645,	--White Skeletal Warhorse
						   414316,	--White War Wolf
						   59791}	--Wooly Mammoth

ChooseMount.ground = {253662,	--Acid Belcher
					  359232,	--Adorned Vombata
					  98204,	--Amani Battle Bear
					  452645,	--Amani Hunting Bear
					  43688,	--Amani War Bear
					  138424,	--Amber Primordial Direhorn
					  123886,	--Amber Scorpion
					  354356,	--Amber Shardhide
					  253004,	--Amethyst Ruinstrider
					  374090,	--Ancient Salamanther
					  359276,	--Anointed Protostag
					  339632,	--Arboreal Gulper
					  227956,	--Arcadian War Turtle
					  405623,	--Armadillo Roller
					  332466,	--Armored Bonehoof Tauralus
					  332467,	--Armored Chosen Tauralus
					  171629,	--Armored Frostboar
					  171838,	--Armored Frostwolf
					  332464,	--Armored Plaguerot Tauralus
					  171630,	--Armored Razorback
					  96491,	--Armored Razzashi Raptor
					  367875,	--Armored Siege Kodo
					  332462,	--Armored War-Bred Tauralus
					  148428,	--Ashhide Mushan Beast
					  254259,	--Avenging Felcrusher
					  127174,	--Azure Riding Crane
					  118089,	--Azure Water Strider
					  333023,	--Battle Gargon Silessa
					  312754,	--Battle Gargon Vrednic
					  344228,	--Battle-Bound Warhound
					  294568,	--Beastlord's Irontusk
					  294569,	--Beastlord's Warwolf
					  253005,	--Beryl Ruinstrider
					  347810,	--Beryl Shardhide
					  51412,	--Big Battle Bear
					  58983,	--Big Blizzard Bear
					  408313,	--Big Slick in the City
					  253660,	--Biletooth Gnasher
					  138642,	--Black Primal Raptor
					  25863,	--Black Qiraji Battle Tank
					  130138,	--Black Riding Goat
					  127209,	--Black Riding Yak
					  288438,	--Blackpaw
					  466001,	--Blackwater Bonecrusher
					  171627,	--Blacksteel Battleboar
					  254260,	--Bleakhoof Ruinstrider
					  254258,	--Blessed Felcrusher
					  332478,	--Blisterback Bloodtusk
					  127220,	--Blonde Riding Yak
					  213115,	--Bloodfang Widow
					  250735,	--Bloodgorged Crawg
					  171620,	--Bloodhoof Bull
					  423871,	--Blossoming Dreamstag
					  288587,	--Blue Marsh Hopper
					  25953,	--Blue Qiraji Battle Tank
					  129934,	--Blue Shado-Pan Riding Tiger
					  332482,	--Bonecleaver's Skullboar
					  332457,	--Bonehoof Tauralus
					  138640,	--Bone-White Primal Raptor
					  230844,	--Brawler's Burly Basilisk
					  142641,	--Brawler's Burly Mushan Beast
					  43899,	--Brewfest Ram
					  213164,	--Brilliant Direbeak
					  190690,	--Bristling Hellboar
					  359376,	--Bronze Helicid
					  88748,	--Brown Riding Camel
					  130086,	--Brown Riding Goat
					  376875,	--Brown Scouting Ottuk
					  376910,	--Brown War Ottuk
					  289639,	--Bruce
					  369480,	--Cerulean Marsh Hopper
					  253007,	--Cerulean Ruinstrider
					  171848,	--Challenger's War Yeti
					  297560,	--Child of Torcali
					  332460,	--Chosen Tauralus
					  432610,	--Clayscale Hornstrider
					  189364,	--Coalfist Gronnling
					  435149,	--Cobalt Juggernaut
					  138423,	--Cobalt Primordial Direhorn
					  39315,	--Cobalt Riding Talbuk
					  34896,	--Cobalt War Talbuk
					  171840,	--Coldflame Infernal
					  363136,	--Colossal Ebonclaw Mawrat
					  368105,	--Colossal Plaguespew Mawrat
					  363297,	--Colossal Soulshredder Mawrat
					  363178,	--Colossal Umbrahide Mawrat
					  368128,	--Colossal Wraithbound Mawrat
					  279454,	--Conqueror's Scythemaw
					  170347,	--Core Hound
					  344578,	--Corridor Creeper
					  341639,	--Court Sinrunner
					  279467,	--Craghorn Chasm-Leaper
					  465999,	--Crimson Armored Growler
					  427435,	--Crimson Glimmerfur
					  449269,	--Crimson Mudnose
					  354357,	--Crimson Shardhide
					  253661,	--Crimson Slavermaw
					  127271,	--Crimson Water Strider
					  366789,	--Crusty Crawler
					  332932,	--Crypt Gargon
					  359230,	--Curious Crystalsniffer
					  39316,	--Dark Riding Talbuk
					  34790,	--Dark War Talbuk
					  359231,	--Darkened Vombata
					  466000,	--Darkfuse Chompactor
					  354358,	--Darkmaul
					  103081,	--Darkmoon Dancing Bear
					  312763,	--Darkwarren Hardshell
					  428013,	--Deathbringer's Shadowcycle
					  359278,	--Deathrunner
					  190977,	--Deathtusk Felboar
					  300147,	--Deepcoral Snapdragon
					  427222,	--Delugen
					  332949,	--Desire's Battle Gargon
					  171634,	--Domesticated Razorback
					  262022,	--Dread Gladiator's Proto-Drake
					  312759,	--Dreamlight Runestag
					  237286,	--Dune Scavenger
					  449416,	--Ebonhide Ramolith
					  316493,	--Elusive Quickhoof
					  1218069,	--Emerald Snail
					  312761,	--Enchanted Dreamlight Runestag
					  332246,	--Enchanted Shadeleaf Runestag
					  332247,	--Enchanted Wakener's Runestag
					  332248,	--Enchanted Winterborn Runestag
					  334406,	--Eternal Phalynx of Courage
					  334409,	--Eternal Phalynx of Humility
					  334408,	--Eternal Phalynx of Loyalty
					  334403,	--Eternal Phalynx of Purity
					  424479,	--Evening Sun Dreamsaber
					  374204,	--Explorer's Stonehide Packbeast
					  354353,	--Fallen Charger
					  223018,	--Fathom Dweller
					  435150,	--Fel Iron Juggernaut
					  411565,	--Felcrystal Scorpion
					  213134,	--Felblaze Infernal
					  447957,	--Ferocious Jawcrawler
					  36702,	--Fiery Warhorse
					  101542,	--Flametalon of Alysrazor
					  213349,	--Flarecore Infernal
					  466011,	--Flarendo the Furious
					  84751,	--Fossilized Raptor
					  280729,	--Frenzied Feltalon
					  288499,	--Frightened Kodo
					  171632,	--Frostplains Battleboar
					  213350,	--Frostshard Infernal
					  171851,	--Garn Nighthowl
					  171836,	--Garn Steelmaw
					  359401,	--Genesis Crawler
					  171635,	--Giant Coldsnout
					  463025,	--Gigantic Grrloc
					  435123,	--Gilded Riding Crane
					  430225,	--Gilnean Prowler
					  419567,	--Ginormous Grrloc
					  289555,	--Glacial Tidestorm
					  254069,	--Glorious Felcrusher
					  127176,	--Golden Riding Crane
					  260175,	--Goldenmane
					  359413,	--Goldplate Bufonid
					  374157,	--Gooey Snailemental
					  332480,	--Gorespine
					  171436,	--Gorestrider Gronnling
					  122708,	--Grand Expedition Yak
					  333021,	--Gravestone Battle Gargon
					  171636,	--Great Greytusk
					  259740,	--Green Marsh Hopper
					  138643,	--Green Primal Raptor
					  26056,	--Green Qiraji Battle Tank
					  129932,	--Green Shado-Pan Riding Tiger
					  88750,	--Grey Riding Camel
					  127216,	--Grey Riding Yak
					  457485,	--Grizzly Hills Packmaster
					  193007,	--Grove Defiler
					  435115,	--Guardian Quilen
					  352309,	--Hand of Bahmethra
					  339957,	--Hand of Hrestimorak
					  354354,	--Hand of Nilganihmaht
					  459193,	--Hand of Reshkigaal
					  354355,	--Hand of Salaranga
					  387231,	--Hailstorm Armoredon
					  359229,	--Heartlight Vombata
					  171827,	--Hellfire Infernal
					  242874,	--Highmountain Elderhorn
					  312753,	--Hopecrusher Gargon
					  189998,	--Illidari Felstalker
					  359403,	--Ineffable Skitterer
					  186305,	--Infernal Direwolf
					  406637,	--Inferno Armoredon
					  332923,	--Inquisition Gargon
					  142910,	--Ironbound Wraithcharger
					  171621,	--Ironhoof Destroyer
					  359409,	--Iskaara Trader's Ottuk
					  230401,	--Ivory Hawkstrider
					  376879,	--Ivory Trader's Ottuk
					  138426,	--Jade Primordial Direhorn
					  473472,	--Jani's Trashpile
					  366791,	--Jigglesworth Sr.
					  127178,	--Jungle Riding Crane
					  297157,	--Junkheap Drifter
					  123182,	--Kafa Yak
					  288505,	--Kaldorei Nightsaber
					  457654,	--Keg Leg's Radiant Crocolisk
					  148417,	--Kor'kron Juggernaut
					  148396,	--Kor'kron War Wolf
					  279608,	--Lil' Donkey
					  435133,	--Little Red Riding Goat
					  1217341,	--Lively Darkmoon Charger
					  374247,	--Lizi, Thunderspine Tramper
					  171850,	--Llothien Prowler
					  333027,	--Loyal Gorger
					  373859,	--Loyal Magmammoth
					  423891,	--Lunar Dreamstag
					  332484,	--Lurid Bloodtusk
					  435124,	--Luxurious Riding Crane
					  253058,	--Maddened Chaosrunner
					  65917,	--Magic Rooster
					  350219,	--Magmashell
					  427546,	--Mammyth
					  435118,	--Marble Quilen
					  339956,	--Mawsworn Charger
					  312762,	--Mawsworn Soulhunter
					  281554,	--Meat Wagon
					  296788,	--Mechacycle Model W
					  299158,	--Mechagon Peacekeeper
					  229499,	--Midnight
					  1217340,	--Midnight Darkmoon Charger
					  264058,	--Mighty Caravan Brutosaur
					  191314,	--Minion of Grumpus
					  127213,	--Modest Expedition Yak
					  298367,	--Mollie
					  424482,	--Morning Flourish Dreamsaber
					  171825,	--Mosshide Riverwallow
					  374194,	--Mossy Mammoth
					  171622,	--Mottled Meadowstomper
					  171826,	--Mudback Riverbeast
					  349935,	--Noble Bruffalon
					  349935,	--Noble Elderhorn
					  427041,	--Ochre Dreamtalon
					  239049,	--Obsidian Krolusk
					  449258,	--Ol' Mole Rufus
					  376873,	--Otto
					  334365,	--Pale Acidmaw
					  342671,	--Pale Regal Cervid
					  435128,	--Pale Riding Crane
					  279474,	--Palehide Direhorn
					  435161,	--Palehide Mushan Beast
					  363701,	--Patient Bufonid
					  418078,	--Pattie
					  414328,	--Perfected Juggernaut
					  334391,	--Phalynx of Courage
					  334386,	--Phalynx of Humility
					  334382,	--Phalynx of Loyalty
					  334398,	--Phalynx of Purity
					  332456,	--Plaguerot Tauralus
					  374196,	--Plainswalker Bearer
					  457650,	--Plunderlord's Golden Crocolisk
					  457656,	--Plunderlord's Midnight Crocolisk
					  457659,	--Plunderlord's Weathered Crocolisk
					  213158,	--Predatory Bloodgazer
					  186828,	--Primal Gladiator's Felblood Gronnling
					  474086,	--Prismatic Snapdragon
					  363703,	--Prototype Leaper
					  435153,	--Purple Shado-Pan Riding Tiger
					  374275,	--Raging Magmammoth
					  356501,	--Rampaging Mauler
					  215558,	--Ratstallion
					  41252,	--Raven Lord
					  138641,	--Red Primal Raptor
					  26054,	--Red Qiraji Battle Tank
					  129935,	--Red Shado-Pan Riding Tiger
					  127177,	--Regal Riding Crane
					  423877,	--Rekindled Dreamstag
					  316722,	--Ren's Stalwart Hound
					  374278,	--Renewed Magmammoth
					  374263,	--Restless Hornstrider
					  334482,	--Restoration Deathwalker
					  288722,	--Risen Mare
					  17481,	--Rivendare's Deathcharger
					  435160,	--Riverwalker Mushan
					  171628,	--Rocktusk Battleboar
					  435127,	--Rose Riding Crane
					  294038,	--Royal Snapdragon
					  363706,	--Russet Bufonid
					  253006,	--Russet Ruinstrider
					  291492,	--Rusty Mechanocrawler
					  242305,	--Sable Ruinstrider
					  427724,	--Salatrancer
					  354351,	--Sanctum Gloomcharger
					  288506,	--Sandy Nightsaber
					  171824,	--Sapphire Riverbeast
					  473861,	--Savage Alabaster Battle Turtle
					  433281,	--Savage Blue Battle Turtle
					  367826,	--Savage Green Battle Turtle
					  97581,	--Savage Raptor
					  359378,	--Scarlet Helicid
					  374162,	--Scrappy Worldsnail
					  374138,	--Scorchpath
					  299159,	--Scrapforged Mechaspider
					  374138,	--Seething Slug
					  346719,	--Serenade
					  332243,	--Shadeleaf Runestag
					  424474,	--Shadow Dusk Dreamsaber
					  171624,	--Shadowhide Pearltusk
					  171829,	--Shadowmane Charger
					  449418,	--Shale Ramolith
					  374155,	--Shellack
					  259395,	--Shu-Zen, the Divine Sentinel
					  435126,	--Silver Riding Crane
					  39317,	--Silver Riding Talbuk
					  34898,	--Silver War Talbuk
					  332927,	--Sinfall Gargon
					  339588,	--Sinrunner Blanchy
					  279611,	--Skullripper
					  352926,	--Skyskin Hornstrider
					  138425,	--Slate Primordial Direhorn
					  449415,	--Slatestone Ramolith
					  346141,	--Slime Serpent
					  171843,	--Smoky Direwolf
					  294039,	--Snapback Scuttler
					  300146,	--Snapdragon Kelpstalker
					  213163,	--Snowfeather Hunter
					  427043,	--Snowfluff Dreamtalon
					  1217343,	--Snowy Darkmoon Charger
					  435131,	--Snowy Riding Goat
					  130965,	--Son of Galleon
					  354352,	--Soulbound Gloomcharger
					  136471,	--Spawn of Horridon
					  42776,	--Spectral Tiger
					  334364,	--Spinemaw Gladechewer
					  316802,	--Springfur Alpaca
					  426955,	--Springtide Dreamtalon
					  427226,	--Stargrazer
					  288712,	--Stonehide Elderhorn
					  374098,	--Stormhide Salamanther
					  371176,	--Subterranean Magmammoth
					  414327,	--Sulfur Hound
					  359277,	--Sundered Zerethsteed
					  171849,	--Sunhide Gronnling
					  423873,	--Suntouched Dreamstag
					  279569,	--Swift Albino Raptor
					  171830,	--Swift Breezestrider
					  102346,	--Swift Forest Strider
					  102350,	--Swift Lovebird
					  24242,	--Swift Razzashi Raptor
					  101573,	--Swift Shorestrider
					  42777,	--Swift Spectral Tiger
					  102349,	--Swift Springstrider
					  46628,	--Swift White Hawkstrider
					  48954,	--Swift Zhevra
					  96499,	--Swift Zulian Panther
					  24252,	--Swift Zulian Tiger
					  427224,	--Talont
					  347536,	--Tamed Mauler
					  88749,	--Tan Riding Camel
					  39318,	--Tan Riding Talbuk
					  34899,	--Tan War Talbuk
					  359402,	--Tarachnid Creeper
					  260174,	--Terrified Pack Mule
					  266058,	--Tomb Stalker
					  171617,	--Trained Icehoof
					  171623,	--Trained Meadowstomper
					  171638,	--Trained Riverwallow
					  171637,	--Trained Rocktusk
					  171831,	--Trained Silverpelt
					  171841,	--Trained Snarler
					  435125,	--Tropical Riding Crane
					  171619,	--Tundra Icehoof
					  279466,	--Twilight Avenger
					  92155,	--Ultramarine Qiraji Battle Tank
					  288503,	--Umber Nightsaber
					  253008,	--Umber Ruinstrider
					  340503,	--Umbral Scythehorn
					  273541,	--Underrot Crawg
					  352742,	--Undying Darkhound
					  359377,	--Unsuccessful Prototype Fleetpod
					  413922,	--Valiance
					  422486,	--Verdant Armoredon
					  448978,	--Vermillion Imperial Lynx
					  243652,	--Vile Fiend
					  466002,	--Violet Armored Growler
					  1217342,	--Violet Darkmoon Charger
					  213165,	--Viridian Sharptalon
					  179478,	--Voidtalon of the Dark Star
					  344659,	--Voracious Gorger
					  332244,	--Wakener's Runestag
					  348162,	--Wandering Ancient
					  332455,	--War-Bred Tauralus
					  189044,	--Warmongering Gladiator's Felblood Gronnling
					  171837,	--Warsong Direfang
					  341766,	--Warstitched Darkhound
					  359407,	--Wastewarped Deathwalker
					  54753,	--White Polar Bear
					  102488,	--White Riding Camel
					  130137,	--White Riding Goat
					  39319,	--White Riding Talbuk
					  34897,	--White War Talbuk
					  449264,	--Wick
					  189043,	--Wild Gladiator's Felblood Gronnling
					  334366,	--Wild Glimmerfur Prowler
					  171633,	--Wild Goretusk
					  352441,	--Wild Hunt Legsplitter
					  424476,	--Winter Night Dreamsaber
					  332245,	--Winterborn Runestag
					  171616,	--Witherhide Cliffstomper
					  74918,	--Wooly White Rhino
					  294143,	--X-995 Mechanocat
					  316723,	--Xinlao
					  288589,	--Yellow Marsh Hopper
					  26055,	--Yellow Qiraji Battle Tank
					  376880,	--Yellow Scouting Ottuk
					  376913,	--Yellow War Ottuk
					  385266}	--Zenet Hatchling

ChooseMount.allianceFlying = {302361,	--Alabaster Stormtalon
							  292407,	--Ankoan Waveray
							  142478,	--Armored Blue Dragonhawk
							  61229,	--Armored Snowy Gryphon
							  61996,	--Blue Dragonhawk
							  275859,	--Dusky Waycrest Gryphon
							  32239,	--Ebon Gryphon
							  32235,	--Golden Gryphon
							  135416,	--Grand Armored Gryphon
							  136163,	--Grand Gryphon
							  413827,	--Harbor Gryphon
							  259741,	--Honeyback Harvester
							  118737,	--Pandaren Kite
							  275868,	--Proudmoore Sea Scout
							  414323,	--Ravenous Black Gryphon
							  441324,	--Remembered Golden Gryphon
							  66087,	--Silver Covenant Hippogryph
							  32240,	--Snowy Gryphon
							  107516,	--Spectral Gryphon
							  275866,	--Stormsong Coastwatcher
							  245723,	--Stormwind Skychaser
							  32242,	--Swift Blue Gryphon
							  32290,	--Swift Green Gryphon
							  32292,	--Swift Purple Gryphon
							  32289,	--Swift Red Gryphon
							  274610,	--Teldrassil Hippogryph
							  466146,	--Vicious Electro Eel
							  449325}	--Vicious Skyflayer

ChooseMount.hordeFlying = {302362,	--Alabaster Thunderwing
						   61230,	--Armored Blue Wind Rider
						   142266,	--Armored Red Dragonhawk
						   288714,	--Bloodthirsty Dreadwing
						   32244,	--Blue Wind Rider
						   275838,	--Captured Swampstalker
						   275837,	--Cobalt Pterrordax
						   275841,	--Expedition Bloodswarmer
						   135418,	--Grand Armored Wyvern
						   136164,	--Grand Wyvern
						   32245,	--Green Wind Rider
						   245725,	--Orgrimmar Interceptor
						   118737,	--Pandaren Kite
						   61997,	--Red Dragonhawk
						   441325,	--Remembered Wind Rider
						   413825,	--Scarlet Pterrordax
						   244712,	--Spectral Pterrorwing
						   107517,	--Spectral Wind Rider
						   66088,	--Sunreaver Dragonhawk
						   32295,	--Swift Green Wind Rider
						   32297,	--Swift Purple Wind Rider
						   32246,	--Swift Red Wind Rider
						   32296,	--Swift Yellow Wind Rider
						   32243,	--Tawny Wind Rider
						   272472,	--Undercity Plaguebat
						   291538,	--Unshackled Waveray
						   466145,	--Vicious Electro Eel
						   447405,	--Vicious Skyflayer
						   275840}	--Voldunai Dunescraper

ChooseMount.flying = {232519,	--Abyss Worm
					  290718,	--Aerial Unit R-21/X
					  60025,	--Albino Drake
					  447213,	--Alunira
					  369476,	--Amalgam of Rage
					  96503,	--Amani Dragonhawk
					  342666,	--Amber Ardenmoth
					  441794,	--Amber Pterrordax
					  424484,	--Anu'relos, Flame's Guidance
					  447185,	--Aquamarine Swarmite
					  230987,	--Arcanist's Manasaber
					  353856,	--Ardenweald Wilderling
					  63844,	--Argent Hippogryph
					  139595,	--Armored Bloodwing
					  368126,	--Armored Golden Pterrordax
					  136400,	--Armored Skyscreamer
					  451491,	--Ascendant Skyrazor
					  353880,	--Ascendant's Aquilon
					  342335,	--Ascended Skymane
					  132117,	--Ashen Pandaren Phoenix
					  288495,	--Ashenvale Chimaera
					  40192,	--Ashes of Al'ar
					  366962,	--Ash'adar, Harbinger of Dawn
					  466023,	--Asset Advocator
					  127170,	--Astral Cloud Serpent
					  446022,	--Astral Emperor's Serpent
					  446017,	--August Phoenix
					  353857,	--Autumnal Wilderling
					  292419,	--Azshari Bloatray
					  123992,	--Azure Cloud Serpent
					  59567,	--Azure Drake
					  41514,	--Azure Netherwing Drake
					  374034,	--Azure Skitterfly
					  420097,	--Azure Worldchiller
					  343550,	--Battle-Hardened Aquilon
					  353885,	--Battlefield Swarmer
					  71342,	--Big Love Rocket
					  466024,	--Bilgewater Bombardier
					  59650,	--Black Drake
					  59976,	--Black Proto-Drake
					  305182,	--Black Serpent of N'Zoth
					  466019,	--Blackwater Shredder Deluxe Mk 2
					  107842,	--Blazing Drake
					  74854,	--Blazing Hippogryph
					  72808,	--Bloodbathed Frostbrood Vanquisher
					  288720,	--Bloodgorged Hunter
					  435145,	--Bloody Skyscreamer
					  59568,	--Blue Drake
					  59996,	--Blue Proto-Drake
					  39803,	--Blue Riding Nether Ray
					  336041,	--Bonesewn Fleshroc
					  408653,	--Boulder Hauler
					  432562,	--Brilliant Sunburst Peafowl
					  59569,	--Bronze Drake
					  473188,	--Bronze Goblin Waveshredder
					  359364,	--Bronzewing Vespoid
					  1214946,	--Broodling of Sinestra
					  58615,	--Brutal Nether Drake
					  344574,	--Bulbous Necroray
					  359366,	--Buzz
					  336038,	--Callow Flayedwing
					  359545,	--Carcinized Zerethsteed
					  353263,	--Cartel Master's Gearglider
					  124550,	--Cataclysmic Gladiator's Twilight Drake
					  408651,	--Cataloged Shalewing
					  75614,	--Celestial Steed
					  43927,	--Cenarion War Hippogryph
					  443660,	--Charming Courier
					  312776,	--Chittering Animite
					  171847,	--Cindermane Charger
					  242881,	--Cloudwing Hippogryph
					  312751,	--Clutch of Ha-Li
					  139448,	--Clutch of Ji-Kun
					  41515,	--Cobalt Netherwing Drake
					  408647,	--Cobalt Shalewing
					  463133,	--Coldflame Tempest
					  327405,	--Colossal Slaughterclaw
					  1214974,	--Copper-Maned Quilen
					  431992,	--Compass Rose
					  367620,	--Coral-Stalker Waveray
					  183117,	--Corrupted Dreadwing
					  97560,	--Corrupted Fire Hawk
					  262027,	--Corrupted Gladiator's Proto-Drake
					  102514,	--Corrupted Hippogryph
					  365559,	--Cosmic Gladiator's Soul Eater
					  127156,	--Crimson Cloud Serpent
					  377071,	--Crimson Gladiator's Drake
					  129552,	--Crimson Pandaren Phoenix
					  1217235,	--Crimson Shreddertank
					  448186,	--Crowd Pummeler 2-30
					  227989,	--Cruel Gladiator's Storm Dragon
					  359381,	--Cryptic Aurelid
					  447176,	--Cyan Glowmite
					  88990,	--Dark Phoenix
					  466018,	--Darkfuse Demolisher
					  466027,	--Darkfuse Spy-Eye
					  247448,	--Darkmoon Dirigible
					  235764,	--Darkspore Mana Ray
					  435103,	--Dashing Windsteed
					  336064,	--Dauntless Duskrunner
					  435108,	--Daystorm Windsteed
					  289101,	--Dazar'alor Windreaver
					  64927,	--Deadly Gladiator's Frost Wyrm
					  318052,	--Deathbringer's Flayedwing
					  342680,	--Deepstar Aurelid
					  359380,	--Depthstalker
					  342668,	--Desertwing Hunter
					  458335,	--Diamond Mechsuit
					  395644,	--Divine Kiss of Ohn'ahra
					  88335,	--Drake of the East Wind
					  315847,	--Drake of the Four Winds
					  88742,	--Drake of the North Wind
					  88744,	--Drake of the South Wind
					  88741,	--Drake of the West Wind
					  155741,	--Dread Raven
					  332256,	--Duskflutter Ardenmoth
					  354361,	--Dusklight Razorwing
					  385262,	--Duskwing Ohuna
					  194464,	--Eclipse Dragonhawk
					  353875,	--Elysian Aquilon
					  175700,	--Emerald Drake
					  149801,	--Emerald Hippogryph
					  132118,	--Emerald Pandaren Phoenix
					  142878,	--Enchanted Fey Dragon
					  468353,	--Enchanted Spellweave Carpet
					  332905,	--Endmire Flyer
					  1221694,	--Enterprising Shreddertank
					  370346,	--Eternal Gladiator's Soul Eater
					  419345,	--Eve's Ghastly Rider
					  110039,	--Experiment 12-B
					  227988,	--Fearless Gladiator's Storm Dragon
					  435109,	--Feathered Windsurfer
					  113120,	--Feldrake
					  97501,	--Felfire Hawk
					  253108,	--Felglow Mana Ray
					  182912,	--Felsteel Annihilator
					  414326,	--Felstorm Dragon
					  227991,	--Ferocious Gladiator's Storm Dragon
					  354359,	--Fierce Razorwing
					  278966,	--Fiery Hearthsteed
					  97359,	--Flameward Hippogryph
					  435107,	--Forest Windsteed
					  353877,	--Foresworn Aquilon
					  449466,	--Forged Gladiator's Fel Bat
					  359367,	--Forged Spiteflyer
					  452643,	--Frayfeather Hippogryph
					  386452,	--Frostbrood Proto-Wyrm
					  431357,	--Fur-endship Fox
					  65439,	--Furious Gladiator's Frost Wyrm
					  289083,	--G.M.O.D.
					  315132,	--Gargantuan Grrloc
					  354360,	--Garnet Razorwing
					  136505,	--Ghastly Charger
					  312772,	--Gilded Prowler
					  446352,	--Goblin Surfboard
					  414324,	--Gold-Toed Albatross
					  123993,	--Golden Cloud Serpent
					  435044,	--Golden Discus
					  61294,	--Green Proto-Drake
					  39798,	--Green Riding Nether Ray
					  148619,	--Grievous Gladiator's Cloud Serpent
					  163025,	--Grinning Reaver
					  189999,	--Grove Warden
					  336039,	--Gruesome Flayedwing
					  332904,	--Harvester's Dredwing
					  48025,	--Headless Horseman's Mount
					  110051,	--Heart of the Aspects
					  367673,	--Heartbond Lupine
					  142073,	--Hearthsteed
					  427777,	--Heartseeker Mana Ray
					  127169,	--Heavenly Azure Cloud Serpent
					  127161,	--Heavenly Crimson Cloud Serpent
					  127164,	--Heavenly Golden Cloud Serpent
					  127158,	--Heavenly Onyx Cloud Serpent
					  341776,	--Highwind Darkmane
					  290134,	--Hogrus, Swine of Good Fortune
					  303767,	--Honeyback Hivemother
					  471696,	--Hooktalon
					  332882,	--Horrid Dredwing
					  336042,	--Hulking Deathroc
					  72807,	--Icebound Frostbrood Vanquisher
					  408627,	--Igneous Shalewing
					  62048,	--Illidari Doomhawk
					  427549,	--Imagiwing
					  124659,	--Imperial Quilen
					  448845,	--Indigo Underlight Fish
					  344576,	--Infested Necroray
					  201098,	--Infinite Timereaver
					  466017,	--Innovation Investigator
					  72286,	--Invincible
					  153489,	--Iron Skyreaver
					  63956,	--Ironbound Proto-Drake
					  288721,	--Island Thunderscale
					  315014,	--Ivory Cloud Serpent
					  452779,	--Ivory Goliathus
					  113199,	--Jade Cloud Serpent
					  133023,	--Jade Pandaren Kite
					  435147,	--Jade Pterrordax
					  369451,	--Jade, Bright Foreseer
					  428005,	--Jeweled Copper Scarab
					  468068,	--Junkmaestro's Magnetomech
					  267270,	--Kua'fon
					  253107,	--Lambent Mana Ray
					  243795,	--Leaping Veinseeker
					  225765,	--Leyfeather Hippogryph
					  233364,	--Leywoven Flying Carpet
					  359622,	--Liberated Slyvern
					  107845,	--Life-Binder's Handmaiden
					  239013,	--Lightforged Warframe
					  215159,	--Long-Forgotten Hippogryph
					  347250,	--Lord of the Corpseflies
					  472479,	--Love Witch's Sweeper
					  247402,	--Lucid Nightmare
					  472253,	--Lunar Launcher
					  448188,	--Machine Defense Unit 1-11
					  366647,	--Magenta Cloud Serpent
					  315987,	--Mail Muncher
					  432558,	--Majestic Azure Peafowl
					  353883,	--Maldraxxian Corpsefly
					  316337,	--Malevolent Drone
					  139407,	--Malevolent Gladiator's Cloud Serpent
					  466025,	--Margin Manipulator
					  336036,	--Marrowfang
					  359372,	--Mawdapted Raptora
					  466028,	--Mean Green Flying Machine
					  261437,	--Mecha-Mogul Mk2
					  223814,	--Mechanized Lumber Extractor
					  44317,	--Merciless Nether Drake
					  1218014,	--Midnight Butterfly
					  63796,	--Mimiron's Head
					  435082,	--Mogu Hazeblazer
					  408655,	--Morsel Sniffer
					  93623,	--Mottled Drake
					  180545,	--Mystic Runesaber
					  275623,	--Nazjatar Blood Serpent
					  367676,	--Nether-Gorged Greatwyrm
					  435146,	--Night Pterrorwing
					  1214920,	--Nightfall Skyreaver
					  432455,	--Noble Flying Carpet
					  262024,	--Notorious Gladiator's Proto-Drake
					  308814,	--Ny'alotha Allseer
					  408977,	--Obsidian Gladiator's Slitherdrake
					  353866,	--Obsidian Gravewing
					  121820,	--Obsidian Nightwing
					  466013,	--Ocher Delivery Rocket
					  127154,	--Onyx Cloud Serpent
					  41513,	--Onyx Netherwing Drake
					  69395,	--Onyxian Drake
					  376912,	--Otterworldly Ottuk Carrier
					  353873,	--Pale Gravewing
					  1217994,	--Pearlescent Butterfly
					  447413,	--Pearlescent Goblin Wave Shredder
					  466020,	--Personalized Goblin S.C.R.A.Per
					  344575,	--Pestilent Necroray
					  88718,	--Phosphorescent Stone Drake
					  60021,	--Plagued Proto-Drake
					  336045,	--Predatory Plagueroc
					  222240,	--Prestigious Azure Courser
					  281044,	--Prestigious Bloodforged Courser
					  222202,	--Prestigious Bronze Courser
					  222237,	--Prestigious Forest Courser
					  222238,	--Prestigious Ivory Courser
					  222241,	--Prestigious Midnight Courser
					  222236,	--Prestigious Royal Courser
					  148620,	--Prideful Gladiator's Cloud Serpent
					  466144,	--Prized Gladiator's Fel Bat
					  1221155,	--Prototype A.S.M.R.
					  97493,	--Pureblood Fire Hawk
					  280730,	--Pureheart Courser
					  41516,	--Purple Netherwing Drake
					  39801,	--Purple Riding Nether Ray
					  279469,	--Qinsho's Eternal Hound
					  366790,	--Quawks
					  315427,	--Rajani Warserpent
					  332903,	--Rampart Screecher
					  359373,	--Raptora Swooper
					  59570,	--Red Drake
					  130092,	--Red Flying Cloud
					  59961,	--Red Proto-Drake
					  39800,	--Red Riding Nether Ray
					  448850,	--Red Underlight Fish
					  353884,	--Regal Corpsefly
					  67336,	--Relentless Gladiator's Frost Wyrm
					  243025,	--Riddler's Mind-Worm
					  400733,	--Rocket Shredder 9001
					  414986,	--Royal Swarmer
					  1218012,	--Ruby Butterfly
					  424009,	--Runebound Firelord
					  299170,	--Rustbolt Resistor
					  63963,	--Rusted Proto-Drake
					  101821,	--Ruthless Gladiator's Twilight Drake
					  466026,	--Salvaged Goblin Gazillionaire's Flying Machine
					  408654,	--Sandy Shalewing
					  253109,	--Scintillating Mana Ray
					  414334,	--Scourgebound Vanquisher
					  316339,	--Shadowbarb Drone
					  347812,	--Sapphire Skyblazer
					  448939,	--Shackled Shadow
					  448934,	--Shadow of Doubt
					  447190,	--Shadowed Swarmite
					  408649,	--Shadowflame Shalewing
					  254813,	--Sharkbait
					  359379,	--Shimmering Aurelid
					  1217965,	--Shimmermist Free Runner
					  332252,	--Shimmermist Runner
					  451489,	--Siesbarg
					  300149,	--Silent Glider
					  318051,	--Silky Shimmermoth
					  266925,	--Siltwing Albatross
					  39802,	--Silver Riding Nether Ray
					  472487,	--Silvermoon Sweeper
					  312777,	--Silvertip Dredwing
					  334433,	--Silverwind Larion
					  353872,	--Sinfall Gravewing
					  332400,	--Sinful Gladiator's Soul Eater
					  262023,	--Sinister Gladiator's Proto-Drake
					  340068,	--Sintouched Deathwalker
					  134359,	--Sky Golem
					  435084,	--Sky Surfer
					  447057,	--Smoldering Cinderbee
					  231428,	--Smoldering Ember Wyrm
					  347251,	--Soaring Razorwing
					  431359,	--Soaring Sky Fox
					  191633,	--Soaring Skyterror
					  359318,	--Soaring Spelltome
					  171828,	--Solar Spirehawk
					  358319,	--Soultwisted Deathwalker
					  473137,	--Soweezi's Vintage Waveshredder
					  148392,	--Spawn of Galakras
					  196681,	--Spirit of Eche'ro
					  1218013,	--Spring Butterfly
					  254811,	--Squawks
					  308078,	--Squeakers, the Trickster
					  432564,	--Starry Twilight Peafowl
					  454682,	--Startouched Furline
					  326390,	--Steamscale Incinerator
					  466014,	--Steamwheedle Supplier
					  442358,	--Stonevault Mechsuit
					  147595,	--Stormcrow
					  353859,	--Summer Wilderling
					  312765,	--Sundancer
					  451486,	--Sureki Skyrazor
					  312767,	--Swift Gloomhoof
					  37015,	--Swift Nether Drake
					  372995,	--Swift Spectral Drake
					  134573,	--Swift Windsteed
					  374032,	--Tamed Skitterfly
					  359843,	--Tangled Dreamweaver
					  407555,	--Tarecgosa's Visage
					  346554,	--Tazavesh Gearglider
					  381529,	--Telix the Stormhorn
					  385738,	--Temperamental Skyclaw
					  1217760,	--The Big G
					  472752,	--The Breaker's Song
					  261395,	--The Hivemind
					  466016,	--The Topskimmer Special
					  471562,	--Thrayir, Eyes of the Siren
					  466012,	--Thunderdrum Misfire
					  129918,	--Thundering August Cloud Serpent
					  139442,	--Thundering Cobalt Cloud Serpent
					  124408,	--Thundering Jade Cloud Serpent
					  148476,	--Thundering Onyx Cloud Serpent
					  132036,	--Thundering Ruby Cloud Serpent
					  60002,	--Time-Lost Proto-Drake
					  471538,	--Timely Buzzbee
					  370770,	--Tuskarr Shoreglider
					  59571,	--Twilight Drake
					  107844,	--Twilight Harbinger
					  431360,	--Twilight Sky Prowler
					  107203,	--Tyrael's Charger
					  148618,	--Tyrannical Gladiator's Cloud Serpent
					  353036,	--Unchained Gladiator's Soul Eater
					  302143,	--Uncorrupted Voidwing
					  448851,	--Underlight Corrupted Behemoth
					  448849,	--Underlight Shorestalker
					  1214940,	--Ur'zul Fleshripper
					  359013,	--Val'sharah Hippogryph
					  242882,	--Valarjar Stormwing
					  351195,	--Vengeance
					  49193,	--Vengeful Nether Drake
					  466022,	--Venture Co-ordinator
					  425416,	--Verdant Gladiator's Slitherdrake
					  374048,	--Verdant Skitterfly
					  41517,	--Veridian Netherwing Drake
					  342678,	--Vespoid Flutterer
					  342667,	--Vibrant Flutterwing
					  253106,	--Vibrant Mana Ray
					  101282,	--Vicious Gladiator's Twilight Drake
					  227986,	--Vindictive Gladiator's Storm Dragon
					  466021,	--Violet Goblin Shredder
					  41518,	--Violet Netherwing Drake
					  132119,	--Violet Pandaren Phoenix
					  60024,	--Violet Proto-Drake
					  88746,	--Vitreous Stone Drake
					  88331,	--Volcanic Stone Drake
					  354362,	--Wandering Arden Doe
					  163016,	--Warforged Nightmare
					  316275,	--Waste Marauder
					  316276,	--Wastewander Skyterror
					  359317,	--Wen Lo, the River's Edge
					  316340,	--Wicked Swarmer
					  242875,	--Wild Dreamrunner
					  334352,	--Wildseed Cradle
					  98727,	--Winged Guardian
					  353858,	--Winter Wilderling
					  279868,	--Witherbark Direwing
					  397406,	--Wonderous Wavewhisker
					  290328,	--Wonderwing 2.0
					  71810,	--Wrathful Gladiator's Frost Wyrm
					  316343,	--Wriggling Parasite
					  46197,	--X-51 Nether-Rocket
					  46199,	--X-51 Nether-Rocket X-TREME
					  75953,	--X-53 Touring Rocket
					  256123,	--Xiwyllag AT
					  368158}	--Zereth Overseer

ChooseMount.alchemy = {93326}	--Sandstone Drake

ChooseMount.blacksmithing = {213209}	--Steelbound Devourer

ChooseMount.engineering = {126507,	--Depleted-Kyparium Rocket
						   44153,	--Flying Machine
						   126508,	--Geosynchronous World Spinner
						   44151}	--Turbo-Charged Flying Machine

ChooseMount.jewelcrafting = {121837,	--Jade Panther
							 120043,	--Jeweled Onyx Panther
							 121838,	--Ruby Panther
							 121836,	--Sapphire Panther
							 121839}	--Sunstone Panther

ChooseMount.leatherworking = {171844,	--Dustmane Direwolf
							  213339}	--Great Northern Elderhorn

ChooseMount.tailoring = {168850,	--Creeping Carpet
						 60969,		--Flying Carpet
						 75596,		--Frosty Flying Carpet
						 60971}		--Magnificent Flying Carpet

ChooseMount.aquatic = {214791,	--Brinedeep Bottom-Feeder
					   300153,	--Crimson Tidestallion
					   228919,	--Darkwater Skate
					   300150,	--Fabious
					   278803,	--Great Sea Ray
					   300151,	--Inkscale Deepseeker
					   253711,	--Pond Nettle
					   30174,	--Riding Turtle
					   288711,	--Saltwater Seahorse
					   64731,	--Sea Turtle
					   98718,	--Subdued Seahorse
					   278979,	--Surf Jelly
					   75207}	--Vashj'ir Seahorse}

ChooseMount.dragonriding = {417888,		--Algarian Stormrider
							368901,		--Cliffside Wylderdrake
							446052,		--Delver's Dirigible
							466133,		--Delver's Gob-Trotter
							425338,		--Flourishing Whimsydrake
							412088,		--Grotto Netherwing Drake
							360954,		--Highland Drake
							368896,		--Renewed Proto-Drake
							368899,		--Windborne Velocidrake
							368893}		--Winding Slitherdrake

ChooseMount.raceIcons = {["Human"] = "Interface/ICONS/Ability_Mount_AlliancePVPMount",
						 ["Orc"] = "Interface/ICONS/Ability_Mount_HordePVPMount",
						 ["Dwarf"] = "Interface/ICONS/Ability_Mount_MountainRam",
						 ["Scourge"] = "Interface/ICONS/INV_SkeletalWarhorse",
						 ["NightElf"] = "Interface/ICONS/Ability_Mount_WarNightsaber",
						 ["Tauren"] = "Interface/ICONS/Ability_Mount_ViciousWarKodo",
						 ["Gnome"] = "Interface/ICONS/Ability_Mount_ViciousWarMechanostrider",
						 ["Troll"] = "Interface/ICONS/Ability_Mount_ViciousWarRaptor",
						 ["Draenei"] = "Interface/ICONS/Ability_Mount_ViciousWarElekk",
						 ["BloodElf"] = "Interface/ICONS/Ability_Mount_ViciousHawkstrider",
						 ["Worgen"] = "Interface/ICONS/INV_Mount_ViciousHorse",
						 ["Goblin"] = "Interface/ICONS/INV_ViciousGoblinTrike",
						 ["Pandaren"] = "Interface/ICONS/INV_ViciousDragonTurtleMount",
						 ["VoidElf"] = "Interface/ICONS/Ability_Mount_VoidElfStriderMount",
						 ["Nightborne"] = "Interface/ICONS/INV_NightborneRacialMount",
						 ["LightforgedDraenei"] = "Interface/ICONS/INV_LightforgedElekk",
						 ["HighmountainTauren"] = "Interface/ICONS/INV_HMMooseMount",
						 ["DarkIronDwarf"] = "Interface/ICONS/INV_DarkIronDwarfCoreHound",
						 ["MagharOrc"] = "Interface/ICONS/INV_OrcClanWorg",
						 ["KulTiran"] = "Interface/ICONS/INV_HorseKulTiran",
						 ["ZandalariTroll"] = "Interface/ICONS/INV_TriceratopsZandalari",
						 ["Mechagnome"] = "Interface/ICONS/INV_MechagnomeStrider",
						 ["Vulpera"] = "Interface/ICONS/INV_VulperaMount",
						 ["Dracthyr"] = "Interface/ICONS/INV_KirinMount_Blue",
						 ["Earthen"] = "Interface/ICONS/INV_ProtoRamWarthen_Grey"}

ChooseMount.classIcons = {["WARRIOR"] = "Interface/ICONS/INV_WarriorMount",
						  ["PALADIN"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["DAWNFORGE"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["EXARCH"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["LIGHTSWORN"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["DARKFORGE"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["THALASSIAN"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["SUNWALKER"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["PRELATE"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["ORDINANT"] = "Interface/ICONS/INV_PaladinMount_Blue",
						  ["HUNTER"] = "Interface/ICONS/INV_HunterMount",
						  ["ROGUE"] = "Interface/ICONS/INV_RogueMount_Blue",
						  ["PRIEST"] = "Interface/ICONS/INV_PriestMount",
						  ["SHAMAN"] = "Interface/ICONS/INV_ShamanMount",
						  ["MAGE"] = "Interface/ICONS/INV_MageMount",
						  ["WARLOCK"] = "Interface/ICONS/INV_WarlockMount",
						  ["DRUID"] = "Interface/ICONS/INV_MooseMount",
						  ["MONK"] = "Interface/ICONS/INV_MonkMount",
						  ["DEATHKNIGHT"] = "Interface/ICONS/Ability_Mount_DKMount",
						  ["DEMONHUNTER"] = "Interface/ICONS/INV_DHMount"}

ChooseMount.factionGroundIcons = {["Alliance"] = "Interface/ICONS/INV_ViciousGoldenKing",
								  ["Horde"] = "Interface/ICONS/Ability_Mount_ViciousKorkronAnnihilator"}

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

ChooseMount.dragonridingIcon = "5161800"

function ChooseMount:OnInitialize()
	self.frame = CreateFrame("FRAME", nil, UIParent)
	self.move = CreateFrame("FRAME", nil, self.frame, BackdropTemplateMixin and "BackdropTemplate")
	LibKeyBound = LibStub("LibKeyBound-1.0")
	Masque = LibStub("Masque", true)
	if Masque ~= nil then
		group = Masque:Group("Choose Mount", "Buttons")
	end
	if not chooseMountFrameX then
		chooseMountFrameX = 300
	end
	if not chooseMountFrameY then
		chooseMountFrameY = 300
	end
	self:SetupFrame(self.frame)
	self:SetupMoveFrame(self.move)
	local options = {
		name = "Choose Mount",
		handler = ChooseMount,
		type = "group",
		args = {
			movable = {
				name = "Set Movable",
				type = "toggle",
				desc = "makes bar movable",
				set = "SetMove",
				get = "GetMove"
			}
		}
	}
	LibStub("AceConfig-3.0"):RegisterOptionsTable("ChooseMount", options, nil)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("ChooseMount", "Choose Mount")
	LibKeyBound.RegisterCallback(self, "LIBKEYBOUND_ENABLED")
	LibKeyBound.RegisterCallback(self, "LIBKEYBOUND_DISABLED")
end

function ChooseMount:SetMove(info, val)
	if val then
		self.move:Show()
	else
		self.move:Hide()
	end
end

function ChooseMount:GetMove(info)
	return self.move:IsShown()
end

function ChooseMount:LIBKEYBOUND_ENABLED()
	print("Choose Mount Key Binding Enabled")
end

function ChooseMount:LIBKEYBOUND_DISABLED()
	print("Choose Mount Key Binding Disabled")
end

function ChooseMount:HasClassMount(class)
	return true
end

function ChooseMount:HasProfessionMount(profession)
	return profession == "Alchemy" or profession == "Blacksmithing" or profession == "Engineering" or profession == "Jewelcrafting" or profession == "Leatherworking" or profession == "Tailoring"
end

function ChooseMount.frameOnEvent(self, event)
	if event == "PLAYER_LOGIN" then
		_, ChooseMount.race = UnitRace("player")
		_, ChooseMount.class = UnitClass("player")
		if ChooseMount.class == "PALADIN" then
			if ChooseMount.race == "Dwarf" then
				ChooseMount.class = "DAWNFORGE"
			elseif ChooseMount.race == "BloodElf" then
				ChooseMount.class = "THALASSIAN"
			elseif ChooseMount.race == "Draenei" then
				ChooseMount.class = "EXARCH"
			elseif ChooseMount.race == "Tauren" then
				ChooseMount.class = "SUNWALKER"
			elseif ChooseMount.race == "Lightforged Draenei" then
				ChooseMount.class = "LIGHTSWORN"
			elseif ChooseMount.race == "DarkIronDwarf" then
				ChooseMount.class = "DARKFORGE"
			elseif ChooseMount.race == "ZandalariTroll" then
				ChooseMount.class = "PRELATE"
			elseif ChooseMount.race == "EarthenDwarf" then
				ChooseMount.class = "ORDINANT"
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
		if Masque ~= nil then
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
			group:AddButton(ChooseMount.dragonridingButton)
			group:ReSkin()
		end
		self:UnregisterEvent("PLAYER_LOGIN")
	end
end

function ChooseMount.frameOnDragStart(self)
	ChooseMount.frame:StartMoving()
end

function ChooseMount.frameOnDragStop(self)
	ChooseMount.frame:StopMovingOrSizing()
	chooseMountFrameX = self:GetLeft()
	chooseMountFrameY = self:GetBottom()
end

function ChooseMount:SetupFrame(frame)
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(true)
	frame:SetPoint("BOTTOMLEFT", chooseMountFrameX, chooseMountFrameY)
	frame:SetWidth(220)
	frame:SetHeight(88)
	frame:SetFrameStrata("LOW")
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:SetScript("OnEvent", ChooseMount.frameOnEvent)
end

function ChooseMount:SetupMoveFrame(frame)
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetClampedToScreen(true)
	frame:SetPoint("BOTTOMLEFT", 0, 0)
	frame:SetWidth(220)
	frame:SetHeight(88)
	frame:SetFrameStrata("HIGH")
	local backdrop = {
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		tile = false,
		tileSize = 0,
	}
	frame:SetBackdrop(backdrop)
	frame:SetBackdropColor(0, 0.75, 0.25, 0.75)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", ChooseMount.frameOnDragStart)
	frame:SetScript("OnDragStop", ChooseMount.frameOnDragStop)
	frame:Hide()
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
	elseif self == ChooseMount.dragonridingButton then
		mounts = ChooseMount.dragonriding
	end
	ChooseMount:Mount(mounts, table.getn(mounts))
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
	elseif race == "VoidElf" then
		mounts = self.voidElf
	elseif race == "Nightborne" then
		mounts = self.nightborne
	elseif race == "LightforgedDraenei" then
		mounts = self.lightforged
	elseif race == "HighmountainTauren" then
		mounts = self.highmountain
	elseif race == "DarkIronDwarf" then
		mounts = self.darkIron
	elseif race == "MagharOrc" then
		mounts = self.maghar
	elseif race == "KulTiran" then
		mounts = self.kultiran
	elseif race == "ZandalariTroll" then
		mounts = self.zandalari
	elseif race == "Mechagnome" then
		mounts = self.mechagnome
	elseif race == "Vulpera" then
		mounts = self.vulpera
	elseif race == "Dracthyr" then
		mounts = self.dracthyr
	elseif race == "EarthenDwarf" then
		mounts = self.earthen
	end
	return mounts
end

function ChooseMount:SelectClass(class)
	local mounts = {}
	if class == "WARRIOR" then
		mounts = self.warrior
	elseif class == "PALADIN" then
		mounts = self.paladin
	elseif class == "DAWNFORGE" then
		mounts = self.dawnforge
	elseif class == "EXARCH" then
		mounts = self.exarch
	elseif class == "LIGHTSWORN" then
		mounts = self.lightsworn
	elseif class == "DARKFORGE" then
		mounts = self.darkforge
	elseif class == "THALASSIAN" then
		mounts = self.thalassian
	elseif class == "SUNWALKER" then
		mounts = self.sunwalker
	elseif class == "PRELATE" then
		mounts = self.prelate
	elseif class == "ORDINANT" then
		mounts = self.ordinant
	elseif class == "HUNTER" then
		mounts = self.hunter
	elseif class == "ROGUE" then
		mounts = self.rogue
	elseif class == "PRIEST" then
		mounts = self.priest
	elseif class == "SHAMAN" then
		mounts = self.shaman
	elseif class == "MAGE" then
		mounts = self.mage
	elseif class == "WARLOCK" then
		mounts = self.warlock
	elseif class == "DRUID" then
		mounts = self.druid
	elseif class == "MONK" then
		mounts = self.monk
	elseif class == "DEATHKNIGHT" then
		mounts = self.deathKnight
	elseif class == "DEMONHUNTER" then
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
	local rand, spell
	local usable = false
	for i = 1, number do
			spell = C_Spell.GetSpellInfo(mounts[i])
		if C_Spell.IsSpellUsable(spell.name) then
			usable = true
			break
		end
	end
	if usable then
		repeat
			rand = math.random(1, number)
			spell = C_Spell.GetSpellInfo(mounts[rand])
		until C_Spell.IsSpellUsable(spell.name)
		CastSpellByName(spell.name)
	end
end

function ChooseMount:SetupButton(button, x, y, icon)
	button.GetHotkey = function()
		return GetBindingKey(('CLICK %s:LeftButton'):format(self:GetName()))
	end
	button:Show()
	button:SetWidth(44)
	button:SetHeight(44)
	button:SetPoint("BOTTOMLEFT", x, y)
	button:SetFrameStrata("MEDIUM")
	button:SetAttribute("showgrid", 0)
	button:SetAttribute("action", 200)
	button:SetScript("OnClick", self.buttonOnClick)
	button:SetScript("OnEnter", self.buttonOnEnter)
	button:SetBackdrop({bgFile = icon,
					   tile = false,
					   insets = {left = 2,
								 right = 2,
								 top = 2,
								 bottom = 2}})
end

function ChooseMount:SetupButtons(frame)
	self.raceButton = CreateFrame("CHECKBUTTON", "ChooseMountRaceButton", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
	self:SetupButton(self.raceButton, 0, 0, ChooseMount.raceIcons[ChooseMount.race])
	if self:HasClassMount(self.class) then
		self.classButton = CreateFrame("CHECKBUTTON", "ChooseMountClassButton", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
		self:SetupButton(self.classButton, 0, 44, ChooseMount.classIcons[ChooseMount.class])
	end
	self.factionGroundButton = CreateFrame("CHECKBUTTON", "ChooseMountFactionGroundButton", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
	self:SetupButton(self.factionGroundButton, 44, 0, ChooseMount.factionGroundIcons[ChooseMount.faction])
	self.groundButton = CreateFrame("CHECKBUTTON", "ChooseMountGroundButton", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
	self:SetupButton(self.groundButton, 44, 44, ChooseMount.groundIcon)
	self.factionFlyingButton = CreateFrame("CHECKBUTTON", "ChooseMountFactionFlyingButton", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
	self:SetupButton(self.factionFlyingButton, 88, 0, ChooseMount.factionFlyingIcons[ChooseMount.faction])
	self.flyingButton = CreateFrame("CHECKBUTTON", "ChooseMountFlyingButton", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
	self:SetupButton(self.flyingButton, 88, 44, ChooseMount.flyingIcon)
	if self:HasProfessionMount(self.profession1) then
		self.profession1Button = CreateFrame("CHECKBUTTON", "ChooseMountProfession1Button", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
		self:SetupButton(self.profession1Button, 132, 0, ChooseMount.professionIcons[ChooseMount.profession1])
	end
	if self:HasProfessionMount(self.profession2) then
		self.profession2Button = CreateFrame("CHECKBUTTON", "ChooseMountProfession2Button", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
		self:SetupButton(self.profession2Button, 132, 44, ChooseMount.professionIcons[ChooseMount.profession2])
	end
	self.aquaticButton = CreateFrame("CHECKBUTTON", "ChooseMountAquaticButton", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
	self:SetupButton(self.aquaticButton, 176, 0, ChooseMount.aquaticIcon)
	self.dragonridingButton = CreateFrame("CHECKBUTTON", "ChooseMounDragonridingBtutton", frame, BackdropTemplateMixin and "BackdropTemplate, ActionBarButtonTemplate")
	self:SetupButton(self.dragonridingButton, 176, 44, ChooseMount.dragonridingIcon)
end