var/global/list/gear_datums = list()

proc/populate_gear_list()
	for(var/type in typesof(/datum/gear)-/datum/gear)
		var/datum/gear/G = new type()
		gear_datums[G.display_name] = G

/datum/gear
	var/display_name       //Name/index.
	var/path               //Path to item.
	var/cost               //Number of points used.
	var/slot               //Slot to equip to.
	var/list/allowed_roles //Roles that can spawn with this item.
	var/whitelisted        //Term to check the whitelist for..

//Standard gear datums.
/datum/gear/dice
	display_name = "d20"
	path = /obj/item/weapon/dice/d20
	cost = 1

/datum/gear/watch
	display_name = "watch"
	path = /obj/item/clothing/gloves/watch
	cost = 1

/datum/gear/wallet
	display_name = "wallet"
	path = /obj/item/weapon/storage/wallet
	cost = 2

/datum/gear/comb
	display_name = "purple comb"
	path = /obj/item/weapon/fluff/cado_keppel_1
	cost = 1

/datum/gear/cane
	display_name = "cane"
	path = /obj/item/weapon/cane
	cost = 2

/datum/gear/briefcase
	display_name = "briefcase"
	path = /obj/item/weapon/storage/briefcase
	cost = 2

/datum/gear/securebriefcase
	display_name = "secure briefcase"
	path = /obj/item/weapon/storage/secure/briefcase
	cost = 3

/datum/gear/zippolighter
	display_name = "zippo lighter"
	path = /obj/item/weapon/lighter/zippo
	cost = 1

/datum/gear/recorder
	display_name = "universal recorder"
	path = /obj/item/device/taperecorder
	cost = 2

/datum/gear/camera
	display_name = "camera"
	path = /obj/item/device/camera
	cost = 1

/datum/gear/clipboard
	display_name = "clipboard"
	path = /obj/item/weapon/clipboard
	cost = 1

/datum/gear/redpen
	display_name = "red pen"
	path = /obj/item/weapon/pen/red
	cost = 1

/datum/gear/bluepen
	display_name = "blue pen"
	path = /obj/item/weapon/pen/blue
	cost = 1

/datum/gear/flask
	display_name = "flask"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/barflask
	cost = 2

/datum/gear/cards
	display_name = "deck of cards"
	path = /obj/item/weapon/deck
	cost = 1

/datum/gear/tie_horrible
	display_name = "horrible tie"
	path = /obj/item/clothing/tie/horrible
	cost = 2

/datum/gear/tie_blue
	display_name = "blue tie"
	path = /obj/item/clothing/tie/blue
	cost = 2

/datum/gear/tie_red
	display_name = "red tie"
	path = /obj/item/clothing/tie/red
	cost = 2

/datum/gear/hairflower
	display_name = "hair flower pin"
	path = /obj/item/clothing/head/hairflower
	cost = 2
//	slot = slot_head

/datum/gear/bandana
	display_name = "pirate bandana"
	path = /obj/item/clothing/head/bandana
	cost = 3
//	slot = slot_head

/datum/gear/overalls
	display_name = "overalls"
	path = /obj/item/clothing/suit/apron/overalls
	cost = 2
//	slot = slot_wear_suit

/datum/gear/wcoat
	display_name = "waistcoat"
	path = /obj/item/clothing/suit/wcoat
	cost = 2
//	slot = slot_wear_suit

/datum/gear/prescription
	display_name = "prescription sunglasses"
	path = /obj/item/clothing/glasses/sunglasses/prescription
	cost = 3
//	slot = slot_glasses

/datum/gear/eyepatch
	display_name = "eyepatch"
	path = /obj/item/clothing/glasses/eyepatch
	cost = 3
//	slot = slot_glasses

/datum/gear/flatcap
	display_name = "flat cap"
	path = /obj/item/clothing/head/flatcap
	cost = 2
//	slot = slot_head

/datum/gear/redsoftcap
	display_name = "red softcap"
	path = /obj/item/clothing/head/soft/red
	cost = 2
//	slot = slot_head

/datum/gear/bluesoftcap
	display_name = "blue softcap"
	path = /obj/item/clothing/head/soft/blue
	cost = 2
//	slot = slot_head

/datum/gear/greensoftcap
	display_name = "green softcap"
	path = /obj/item/clothing/head/soft/green
	cost = 2
