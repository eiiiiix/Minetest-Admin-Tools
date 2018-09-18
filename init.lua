--Godly Pickaxe infos
minetest.register_tool("admincrap:pick_god", {
	description = "Godly Pickaxe",
	inventory_image = "godpick.png",
	tool_capabilities = {
		full_punch_interval = 0.1,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
			crumbly = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
			snappy = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
			choppy = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
			explody = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
			oddly_breakable_by_hand = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
			fleshy = {times={[1]=0.01, [2]=0.01, [3]=0.01}, uses=100000, maxlevel=3},
		},
		damage_groups = {fleshy=200},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {flammable = 1000},
})

--Border Marker
minetest.register_node("admincrap:marker", {
    description = "Border Marker",
    light_source = 15,
    tiles = {"marker.png"},
    groups = {cracky=1},
    on_use = minetest.item_eat(-20) --lul idfk
})


minetest.register_node("admincrap:fake", {
	description = "Godly Pickaxe",
	inventory_image = "godpick.png",
	tool_capabilities = {
		full_punch_interval = 10.0
		},
	on_use = minetest.chat_send_player("player1", "This is a chat message for player1")
})

--instanty kill on spawn, for when banning is boring
minetest.register_chatcommand("softban", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            gravity = 10000.00
        })
    end
})

--no jumping allowed
minetest.register_chatcommand("nojump", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            gravity = 10.0
        })
    end
})

--allow jumping again
minetest.register_chatcommand("yesjump", {
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        player:set_physics_override({
            gravity = 1.0
        })
    end
})