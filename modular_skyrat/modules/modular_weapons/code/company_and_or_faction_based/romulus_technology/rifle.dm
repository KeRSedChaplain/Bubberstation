//Sprite for these guns are modified from the carwil/carwo rifle, they're a pallet swap with very small modification
//Main Rifle
/obj/item/gun/ballistic/automatic/rom_carbine
	name = "\improper RomTech Carbine"
	desc = "An unusual variation of the Carwo-Carwil Battle rifle fielded as service rifle in Romulus Federation, preferred by some law enforcement agency for the compact nature. Accepts any standard .40 TerraGov rifle magazine."

	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/romulus_technology/gun48x32.dmi'
	icon_state = "carbine"

	worn_icon = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/romulus_technology/guns_worn.dmi'
	worn_icon_state = "carbine"

	lefthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/romulus_technology/guns_lefthand.dmi'
	righthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/romulus_technology/guns_righthand.dmi'
	inhand_icon_state = "carbine"

	bolt_type = BOLT_TYPE_LOCKING

	special_mags = TRUE

	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE | ITEM_SLOT_BELT

	burst_size = 1
	fire_delay = 3

	spread = 7
	projectile_wound_bonus = -20
	projectile_damage_multiplier = 0.75

	accepted_magazine_type = /obj/item/ammo_box/magazine/c40sol_rifle
	spawn_magazine_type = /obj/item/ammo_box/magazine/c40sol_rifle/standard

	actions_types = list()

/obj/item/gun/ballistic/automatic/rom_carbine/Initialize(mapload)
	. = ..()
	give_autofire()

/obj/item/gun/ballistic/automatic/rom_carbine/proc/give_autofire()
	AddComponent(/datum/component/automatic_fire, fire_delay)

/obj/item/gun/ballistic/automatic/rom_carbine/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_ROMTECH)

/obj/item/gun/ballistic/automatic/rom_carbine/examine(mob/user)
	. = ..()
	. += span_notice("You can <b>examine closer</b> to learn a little more about this weapon.")

/obj/item/gun/ballistic/automatic/rom_carbine/examine_more(mob/user)
	. = ..()

	. += "This Design was made by Romulus Technology for \
		usage during the start of the NRI-Sol Border war. \
		Following the embargo and trade restriction \
		making it impossible for Romulus Federation to source weapory, \
		with this design being rapidly pushed out, being made from converted rifle making it easier to acquire, \
		this rifle seems rather unassuming but it has been, itself, the new symbol of peace  \
		Leaving NRI weapon in the past, as it now became the symbol of the oppressive era of Romulus\
		To whom it may concerns, These weapon were mostly used by the new Romulus National Army, \
		it was a symbol of struggle and freedom \
		Weapons cannot bring people back, but it can save your life."

	return .

/obj/item/gun/ballistic/automatic/rom_carbine/no_mag
	spawnwithmagazine = FALSE

//Bolt Action Rifle
/obj/item/gun/ballistic/rifle/carwil
	name = "\improper RomTech Ceremonial Rifle"
	desc = "A boltaction ceremonial rifle, chambered in Sol .40 Rifle While technically outdated in modern arms markets, it still used by recreational hunter \
		as rifle of this kind are much more controllable. Famously used by the royal guard of Romulus Federation."
	icon = 'modular_skyrat/modules/modular_weapons/icons/obj/company_and_or_faction_based/romulus_technology/gun48x32.dmi'
	icon_state = "elite"

	worn_icon = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/romulus_technology/guns_worn.dmi'
	worn_icon_state = "carbine"

	lefthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/romulus_technology/guns_lefthand.dmi'
	righthand_file = 'modular_skyrat/modules/modular_weapons/icons/mob/company_and_or_faction_based/romulus_technology/guns_righthand.dmi'
	inhand_icon_state = "carbine"
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	weapon_weight = WEAPON_HEAVY
	fire_sound = 'modular_skyrat/modules/modular_weapons/sounds/rifle_heavy.ogg'
	suppressed_sound = 'modular_skyrat/modules/modular_weapons/sounds/suppressed_rifle.ogg'
	fire_sound_volume = 90
	load_sound = 'sound/items/weapons/gun/sniper/mag_insert.ogg'
	rack_sound = 'sound/items/weapons/gun/sniper/rack.ogg'
	recoil = 2
	accepted_magazine_type = /obj/item/ammo_box/magazine/c40sol_rifle
	spawn_magazine_type = /obj/item/ammo_box/magazine/c40sol_rifle
	internal_magazine = FALSE
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	mag_display = TRUE
	tac_reloads = TRUE
	rack_delay = 1.5 SECONDS
	can_suppress = TRUE
	can_unsuppress = TRUE
	special_mags = TRUE

/obj/item/gun/ballistic/rifle/carwil/give_manufacturer_examine()
	AddElement(/datum/element/manufacturer_examine, COMPANY_ROMTECH)

/obj/item/gun/ballistic/rifle/carwil/empty
	spawnwithmagazine = FALSE

/obj/item/storage/toolbox/guncase/skyrat/ceremonial_rifle
	name = "Sporting Rifle Case"
	weapon_to_spawn = /obj/item/gun/ballistic/rifle/carwil/empty
	extra_to_spawn = /obj/item/ammo_box/magazine/c40sol_rifle/starts_empty

/obj/item/storage/toolbox/guncase/skyrat/ceremonial_rifle/PopulateContents()
	new weapon_to_spawn (src)

	generate_items_inside(list(
		/obj/item/ammo_box/c40sol/fragmentation = 1,
		/obj/item/ammo_box/c40sol = 1,
	), src)