//	slot = slot_head

/datum/gear/greysoftcap
	display_name = "grey softcap"
	path = /obj/item/clothing/head/soft/grey
	cost = 2
//	slot = slot_head

/datum/gear/purplesoftcap
	display_name = "purple softcap"
	path = /obj/item/clothing/head/soft/purple
	cost = 2
//	slot = slot_head

/datum/gear/labcoat
	display_name = "labcoat"
	path = /obj/item/clothing/suit/storage/labcoat
	cost = 2
//	slot = slot_wear_suit

/datum/gear/bluescrubs
	display_name = "blue scrubs"
	path = /obj/item/clothing/under/rank/medical/blue
	cost = 3

/datum/gear/purplescrubs
	display_name = "purple scrubs"
	path = /obj/item/clothing/under/rank/medical/purple
	cost = 3

/datum/gear/greenscrubs
	display_name = "green scrubs"
	path = /obj/item/clothing/under/rank/medical/green
	cost = 3

/datum/gear/surgeryapron
	display_name = "surgical apron"
	path = /obj/item/clothing/suit/apron/surgery
	cost = 2


/datum/gear/sandal
	display_name = "sandals"
	path = /obj/item/clothing/shoes/sandal
	cost = 1
//	slot = slot_shoes

/datum/gear/work_boots
	display_name = "work boots"
	path = /obj/item/clothing/shoes/work_boots
	cost = 2

/datum/gear/leather
	display_name = "leather shoes"
	path = /obj/item/clothing/shoes/leather
	cost = 2
//	slot = slot_shoes

/datum/gear/dress_shoes
	display_name = "dress shoes"
	path = /obj/item/clothing/shoes/centcom
	cost = 2
//	slot = slot_shoes

/datum/gear/black_gloves
	display_name = "black gloves"
	path = /obj/item/clothing/gloves/black
	cost = 1
//	slot = slot_gloves

/datum/gear/black_gloves_unathi
	display_name = "black gloves, unathi"
	path = /obj/item/clothing/gloves/black/unathi
	cost = 1

/datum/gear/black_gloves_tajara
	display_name = "black gloves, tajaran"
	path = /obj/item/clothing/gloves/black/tajara
	cost = 1

/datum/gear/red_gloves
	display_name = "red gloves"
	path = /obj/item/clothing/gloves/red
	cost = 1
//	slot = slot_gloves

/datum/gear/red_gloves_unathi
	display_name = "red gloves, unathi"
	path = /obj/item/clothing/gloves/red/unathi
	cost = 1

/datum/gear/red_gloves_tajaran
	display_name = "red gloves, tajaran"
	path = /obj/item/clothing/gloves/red/tajara
	cost = 1

/datum/gear/blue_gloves
	display_name = "blue gloves"
	path = /obj/item/clothing/gloves/blue
	cost = 1
//	slot = slot_gloves

/datum/gear/blue_gloves_unathi
	display_name = "blue gloves, unathi"
	path = /obj/item/clothing/gloves/blue/unathi
	cost = 1

/datum/gear/blue_gloves_tajaran
	display_name = "blue gloves, tajaran"
	path = /obj/item/clothing/gloves/blue/tajara
	cost = 1

/datum/gear/orange_gloves
	display_name = "orange gloves"
	path = /obj/item/clothing/gloves/orange
	cost = 1
	//	slot = slot_gloves

/datum/gear/orange_gloves_unathi
	display_name = "orange gloves, unathi"
	path = /obj/item/clothing/gloves/orange/unathi
	cost = 1

/datum/gear/orange_gloves_tajaran
	display_name = "orange gloves, tajaran"
	path = /obj/item/clothing/gloves/orange/tajara
	cost = 1

/datum/gear/purple_gloves
	display_name = "purple gloves"
	path = /obj/item/clothing/gloves/purple
	cost = 1
//	slot = slot_gloves

/datum/gear/purple_gloves_unathi
	display_name = "purple gloves, unathi"
	path = /obj/item/clothing/gloves/purple/unathi
	cost = 1

/datum/gear/purple_gloves_tajaran
	display_name = "purple gloves, tajaran"
	path = /obj/item/clothing/gloves/purple/tajara
	cost = 1

/datum/gear/brown_gloves
	display_name = "brown gloves"
	path = /obj/item/clothing/gloves/brown
	cost = 1
