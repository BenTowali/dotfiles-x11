local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		path_display = { "smart" },
		mappings = {
			i = {
				["<C-k"] = actions.move_selection_previous,
				["<C-j"] = actions.move_selection_next,
			},
		},
	},
})

