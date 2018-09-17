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