//	slot = slot_gloves

/datum/gear/brown_gloves_unathi
	display_name = "brown gloves, unathi"
	path = /obj/item/clothing/gloves/brown/unathi
	cost = 1

/datum/gear/brown_gloves_tajaran
	display_name = "brown gloves, tajaran"
	path = /obj/item/clothing/gloves/brown/tajara
	cost = 1

/datum/gear/green_gloves
	display_name = "green gloves"
	path = /obj/item/clothing/gloves/green
	cost = 1
//	slot = slot_gloves

/datum/gear/green_gloves_unathi
	display_name = "green gloves, unathi"
	path = /obj/item/clothing/gloves/green/unathi
	cost = 1

/datum/gear/green_gloves_tajaran
	display_name = "green gloves, tajaran"
	path = /obj/item/clothing/gloves/green/tajara
	cost = 1

/datum/gear/white_gloves
	display_name = "white gloves"
	path = /obj/item/clothing/gloves/white
	cost = 1
//	slot = slot_gloves

/datum/gear/white_gloves_unathi
	display_name = "white gloves, unathi"
	path = /obj/item/clothing/gloves/white/unathi
	cost = 1

/datum/gear/white_gloves_tajaran
	display_name = "white gloves, tajaran"
	path = /obj/item/clothing/gloves/white/tajara
	cost = 1

/datum/gear/black_shoes
	display_name = "black shoes"
	path = /obj/item/clothing/shoes/black
	cost = 2
//	slot = slot_shoes

/datum/gear/blue_shoes
	display_name = "blue shoes"
	path = /obj/item/clothing/shoes/blue
	cost = 2
//	slot = slot_shoes

/datum/gear/brown_shoes
	display_name = "brown shoes"
	path = /obj/item/clothing/shoes/brown
	cost = 2
//	slot = slot_shoes

/datum/gear/green_shoes
	display_name = "green shoes"
	path = /obj/item/clothing/shoes/green
	cost = 2
//	slot = slot_shoes

/datum/gear/orange_shoes
	display_name = "orange shoes"
	path = /obj/item/clothing/shoes/orange
	cost = 2
//	slot = slot_shoes

/datum/gear/purple_shoes
	display_name = "purple shoes"
	path = /obj/item/clothing/shoes/purple
	cost = 2
//	slot = slot_shoes

/datum/gear/red_shoes
	display_name = "red shoes"
	path = /obj/item/clothing/shoes/red
	cost = 2
//	slot = slot_shoes

/datum/gear/white_shoes
	display_name = "white shoes"
	path = /obj/item/clothing/shoes/white
	cost = 2
//	slot = slot_shoes

/datum/gear/yellow_shoes
	display_name = "yellow shoes"
	path = /obj/item/clothing/shoes/yellow
	cost = 2
//	slot = slot_shoes

/datum/gear/jackboots
	display_name = "jackboots"
	path = /obj/item/clothing/shoes/jackboots
	cost = 2
//	slot = slot_shoes

/datum/gear/webbing
	display_name = "webbing"
	path = /obj/item/clothing/tie/storage/webbing
	cost = 1

/datum/gear/armband
	display_name = "red armband"
	path = /obj/item/clothing/tie/armband
	cost = 1

/datum/gear/armband_cargo
	display_name = "cargo armband"
	path = /obj/item/clothing/tie/armband/cargo
	cost = 1

/datum/gear/armband_engineering
	display_name = "engineering armband"
	path = /obj/item/clothing/tie/armband/engine
	cost = 1

/datum/gear/armband_science
	display_name = "science armband"
	path = /obj/item/clothing/tie/armband/science
	cost = 1

/datum/gear/armband_hydroponics
	display_name = "hydroponics armband"
	path = /obj/item/clothing/tie/armband/hydro
	cost = 1

/datum/gear/armband_medical
	display_name = "medical armband"
	path = /obj/item/clothing/tie/armband/med
	cost = 1

/datum/gear/armband_paramedic
	display_name = "Paramedic armband"
	path = /obj/item/clothing/tie/armband/medgreen
	cost = 1

/datum/gear/armband_iac
	display_name = "IAC armband"
	path = /obj/item/clothing/tie/armband/iac_armband
	cost = 1

/datum/gear/skirt_blue
	display_name = "blue plaid skirt"
	path = /obj/item/clothing/under/dress/plaid_blue
