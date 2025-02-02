/obj/item/gun/energy/ionrifle
	name = "ion rifle"
	desc = "The NT Mk60 EW Halicon is a man portable anti-armor weapon designed to disable mechanical threats, produced by NT. Not the best of its type."
	icon_state = "ionrifle"
	item_state = "ionrifle"
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 4)
	w_class = ITEM_SIZE_HUGE
	force = 10
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BACK
	one_hand_penalty = 4
	charge_cost = 30
	max_shots = 10
	projectile_type = /obj/item/projectile/ion
	wielded_item_state = "ionrifle-wielded"
	combustion = 0

/obj/item/gun/energy/ionrifle/emp_act(severity)
	..(max(severity, 2)) //so it doesn't EMP itself, I guess

/obj/item/gun/energy/ionrifle/small
	name = "ion pistol"
	desc = "The NT Mk72 EW Preston is a personal defense weapon designed to disable mechanical threats."
	icon_state = "ionpistol"
	item_state = "ionpistol"
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 4)
	w_class = ITEM_SIZE_NORMAL
	force = 5
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	one_hand_penalty = 0
	charge_cost = 20
	max_shots = 6
	projectile_type = /obj/item/projectile/ion/small

/obj/item/gun/energy/mindflayer
	name = "mind flayer"
	desc = "A custom-built weapon of some kind."
	icon_state = "xray"
	origin_tech = list(TECH_COMBAT = 5, TECH_MAGNET = 4)
	projectile_type = /obj/item/projectile/beam/mindflayer


/* Staves */

/obj/item/gun/energy/staff
	name = "staff of change"
	desc = "An artefact that spits bolts of coruscating energy which cause the target's very form to reshape itself."
	icon = 'icons/obj/weapons/melee/energy.dmi'
	item_icons = null
	icon_state = "staffofchange"
	item_state = "staffofchange"
	fire_sound = 'sound/weapons/emitter.ogg'
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	max_shots = 5
	projectile_type = /obj/item/projectile/change
	origin_tech = null
	self_recharge = 1
	charge_meter = 0

/obj/item/gun/energy/staff/special_check(var/mob/user)
	if((user.mind && !wizards.is_antagonist(user.mind)))
		to_chat(usr, "<span class='warning'>You focus your mind on \the [src], but nothing happens!</span>")
		return 0

	return ..()

/obj/item/gun/energy/staff/handle_click_empty(mob/user = null)
	if (user)
		user.visible_message("*fizzle*", "<span class='danger'>*fizzle*</span>")
	else
		src.visible_message("*fizzle*")
	playsound(src.loc, 'sound/effects/sparks1.ogg', 100, 1)

/obj/item/gun/energy/staff/animate
	name = "staff of animation"
	desc = "An artefact that spits bolts of life-force which causes objects which are hit by it to animate and come to life! This magic doesn't affect machines."
	projectile_type = /obj/item/projectile/animate
	max_shots = 10

obj/item/gun/energy/staff/focus
	name = "mental focus"
	desc = "An artefact that channels the will of the user into destructive bolts of force. If you aren't careful with it, you might poke someone's brain out."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "focus"
	item_state = "focus"
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	projectile_type = /obj/item/projectile/forcebolt
	/*
	attack_self(mob/living/user as mob)
		if(projectile_type == /obj/item/projectile/forcebolt)
			charge_cost = 400
			to_chat(user, "<span class='warning'>The [src.name] will now strike a small area.</span>")
			projectile_type = /obj/item/projectile/forcebolt/strong
		else
			charge_cost = 200
			to_chat(user, "<span class='warning'>The [src.name] will now strike only a single person.</span>")
			projectile_type = /obj/item/projectile/forcebolt"
	*/


/obj/item/gun/energy/phosphor
	name = "Phosphor Blast Pistol"
	desc = "A rare and dangerous weapon, used by powerful Magi and Old Skitarii Alphas, this weapon is supposed to deliver the killing blow by burning it's target to death, however, despite it's ability to pass through heavy armor easily, it has a short range."
	icon = 'icons/obj/weapons/gun/energy.dmi'
	icon_state = "teslar"
	item_state = "teslar"
	slot_flags = SLOT_BACK|SLOT_BELT
	force = 8
	str_requirement = 15 //kinda heavy due to it's giant cell.
	max_shots = 5 //not lore accurate, but this is better.
	w_class = ITEM_SIZE_NORMAL
	burst_delay = 2
	move_delay = 1 //its a small as fuck pistol, it may be poisonous but its small.
	fire_delay = 8 
	charge_cost = 300
	cell_type = /obj/item/cell/plasma
	ammoType = /obj/item/cell/plasma
	projectile_type = 	/obj/item/projectile/energy/phosphor
	self_recharge = 1


/obj/item/gun/energy/gauss
	name = "Gauss Rifle"
	desc = "A deadly weapon wielded by Necron Warriors"
	icon_state = "ns"
	item_state = "ns"
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 4)
	w_class = ITEM_SIZE_NORMAL
	force = 5
	slot_flags = SLOT_BELT|SLOT_BACK
	one_hand_penalty = 0
	charge_cost = 20
	max_shots = 6
	projectile_type = /obj/item/projectile/gauss
	self_recharge = 1
	charge_meter = FALSE
	
/obj/item/gun/energy/WarpLens
	name = "Warp Lens"
	desc = "A lens used to direct bolts of warp energy"
	icon_state = "warplens"
	item_state = "focus"
	fire_sound = 'sound/weapons/emitter.ogg'
	w_class = ITEM_SIZE_TINY
	force = 1
	one_hand_penalty = 0 //its tiny you can hold it in one hand
	projectile_type = /obj/item/projectile/warpboltcrappy
	max_shots = 15
	self_recharge = 1