//	slot = slot_w_uniform
	cost = 3

/datum/gear/skirt_red
	display_name = "red plaid skirt"
	path = /obj/item/clothing/under/dress/plaid_red
//	slot = slot_w_uniform
	cost = 3

/datum/gear/skirt_purple
	display_name = "purple plaid skirt"
	path = /obj/item/clothing/under/dress/plaid_purple
//	slot = slot_w_uniform
	cost = 3

/datum/gear/skirt_green
	display_name = "green plaid skirt"
	path = /obj/item/clothing/under/dress/plaid_green
//	slot = slot_w_uniform
	cost = 3

/datum/gear/skirt_black
	display_name = "black skirt"
	path = /obj/item/clothing/under/blackskirt
//	slot = slot_w_uniform
	cost = 3

/datum/gear/sundress
	display_name = "sundress"
	path = /obj/item/clothing/under/sundress
//	slot = slot_w_uniform
	cost = 3

/datum/gear/uniform_captain
	display_name = "captain dress uniform"
	path = /obj/item/clothing/under/dress/dress_cap
//	slot = slot_w_uniform
	cost = 3
	allowed_roles = list("Captain")

/datum/gear/uniform_hop
	display_name = "HoP dress uniform"
	path = /obj/item/clothing/under/dress/dress_hop
//	slot = slot_w_uniform
	cost = 3
	allowed_roles = list("Head of Personnel")

/datum/gear/uniform_hr
	display_name = "HR director uniform"
	path = /obj/item/clothing/under/dress/dress_hr
//	slot = slot_w_uniform
	cost = 3
	allowed_roles = list("Head of Personnel")

/datum/gear/kilt
	display_name = "kilt"
	path = /obj/item/clothing/under/kilt
//	slot = slot_w_uniform
	cost = 3

/datum/gear/exec_suit
	display_name = "executive suit"
	path = /obj/item/clothing/under/suit_jacket/really_black
//	slot = slot_w_uniform
	cost = 3

/datum/gear/oldmansuit
	display_name = "old man suit"
	path = /obj/item/clothing/under/lawyer/oldman
	cost = 3

//Security
/datum/gear/security
	display_name = "Security HUD"
	path = /obj/item/clothing/glasses/hud/security
	cost = 3
//	slot = slot_glasses
	allowed_roles = list("Security Officer","Head of Security","Warden")

/datum/gear/black_vest
	display_name = "black webbing vest"
	path = /obj/item/clothing/tie/storage/black_vest
	cost = 3
	allowed_roles = list("Security Officer","Head of Security","Warden")

/datum/gear/armpit
	display_name = "shoulder holster"
	path = /obj/item/clothing/tie/holster/armpit
	cost = 3
	allowed_roles = list("Captain", "Head of Personnel", "Security Officer", "Head of Security", "Warden")

/datum/gear/waist
	display_name = "waist holster"
	path = /obj/item/clothing/tie/holster/waist
	cost = 3
	allowed_roles = list("Captain", "Head of Personnel", "Security Officer", "Head of Security", "Warden")


/datum/gear/normal_beret
	display_name = "beret"
	path = /obj/item/clothing/head/beret
	cost = 3

/datum/gear/sec_beret
	display_name = "security beret"
	path = /obj/item/clothing/head/beret/sec
	cost = 1
//	slot = slot_head
	allowed_roles = list("Security Officer","Head of Security","Warden")

/*
// Disabled until there is an alt-uniform for each department
// Uniforms cost 3 points.

/datum/gear/formal_uni
	display_name = "formal officer's uniform"
	path = /obj/item/clothing/under/rank/security/formal
	cost = 3
	allowed_roles = list("Security Officer")

/datum/gear/formal_cap
	display_name = "officer's formal cap"
	path = /obj/item/clothing/head/helmet/secfcap
	cost = 2
	allowed_roles = list("Security Officer","Head of Security","Warden")

/datum/gear/formal_uniw
	display_name = "formal warden's uniform"
	path = /obj/item/clothing/under/rank/warden/formal
	cost = 3
	allowed_roles = list("Warden")

/datum/gear/formal_jacketw
	display_name = "formal warden's jacket"
	path = /obj/item/clothing/suit/armor/vest/warden/jacket
	cost = 2
	allowed_roles = list("Warden")

/datum/gear/formal_unihos
	display_name = "formal Head of Security's uniform"
	path = /obj/item/clothing/under/rank/head_of_security/formal
	cost = 3
	allowed_roles = list("Head of Security")

/datum/gear/formal_jackethos
	display_name = "formal Head of Security's jacket"
	path = /obj/item/clothing/suit/armor/hos/formal
	cost = 2
	allowed_roles = list("Head of Security")
*/

//Engineering
/datum/gear/eng_beret
	display_name = "engineering beret"
	path = /obj/item/clothing/head/beret/eng
	cost = 1
//	slot = slot_head
	allowed_roles = list("Ship Engineer","Atmospheric Technician","Chief Engineer")

/datum/gear/brown_vest
	display_name = "brown webbing vest"
	path = /obj/item/clothing/tie/storage/brown_vest
	cost = 3
	allowed_roles = list("Ship Engineer","Atmospheric Technician","Chief Engineer")

/datum/gear/engineer_bandana
	display_name = "engineering bandana"
	path = /obj/item/clothing/head/helmet/greenbandana/fluff/taryn_kifer_1
	cost = 2
//	slot = slot_head
	allowed_roles = list("Ship Engineer","Atmospheric Technician","Chief Engineer")

//Science
/datum/gear/scanning_goggles
	display_name = "scanning goggles"
	path = /obj/item/clothing/glasses/fluff/uzenwa_sissra_1
	cost = 2
	allowed_roles = list("Roboticist", "Scientist", "Research Director")

//Species-specific gear datums.

//Taken out until fixes are done
/*
/datum/gear/zhan_furs
	display_name = "Zhan-Khazan furs"
	path = /obj/item/clothing/suit/tajaran/furs
	cost = 3
//	slot = slot_wear_suit
	whitelisted = "Tajaran"

/datum/gear/zhan_scarf
	display_name = "Zhan-Khazan headscarf"
	path = /obj/item/clothing/head/tajaran/scarf
	cost = 2
//	slot = slot_head
	whitelisted = "Tajaran"
*/

/datum/gear/unathi_robe
	display_name = "roughspun robe"
	path = /obj/item/clothing/suit/unathi/robe
	cost = 3
//	slot = slot_wear_suit
	whitelisted = "Unathi"

/datum/gear/unathi_mantle
	display_name = "hide mantle"
	path = /obj/item/clothing/suit/unathi/mantle
	cost = 2
//	slot = slot_wear_suit
	whitelisted = "Unathi"

/datum/gear/cigar_case
	display_name = "cigar case"
	path = /obj/item/weapon/storage/fancy/cigars
	cost = 2

/datum/gear/smoking_pipe
	display_name = "smoking pipe"
	path = /obj/item/clothing/mask/cigarette/pipe
	cost = 2

/datum/gear/cigarettes
	display_name = "pack of DromedaryCo cigarettes"
	path = /obj/item/weapon/storage/fancy/cigarettes/dromedaryco
	cost = 2

/datum/gear/red_lipstick
	display_name = "lipstick, red"
	path = /obj/item/weapon/lipstick
	cost = 1

/datum/gear/purple_lipstick
	display_name = "lipstick, purple"
	path = /obj/item/weapon/lipstick/purple
	cost = 1

/datum/gear/jade_lipstick
	display_name = "lipstick, jade"
	path = /obj/item/weapon/lipstick/jade
	cost = 1

/datum/gear/black_lipstick
	display_name = "lipstick, black"
	path = /obj/item/weapon/lipstick/black
	cost = 1

/datum/gear/cigarettes
	display_name = "pack of cigarettes"
	path = /obj/item/weapon/storage/fancy/cigarettes
	cost = 1

datum/gear/lighterg
	display_name = "lighter, green"
	path = /obj/item/weapon/lighter/green
	cost = 1

/datum/gear/lighterr
	display_name = "lighter, red"
	path = /obj/item/weapon/lighter/red
	cost = 1

/datum/gear/lightery
	display_name = "lighter, yellow"
	path = /obj/item/weapon/lighter/yellow
	cost = 1

/datum/gear/lighterc
	display_name = "lighter, cyan"
	path = /obj/item/weapon/lighter/cyan
	cost = 1

datum/gear/matches
	display_name = "matchbook"
	path = /obj/item/weapon/storage/box/matches
	cost = 1


